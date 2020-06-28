FROM python:3.7

WORKDIR /app

COPY requirements.txt ./requirements.txt
COPY tfidf_train_matrix.pkl ./tfidf_train_matrix.pkl 
COPY tfidf_train_vect.pkl ./tfidf_train_vect.pkl
COPY Testing_Video.mp4 ./Testing_Video.mp4
COPY brunch_network.db ./brunch_network.db

COPY classifier_lg.pkl ./classifier_lg.pkl

COPY all_df.csv ./all_df.csv

COPY 0tfidf_matrix.pkl ./0tfidf_matrix.pkl 
COPY 1tfidf_matrix.pkl ./1tfidf_matrix.pkl 
COPY 2tfidf_matrix.pkl ./2tfidf_matrix.pkl 
COPY 3tfidf_matrix.pkl ./3tfidf_matrix.pkl 
COPY 4tfidf_matrix.pkl ./4tfidf_matrix.pkl 
COPY 5tfidf_matrix.pkl ./5tfidf_matrix.pkl 
COPY 6tfidf_matrix.pkl ./6tfidf_matrix.pkl 
COPY 7tfidf_matrix.pkl ./7tfidf_matrix.pkl 
COPY 8tfidf_matrix.pkl ./8tfidf_matrix.pkl 
COPY 9tfidf_matrix.pkl ./9tfidf_matrix.pkl 
COPY 10tfidf_matrix.pkl ./10tfidf_matrix.pkl 
COPY 11tfidf_matrix.pkl ./11tfidf_matrix.pkl 
COPY 12tfidf_matrix.pkl ./12tfidf_matrix.pkl 
COPY 13tfidf_matrix.pkl ./13tfidf_matrix.pkl 
COPY 14tfidf_matrix.pkl ./14tfidf_matrix.pkl 
COPY 15tfidf_matrix.pkl ./15tfidf_matrix.pkl 
COPY 16tfidf_matrix.pkl ./16tfidf_matrix.pkl 
COPY 17tfidf_matrix.pkl ./17tfidf_matrix.pkl 

COPY 0tfidf_vect.pkl ./0tfidf_vect.pkl 
COPY 1tfidf_vect.pkl ./1tfidf_vect.pkl 
COPY 2tfidf_vect.pkl ./2tfidf_vect.pkl 
COPY 3tfidf_vect.pkl ./3tfidf_vect.pkl 
COPY 4tfidf_vect.pkl ./4tfidf_vect.pkl 
COPY 5tfidf_vect.pkl ./5tfidf_vect.pkl 
COPY 6tfidf_vect.pkl ./6tfidf_vect.pkl 
COPY 7tfidf_vect.pkl ./7tfidf_vect.pkl 
COPY 8tfidf_vect.pkl ./8tfidf_vect.pkl 
COPY 9tfidf_vect.pkl ./9tfidf_vect.pkl 
COPY 10tfidf_vect.pkl ./10tfidf_vect.pkl 
COPY 11tfidf_vect.pkl ./11tfidf_vect.pkl 
COPY 12tfidf_vect.pkl ./12tfidf_vect.pkl 
COPY 13tfidf_vect.pkl ./13tfidf_vect.pkl 
COPY 14tfidf_vect.pkl ./14tfidf_vect.pkl 
COPY 15tfidf_vect.pkl ./15tfidf_vect.pkl 
COPY 16tfidf_vect.pkl ./16tfidf_vect.pkl 
COPY 17tfidf_vect.pkl ./17tfidf_vect.pkl 

COPY keyword_count_vect.pkl ./keyword_count_vect.pkl
COPY keyword_dict.txt ./keyword_dict.txt 
COPY keyword_mat.pkl ./keyword_mat.pkl 

RUN pip3 install -r requirements.txt

EXPOSE 8080
COPY . /app
CMD streamlit run --server.port 8080 --server.enableCORS false
app.py
