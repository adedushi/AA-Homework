const LOAD_ARTICLES = 'article/loadArticles';
const ADD_ARTICLE = 'article/addArticle';

export const loadArticles = (articles) => {
  return {
    type: LOAD_ARTICLES,
    articles
  };
};

export const addArticle = (article) => {
  return {
    type: ADD_ARTICLE,
    article
  };
};

const initialState = { entries: [], isLoading: true };

const articleReducer = (state = initialState, action) => {
  switch (action.type) {
    case LOAD_ARTICLES:
      return { ...state, entries: [...action.articles] };
    case ADD_ARTICLE:
      return { ...state, entries: [...state.entries, action.article] };
    default:
      return state;
  }
};

export const fetchArticles = () => async dispatch => {
  const response = await fetch('/api/articles');
  const articles = await response.json();

  dispatch(loadArticles(articles))
}

export const writeArticle = (article) => async dispatch => {
  const response = await fetch('/api/articles', 
    {method: 'POST',
    body: JSON.stringify(article),
    headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    }}
  )
  const newArticle = await response.json();
  
  dispatch(addArticle(newArticle))
}

export default articleReducer;
