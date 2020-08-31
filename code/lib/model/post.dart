
class Post {
  const Post({
    this.title,
    this.author,
    this.description,
    this.imageUrl,
  });
  // final 变量一旦分配了值就不能再改变
  final String title;
  final String author;
  final String description;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/39/wKhlCl8-GjSAZT9AAAEQxPO72RE654.png',
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/39/wKhlCl8-F5iAaOyKAANaCVTwyFg083.png',
  ),
  Post(
    title: 'Contained',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/39/wKhlCl8-GHyAFrjPAAOXn4-MGwg761.png',
  ),
  Post(
    title: 'Dragon',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/39/wKhlCl8-GKOAD7s_AAgyNH235r8071.png',
  ),
  Post(
    title: 'Free Hugs',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/33/wKhlCl8zl32ASrF6AAs-0MLbjbk466.png',
  ),
  Post(
    title: 'Gravity Falls',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/33/wKhlCl8zl5uAGxljAAm4lHKz1fM006.png',
  ),
  Post(
    title: 'Icecream Truck',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.147:8888/group1/M00/00/0C/wKhlNV89KIaALMpuAACwfaq2wCA133.jpg',
  ),
  Post(
    title: 'keyclack',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.147:8888/group1/M00/00/0C/wKhlNV89JR6AXBprAACW6SPwwI4250.jpg',
  ),
  Post(
    title: 'Overkill',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.147:8888/group1/M00/00/0C/wKhlNV89JjqASEejAAUsQJa5e08080.jpg',
  ),
  Post(
    title: 'Say Hello to Barry',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.147:8888/group1/M00/00/0C/wKhlNV8-Kq6ABkDrAAQbXFnbx3w989.jpg',
  ),
  Post(
    title: 'Space Skull',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/38/wKhlCl8705uAAx6SAAHeAJy2QxM264.png',
  ),
  Post(
    title: 'The Old Fashioned',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/31/wKhlCl8xRAqAbXK2AAFRQZ2WjgM690.png',
  ),
  Post(
    title: 'Tornado',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/33/wKhlCl8zkRmAFWyfAADxquMYYJ0744.png',
  ),
  Post(
    title: 'Undo',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/33/wKhlCl8zqROAPo3BAAGrmZ9Dsi4236.png',
  ),
  Post(
    title: 'White Dragon',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'http://111.205.170.148:8893/group1/M00/00/35/wKhlCl82GTCALnRHAAHW4YbooPU788.png',
  )
];