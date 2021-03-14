class ConsultaPdf < Prawn::Document
  def initialize(consultum)
    super(top_margin: 50)
    @consultum = consultum
    header
    line_items
  end

  def header
    text "Consulta \##{@consultum.id}", size: 30, style: :bold, align: :center
  end

  def line_items
    move_down 20
    table line_items_row, position: :center, column_widths: 100, :cell_style => { :align => :center,
                                                                                  :border_width => 0}

    move_down 100
    indent(60, 15) do # left and right padding
    text "Sintomas: " + @consultum.sintomas
    end

    move_down 100
    indent(60, 15) do # left and right padding
    text "Prescrição: " + @consultum.prescricao
    end

    move_down 150
    text "________________________________________________", align: :center

    move_down 10
    text "Dr. " << @consultum.veterinario.nome, align: :center, size: 10

    move_down 50
    indent(60, 15) do # left and right padding
      text "Obs:"
    end
  end

  def line_items_row
    [
     ["Pet", @consultum.animal.nome],
     ["Data", @consultum.data.strftime("%d/%m/%Y")],
     ["Hora", @consultum.data.strftime("%H:%M")],
    ]
  end
end
