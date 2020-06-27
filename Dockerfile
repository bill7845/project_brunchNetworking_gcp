FROM python:3.7

WORKDIR /app

COPY requirements.txt /requirements.txt # 설치 필요한 라이브러리
COPY tfidf_train_matrix.pkl ./tfidf_train_matrix.pkl 
COPY tfidf_train_vect.pkl ./tfidf_train_vect.pkl
COPY Testing Video.mp4 ./Testing Video.mp4
COPY brunch_network.db ./brunch_network.db

COPY classifier_lg.pkl ./model/classifier_lg.pkl # model

COPY all_df.csv ./pkl_objects/csv/all_df.csv # 사용되는 데이터셋

COPY 0tfidf_matrix.pkl ./pkl_objects/each_matrix/0tfidf_matrix.pkl 
COPY 1tfidf_matrix.pkl ./pkl_objects/each_matrix/1tfidf_matrix.pkl 
COPY 2tfidf_matrix.pkl ./pkl_objects/each_matrix/2tfidf_matrix.pkl 
COPY 3tfidf_matrix.pkl ./pkl_objects/each_matrix/3tfidf_matrix.pkl 
COPY 4tfidf_matrix.pkl ./pkl_objects/each_matrix/4tfidf_matrix.pkl 
COPY 5tfidf_matrix.pkl ./pkl_objects/each_matrix/5tfidf_matrix.pkl 
COPY 6tfidf_matrix.pkl ./pkl_objects/each_matrix/6tfidf_matrix.pkl 
COPY 7tfidf_matrix.pkl ./pkl_objects/each_matrix/7tfidf_matrix.pkl 
COPY 8tfidf_matrix.pkl ./pkl_objects/each_matrix/8tfidf_matrix.pkl 
COPY 9tfidf_matrix.pkl ./pkl_objects/each_matrix/9tfidf_matrix.pkl 
COPY 10tfidf_matrix.pkl ./pkl_objects/each_matrix/10tfidf_matrix.pkl 
COPY 11tfidf_matrix.pkl ./pkl_objects/each_matrix/11tfidf_matrix.pkl 
COPY 12tfidf_matrix.pkl ./pkl_objects/each_matrix/12tfidf_matrix.pkl 
COPY 13tfidf_matrix.pkl ./pkl_objects/each_matrix/13tfidf_matrix.pkl 
COPY 14tfidf_matrix.pkl ./pkl_objects/each_matrix/14tfidf_matrix.pkl 
COPY 15tfidf_matrix.pkl ./pkl_objects/each_matrix/15tfidf_matrix.pkl 
COPY 16tfidf_matrix.pkl ./pkl_objects/each_matrix/16tfidf_matrix.pkl 
COPY 17tfidf_matrix.pkl ./pkl_objects/each_matrix/17tfidf_matrix.pkl 

COPY 0tfidf_vect.pkl ./pkl_objects/each_vect/0tfidf_vect.pkl 
COPY 1tfidf_vect.pkl ./pkl_objects/each_vect/1tfidf_vect.pkl 
COPY 2tfidf_vect.pkl ./pkl_objects/each_vect/2tfidf_vect.pkl 
COPY 3tfidf_vect.pkl ./pkl_objects/each_vect/3tfidf_vect.pkl 
COPY 4tfidf_vect.pkl ./pkl_objects/each_vect/4tfidf_vect.pkl 
COPY 5tfidf_vect.pkl ./pkl_objects/each_vect/5tfidf_vect.pkl 
COPY 6tfidf_vect.pkl ./pkl_objects/each_vect/6tfidf_vect.pkl 
COPY 7tfidf_vect.pkl ./pkl_objects/each_vect/7tfidf_vect.pkl 
COPY 8tfidf_vect.pkl ./pkl_objects/each_vect/8tfidf_vect.pkl 
COPY 9tfidf_vect.pkl ./pkl_objects/each_vect/9tfidf_vect.pkl 
COPY 10tfidf_vect.pkl ./pkl_objects/each_vect/10tfidf_vect.pkl 
COPY 11tfidf_vect.pkl ./pkl_objects/each_vect/11tfidf_vect.pkl 
COPY 12tfidf_vect.pkl ./pkl_objects/each_vect/12tfidf_vect.pkl 
COPY 13tfidf_vect.pkl ./pkl_objects/each_vect/13tfidf_vect.pkl 
COPY 14tfidf_vect.pkl ./pkl_objects/each_vect/14tfidf_vect.pkl 
COPY 15tfidf_vect.pkl ./pkl_objects/each_vect/15tfidf_vect.pkl 
COPY 16tfidf_vect.pkl ./pkl_objects/each_vect/16tfidf_vect.pkl 
COPY 17tfidf_vect.pkl ./pkl_objects/each_vect/17tfidf_vect.pkl 

COPY keyword_count_vect.pkl ./pkl_objects/keyword/keyword_count_vect.pkl
COPY keyword_dict.txt ./pkl_objects/keyword/keyword_dict.txt 
COPY keyword_mat.pkl ./pkl_objects/keyword/keyword_mat.pkl 

RUN pip3 install -r requirements.txt

EXPOSE 8080
COPY . /app
CMD streamlit run --server.port 8080 --server.enableCORS false app.py
