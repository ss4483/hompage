class ServicesController < ApplicationController
  def qna
    @qnas = Qna.all
  end
  def qna_write_view

  end
  def qna_write
    one_qna = Qna.new(name: params[:name],
                        pass: params[:pass],
                        title: params[:title],
                        content: params[:content]
                        )
    one_qna.save

    redirect_to '/services/qna'
  end
  def one_qna
    @one_qna = Qna.find(params[:qna_id])
  end

  def qna_delete

  end
  def qna_update_view
    @one_qna = Qna.find(params[:qna_id])
  end
  def qna_update
    one_qna = Qna.new(name: params[:name],
                        pass: params[:pass],
                        title: params[:title],
                        content: params[:content]
                        )
    one_qna.save

    redirect_to '/services/qna'
  end
end
