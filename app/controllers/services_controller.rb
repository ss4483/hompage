class ServicesController < ApplicationController
  def qna
    @qnas = Qna.all
  end
  def qna_write_view

  end
  def qna_write
    one_qna = Qna.new
    one_qna.name= params[:name]
    one_qna.salt=  SecureRandom.base64(8)
    one_qna.hashed_pass= Digest::SHA2.hexdigest(one_qna.salt + params[:pass])
    one_qna.title= params[:title]
    one_qna.content= params[:content]

    one_qna.save
    flash[:notice]="글이 작성 되었습니다."
    redirect_to '/services/qna'
  end
  def one_qna
    @one_qna = Qna.find(params[:qna_id])
  end

  def qna_delete_pass
    @one_qna = Qna.find(params[:qna_id])
  end
  def qna_delete
    one_qna = Qna.find(params[:qna_id])
    if one_qna.hashed_pass == Digest::SHA2.hexdigest(one_qna.salt + params[:pass])
      one_qna.destroy
      flash[:notice]="글이 삭제 되었습니다."
    else
      flash[:notice]="비밀번호가 틀렸습니다."
    end
    redirect_to '/services/qna'

  end

  def qna_update_pass
    @one_qna = Qna.find(params[:qna_id])
  end
  def qna_update_view
    @one_qna = Qna.find(params[:qna_id])
    if @one_qna.hashed_pass == Digest::SHA2.hexdigest(@one_qna.salt + params[:pass])

    else
      flash[:notice]="비밀번호가 틀렸습니다."
      redirect_to '/services/qna'
    end

  end
  def qna_update
    one_qna = Qna.find(params[:qna_id])
    one_qna.title = params[:title]
    one_qna.content = params[:content]

    one_qna.save
    flash[:notice]="수정 되었습니다."
    redirect_to "/services/one_qna/#{one_qna.id}"
  end




  def q_answer
    @answer = QnaAnswer.new
    @answer.qna_id= params[:qna_id]
    @answer.name= params[:name]
    @answer.content= params[:content]

    @answer.salt = SecureRandom.base64(8)
    @answer.hashed_pass = Digest::SHA2.hexdigest(@answer.salt + params[:pass])

    @answer.save

    redirect_to :back
  end
  def q_answer_delete
    answer = QnaAnswer.find(params[:a_id])
    if answer.hashed_pass == Digest::SHA2.hexdigest(answer.salt + params[:pass]) || one_qna.hashed_pass == Digest::SHA2.hexdigest(one_qna.salt + '1157')
      answer.destroy
      flash[:notice]="답변이 삭제 되었습니다."
    else
      flash[:notice]="비밀번호가 틀렸습니다."
    end
    redirect_to "/services/one_qna/#{one_qna.id}"
  end
end
