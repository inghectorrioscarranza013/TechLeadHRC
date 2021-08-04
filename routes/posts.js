const express = require('express');

const router = express.Router();
const Post = require('../database/models/Post');
//select all
router.get('/select',(req,res)=>{
	Post.findAll().then(posts=>{
		res.json(posts);
	})
})

//INSERT MESAGGES;
router.post('/',(req,res)=>{
	Post.create({
		title:req.body.title,
		body:"cuerpo"

	}).then(post => {
		res.json(post)
	})
});

//SELECT BY ID
router.get('/:id',(req,res)=>{
	Post.findByPk(req.params.id).then(post=>{
		res.json(post);
	})
})

module.exports = router;