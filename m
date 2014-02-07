Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBfKe-0005O1-TY
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 06:54:39 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 37DF0FFBD09
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 07:54:22 +0100 (CET)
Date: Fri, 7 Feb 2014 07:48:57 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140207064857.GF9671@ns203013.ovh.net>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391704854-3141-9-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391704854-3141-9-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/9] nfs: switch to nfs3
To: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:40 Thu 06 Feb     , Uwe Kleine-K??nig wrote:
> This was tested against nfs-kernel-server and unfs3.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/nfs.c | 859 ++++++++++++++++++++++++++++++++++++++++++++-------------=
------
>  1 file changed, 608 insertions(+), 251 deletions(-)
> =

> diff --git a/fs/nfs.c b/fs/nfs.c
> index 373159d6ffb7..8eec63078dd3 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -1,10 +1,12 @@
>  /*
>   * nfs.c - barebox NFS driver
>   *
> + * Copyright (c) 2014 Uwe Kleine-K=F6nig, Pengutronix
>   * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
>   * Copyright (c) Masami Komiya <mkomiya@sonare.it> 2004
>   *
> - * Based on U-Boot NFS code which is based on NetBSD code
> + * Based on U-Boot NFS code which is based on NetBSD code with
> + * major changes to support nfs3.
>   *
>   * See file CREDITS for list of people who contributed to this
>   * project.
> @@ -17,7 +19,6 @@
>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
> - *
>   */
>  =

>  #include <common.h>
> @@ -34,6 +35,9 @@
>  #include <kfifo.h>
>  #include <sizes.h>
>  =

> +#define ntohll(val)	__be64_to_cpu(val)
> +#define htonll(val)	__cpu_to_be64(val)

use the cpu_to and to_cpu directly

as if we have the standard define in any header later this will cause issues
> +
>  #define SUNRPC_PORT     111
>  =

>  #define PROG_PORTMAP    100000
> @@ -48,34 +52,54 @@
>  #define MOUNT_ADDENTRY	1
>  #define MOUNT_UMOUNT	3
>  =

> -#define NFS_GETATTR     1
> -#define NFS_LOOKUP      4
> -#define NFS_READLINK    5
> -#define NFS_READ        6
> -#define NFS_READDIR	16
> -
> -#define NFS_FHSIZE      32
> -
> -enum nfs_stat {
> -	NFS_OK		=3D 0,
> -	NFSERR_PERM	=3D 1,
> -	NFSERR_NOENT	=3D 2,
> -	NFSERR_IO	=3D 5,
> -	NFSERR_NXIO	=3D 6,
> -	NFSERR_ACCES	=3D 13,
> -	NFSERR_EXIST	=3D 17,
> -	NFSERR_NODEV	=3D 19,
> -	NFSERR_NOTDIR	=3D 20,
> -	NFSERR_ISDIR	=3D 21,
> -	NFSERR_FBIG	=3D 27,
> -	NFSERR_NOSPC	=3D 28,
> -	NFSERR_ROFS	=3D 30,
> -	NFSERR_NAMETOOLONG=3D63,
> -	NFSERR_NOTEMPTY	=3D 66,
> -	NFSERR_DQUOT	=3D 69,
> -	NFSERR_STALE	=3D 70,
> -	NFSERR_WFLUSH	=3D 99,
> -};
> +#define NFSPROC3_GETATTR	1
> +#define NFSPROC3_LOOKUP		3
> +#define NFSPROC3_READLINK	5
> +#define NFSPROC3_READ		6
> +#define NFSPROC3_READDIR	16
> +
> +#define NFS3_FHSIZE      64
> +#define NFS3_COOKIEVERFSIZE	8
> +
> +/* values of enum ftype3 */
> +#define NF3REG	1
> +#define NF3DIR	2
> +#define NF3BLK	3
> +#define NF3CHR	4
> +#define NF3LNK	5
> +#define NF3SOCK	6
> +#define NF3FIFO	7
> +
> +/* values for enum nfsstat3 */
> +#define NFS3_OK			    0
> +#define NFS3ERR_PERM		    1
> +#define NFS3ERR_NOENT		    2
> +#define NFS3ERR_IO   		    5
> +#define NFS3ERR_NXIO 		    6
> +#define NFS3ERR_ACCES		   13
> +#define NFS3ERR_EXIST		   17
> +#define NFS3ERR_XDEV		   18
> +#define NFS3ERR_NODEV		   19
> +#define NFS3ERR_NOTDIR		   20
> +#define NFS3ERR_ISDIR		   21
> +#define NFS3ERR_INVAL		   22
> +#define NFS3ERR_FBIG		   27
> +#define NFS3ERR_NOSPC		   28
> +#define NFS3ERR_ROFS		   30
> +#define NFS3ERR_MLINK		   31
> +#define NFS3ERR_NAMETOOLONG	   63
> +#define NFS3ERR_NOTEMPTY	   66
> +#define NFS3ERR_DQUOT		   69
> +#define NFS3ERR_STALE		   70
> +#define NFS3ERR_REMOTE		   71
> +#define NFS3ERR_BADHANDLE 	10001
> +#define NFS3ERR_NOT_SYNC	10002
> +#define NFS3ERR_BAD_COOKIE	10003
> +#define NFS3ERR_NOTSUPP		10004
> +#define NFS3ERR_TOOSMALL	10005
> +#define NFS3ERR_SERVERFAULT	10006
> +#define NFS3ERR_BADTYPE		10007
> +#define NFS3ERR_JUKEBOX		10008
>  =

>  static void *nfs_packet;
>  static int nfs_len;
> @@ -107,51 +131,96 @@ struct nfs_priv {
>  	struct net_connection *con;
>  	IPaddr_t server;
>  	char *path;
> -	int mount_port;
> -	int nfs_port;
> -	unsigned long rpc_id;
> -	char rootfh[NFS_FHSIZE];
> +	unsigned short mount_port;
> +	unsigned short nfs_port;
> +	uint32_t rpc_id;
> +	uint32_t rootfh_len;
> +	char rootfh[NFS3_FHSIZE];
>  };
>  =

>  struct file_priv {
>  	struct kfifo *fifo;
>  	void *buf;
> -	char filefh[NFS_FHSIZE];
> +	uint32_t filefh_len;
> +	char filefh[NFS3_FHSIZE];
>  	struct nfs_priv *npriv;
>  };
>  =

>  static uint64_t nfs_timer_start;
>  =

> -static int	nfs_state;
> +static int nfs_state;
>  #define STATE_DONE			1
>  #define STATE_START			2
>  =

> -enum ftype {
> -	NFNON =3D 0,
> -	NFREG =3D 1,
> -	NFDIR =3D 2,
> -	NFBLK =3D 3,
> -	NFCHR =3D 4,
> -	NFLNK =3D 5
> -};
> -
> -struct fattr {
> -	uint32_t type;
> -	uint32_t mode;
> -	uint32_t nlink;
> -	uint32_t uid;
> -	uint32_t gid;
> -	uint32_t size;
> -	uint32_t blocksize;
> -	uint32_t rdev;
> -	uint32_t blocks;
> -};
> -
> -struct readdirargs {
> -	char filefh[NFS_FHSIZE];
> -	uint32_t cookie;
> -	uint32_t count;
> -};
> +/*
> + * common types used in more than one request:
> + *
> + * typedef uint32 count3;
> + * typedef uint32 gid3;
> + * typedef uint32 mode3;
> + * typedef uint32 uid3;
> + *
> + * typedef uint64 cookie3;
> + * typedef uint64 fileid3;
> + * typedef uint64 size3;
> + *
> + * typedef string filename3<>;
> + * typedef string nfspath3<>;
> + *
> + * typedef opaque cookieverf3[NFS3_COOKIEVERFSIZE];
> + *
> + * enum ftype3 {
> + * 	NF3REG =3D 1,
> + * 	NF3DIR =3D 2,
> + * 	NF3BLK =3D 3,
> + * 	NF3CHR =3D 4,
> + * 	NF3LNK =3D 5,
> + * 	NF3SOCK =3D 6,
> + * 	NF3FIFO =3D 7
> + * };
> + *
> + * struct specdata3 {
> + * 	uint32 specdata1;
> + * 	uint32 specdata2;
> + * };
> + *
> + * struct nfs_fh3 {
> + * 	opaque data<NFS3_FHSIZE>;
> + * }
> + *
> + * struct nfstime3 {
> + * 	uint32 seconds;
> + * 	uint32 nseconds;
> + * };
> + *
> + * struct fattr3 {
> + * 	ftype3 type;
> + * 	mode3 mode;
> + * 	uint32_t nlink;
> + * 	uid3 uid;
> + * 	gid3 gid;
> + * 	size3 size;
> + * 	size3 used;
> + * 	specdata3 rdev;
> + * 	uint64_t fsid;
> + * 	fileid3 fileid;
> + * 	nfstime3 atime;
> + * 	nfstime3 mtime;
> + * 	nfstime3 ctime;
> + * };
> + *
> + * struct diropargs3 {
> + * 	nfs_fh3 dir;
> + * 	filename3 name;
> + * }
> + *
> + * union post_op_attr switch (bool attributes_follow) {
> + * case TRUE:
> + * 	fattr3 attributes;
> + * case FALSE:
> + * 	void;
> + * };
> + */
>  =

>  struct xdr_stream {
>  	__be32 *p;
> @@ -162,6 +231,20 @@ struct xdr_stream {
>  #define xdr_zero 0
>  #define XDR_QUADLEN(l)		(((l) + 3) >> 2)
>  =

> +struct nfs_dir {
> +	DIR dir;
> +
> +	/*
> +	 * stream points to the next entry3 in the reply member of READDIR3res
> +	 * (if any, to the end indicator otherwise).
> +	 */
> +	struct xdr_stream stream;
> +	struct dirent ent;
> +	struct file_priv *priv;
> +	uint64_t cookie;
> +	char cookieverf[NFS3_COOKIEVERFSIZE];
> +};
> +
>  static void xdr_init(struct xdr_stream *stream, void *buf, int len)
>  {
>  	stream->p =3D stream->buf =3D buf;
> @@ -192,8 +275,10 @@ static __be32 *xdr_inline_decode(struct xdr_stream *=
xdr, size_t nbytes)
>  	return p;
>  }
>  =

> -static int decode_filename(struct xdr_stream *xdr,
> -		char *name, u32 *length)
> +/*
> + * name is expected to point to a buffer with a size of at least 256 byt=
es.
> + */
> +static int decode_filename(struct xdr_stream *xdr, char *name, u32 *leng=
th)
>  {
>  	__be32 *p;
>  	u32 count;
> @@ -201,7 +286,7 @@ static int decode_filename(struct xdr_stream *xdr,
>  	p =3D xdr_inline_decode(xdr, 4);
>  	if (!p)
>  		goto out_overflow;
> -	count =3D be32_to_cpup(p);
> +	count =3D ntohl(net_read_uint32(p));
>  	if (count > 255)
>  		goto out_nametoolong;
>  	p =3D xdr_inline_decode(xdr, count);
> @@ -211,11 +296,13 @@ static int decode_filename(struct xdr_stream *xdr,
>  	name[count] =3D 0;
>  	*length =3D count;
>  	return 0;
> +
>  out_nametoolong:
> -	printk("NFS: returned filename too long: %u\n", count);
> +	printf("%s: returned a too long filename: %u\n", __func__, count);
can we use dev_xx for message
>  	return -ENAMETOOLONG;
> +
>  out_overflow:
> -	printf("%s overflow\n",__func__);
> +	printf("%s: premature end of packet\n", __func__);
>  	return -EIO;
>  }
>  =

> @@ -247,7 +334,8 @@ static uint32_t *rpc_add_credentials(uint32_t *p)
>  	return p;
>  }
>  =

> -static int rpc_check_reply(unsigned char *pkt, int rpc_prog, unsigned lo=
ng rpc_id, int *nfserr)
> +static int rpc_check_reply(unsigned char *pkt,
> +		int rpc_prog, uint32_t rpc_id, int *nfserr)
>  {
>  	uint32_t *data;
>  	struct rpc_reply rpc;
> @@ -292,37 +380,41 @@ static int rpc_req(struct nfs_priv *npriv, int rpc_=
prog, int rpc_proc,
>  		uint32_t *data, int datalen)
>  {
>  	struct rpc_call pkt;
> -	unsigned long id;
> -	int dport;
> +	unsigned short dport;
>  	int ret;
>  	unsigned char *payload =3D net_udp_get_payload(npriv->con);
>  	int nfserr;
>  	int tries =3D 0;
>  =

>  	npriv->rpc_id++;
> -	id =3D npriv->rpc_id;
>  =

> -	pkt.id =3D htonl(id);
> +	pkt.id =3D htonl(npriv->rpc_id);
>  	pkt.type =3D htonl(MSG_CALL);
>  	pkt.rpcvers =3D htonl(2);	/* use RPC version 2 */
>  	pkt.prog =3D htonl(rpc_prog);
> -	pkt.vers =3D htonl(2);	/* portmapper is version 2 */
>  	pkt.proc =3D htonl(rpc_proc);
>  =

> -	memcpy(payload, &pkt, sizeof(pkt));
> -	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
> +	debug("%s: prog: %d, proc: %d\n", __func__, rpc_prog, rpc_proc);
>  =

> -	if (rpc_prog =3D=3D PROG_PORTMAP)
> +	if (rpc_prog =3D=3D PROG_PORTMAP) {
>  		dport =3D SUNRPC_PORT;
> -	else if (rpc_prog =3D=3D PROG_MOUNT)
> +		pkt.vers =3D htonl(2);
> +	} else if (rpc_prog =3D=3D PROG_MOUNT) {
>  		dport =3D npriv->mount_port;
> -	else
> +		pkt.vers =3D htonl(3);
> +	} else {
>  		dport =3D npriv->nfs_port;
> +		pkt.vers =3D htonl(3);
> +	}
> +
> +	memcpy(payload, &pkt, sizeof(pkt));
> +	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
>  =

>  	npriv->con->udp->uh_dport =3D htons(dport);
>  =

>  again:
> -	ret =3D net_udp_send(npriv->con, sizeof(pkt) + datalen * sizeof(uint32_=
t));
> +	ret =3D net_udp_send(npriv->con,
> +			sizeof(pkt) + datalen * sizeof(uint32_t));
>  =

>  	nfs_timer_start =3D get_time_ns();
>  =

> @@ -357,7 +449,7 @@ again:
>  /*
>   * rpc_lookup_req - Lookup RPC Port numbers
>   */
> -static int rpc_lookup_req(struct nfs_priv *npriv, int prog, int ver)
> +static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_=
t ver)
>  {
>  	uint32_t data[16];
>  	int ret;
> @@ -378,6 +470,135 @@ static int rpc_lookup_req(struct nfs_priv *npriv, i=
nt prog, int ver)
>  	return port;
>  }
>  =

> +static uint32_t *nfs_add_uint32(uint32_t *p, uint32_t val)
> +{
> +	*p++ =3D htonl(val);
> +	return p;
> +}
> +
> +static uint32_t *nfs_add_uint64(uint32_t *p, uint64_t val)
> +{
> +	uint64_t nval =3D htonll(val);
missing blank line

> +	memcpy(p, &nval, 8);
> +	return p + 2;
> +}
> +
> +static uint32_t *nfs_add_fh3(uint32_t *p, unsigned fh_len, const char *f=
h)
> +{
> +	*p++ =3D htonl(fh_len);
> +
> +	/* zero padding */
> +	if (fh_len & 3)
> +		p[fh_len / 4] =3D 0;
> +
> +	memcpy(p, fh, fh_len);
> +	p +=3D DIV_ROUND_UP(fh_len, 4);
> +	return p;
> +}
> +
> +static uint32_t *nfs_add_filename(uint32_t *p,
> +		uint32_t filename_len, const char *filename)
> +{
> +	*p++ =3D htonl(filename_len);
> +
> +	/* zero padding */
> +	if (filename_len & 3)
> +		p[filename_len / 4] =3D 0;
> +
> +	memcpy(p, filename, filename_len);
> +	p +=3D DIV_ROUND_UP(filename_len, 4);
> +	return p;
> +}
> +
what is the difference with the function upper?

> +/* This is a 1:1 mapping for Linux, the compiler optimizes it out */
> +static const struct {
> +	uint32_t nfsmode;
> +	unsigned short statmode;
> +} nfs3_mode_bits[] =3D {
> +	{ 0x00001, S_IXOTH },
> +	{ 0x00002, S_IWOTH },
> +	{ 0x00004, S_IROTH },
> +	{ 0x00008, S_IXGRP },
> +	{ 0x00010, S_IWGRP },
> +	{ 0x00020, S_IRGRP },
> +	{ 0x00040, S_IXUSR },
> +	{ 0x00080, S_IWUSR },
> +	{ 0x00100, S_IRUSR },
> +	{ 0x00200, S_ISVTX },
> +	{ 0x00400, S_ISGID },
> +	{ 0x00800, S_ISUID },
> +};
> +
> +static int nfs_fattr3_to_stat(uint32_t *p, struct stat *s)
> +{
> +	uint32_t mode;
> +	size_t i;
> +
> +	/* offsetof(struct fattr3, type) =3D 0 */
> +	switch (ntohl(net_read_uint32(p + 0))) {
> +	case NF3REG:
> +		s->st_mode =3D S_IFREG;
> +		break;
> +	case NF3DIR:
> +		s->st_mode =3D S_IFDIR;
> +		break;
> +	case NF3BLK:
> +		s->st_mode =3D S_IFBLK;
> +		break;
> +	case NF3CHR:
> +		s->st_mode =3D S_IFCHR;
> +		break;
> +	case NF3LNK:
> +		s->st_mode =3D S_IFLNK;
> +		break;
> +	case NF3SOCK:
> +		s->st_mode =3D S_IFSOCK;
> +		break;
> +	case NF3FIFO:
> +		s->st_mode =3D S_IFIFO;
> +		break;
> +	default:
> +		printf("%s: invalid mode %x\n",
> +				__func__, ntohl(net_read_uint32(p + 0)));
> +		return -EIO;
> +	}
> +
> +	/* offsetof(struct fattr3, mode) =3D 4 */
> +	mode =3D ntohl(net_read_uint32(p + 1));
> +	for (i =3D 0; i < ARRAY_SIZE(nfs3_mode_bits); ++i) {
> +		if (mode & nfs3_mode_bits[i].nfsmode)
> +			s->st_mode |=3D nfs3_mode_bits[i].statmode;
> +	}
> +
> +	/* offsetof(struct fattr3, size) =3D 20 */
> +	s->st_size =3D ntohll(net_read_uint64(p + 5));
> +
> +	return 0;
> +}
> +
> +static uint32_t *nfs_read_post_op_attr(uint32_t *p, struct stat **s)
> +{
> +	struct stat dummy;
> +	/*
> +	 * union post_op_attr switch (bool attributes_follow) {
> +	 * case TRUE:
> +	 * 	fattr3 attributes;
> +	 * case FALSE:
> +	 * 	void;
> +	 * };
> +	 */
> +
> +	if (ntohl(net_read_uint32(p++))) {
> +		nfs_fattr3_to_stat(p, s ? *s : &dummy);
> +		p +=3D 21;
> +	} else if (s) {
> +		/* no attributes available */
> +		*s =3D NULL;
> +	}
> +
> +	return p;
> +}
> +
>  /*
>   * nfs_mount_req - Mount an NFS Filesystem
>   */
> @@ -409,7 +630,16 @@ static int nfs_mount_req(struct nfs_priv *npriv)
>  	if (ret)
>  		return ret;
>  =

> -	memcpy(npriv->rootfh, nfs_packet + sizeof(struct rpc_reply) + 4, NFS_FH=
SIZE);
> +	p =3D nfs_packet + sizeof(struct rpc_reply) + 4;
> +
> +	npriv->rootfh_len =3D ntohl(net_read_uint32(p++));
> +	if (npriv->rootfh_len > NFS3_FHSIZE) {
> +		printf("%s: file handle too big: %lu\n", __func__,
> +				(unsigned long)npriv->rootfh_len);
> +		return -EIO;
really EIO?
> +	}
> +	memcpy(npriv->rootfh, p, npriv->rootfh_len);
> +	p +=3D DIV_ROUND_UP(npriv->rootfh_len, 4);
>  =

>  	return 0;
>  }
> @@ -429,12 +659,7 @@ static void nfs_umount_req(struct nfs_priv *npriv)
>  	p =3D &(data[0]);
>  	p =3D rpc_add_credentials(p);
>  =

> -	*p++ =3D htonl(pathlen);
> -	if (pathlen & 3)
> -		*(p + pathlen / 4) =3D 0;
> -
> -	memcpy (p, npriv->path, pathlen);
> -	p +=3D (pathlen + 3) / 4;
> +	p =3D nfs_add_filename(p, pathlen, npriv->path);
>  =

>  	len =3D p - &(data[0]);
>  =

> @@ -443,36 +668,68 @@ static void nfs_umount_req(struct nfs_priv *npriv)
>  =

>  /*
>   * nfs_lookup_req - Lookup Pathname
> + *
> + * *s is set to NULL if LOOKUP3resok doesn't contain obj_attributes.
>   */
> -static int nfs_lookup_req(struct file_priv *priv, const char *filename,
> -		int fnamelen)
> +static int nfs_lookup_req(struct file_priv *priv,
> +		uint32_t filename_len, const char *filename, struct stat **s)
>  {
....
>  static struct dirent *nfs_readdir(struct device_d *dev, DIR *dir)
>  {
> -	struct nfs_dir *ndir =3D (void *)dir;
> -	__be32 *p;
> +	struct nfs_dir *ndir =3D container_of(dir, struct nfs_dir, dir);
> +	uint32_t *p;
>  	int ret;
>  	int len;
>  	struct xdr_stream *xdr =3D &ndir->stream;
>  =

>  again:
>  	p =3D xdr_inline_decode(xdr, 4);
> -	if (!p)
> -		goto out_overflow;
> +	if (!p) {
> +		printf("%s: premature end of packet\n", __func__);
> +		return NULL;
> +	}
>  =

> -	if (*p++ =3D=3D xdr_zero) {
> +	if (!net_read_uint32(p)) {
> +		/* eof? */
>  		p =3D xdr_inline_decode(xdr, 4);
> -		if (!p)
> -			goto out_overflow;
> -		if (*p++ =3D=3D xdr_zero) {
> -			void *buf;
> -			int len;
> -
> -			/*
> -			 * End of current entries, read next chunk.
> -			 */
> +		if (!p) {
> +			printf("%s: premature end of packet\n", __func__);
> +			return NULL;
> +		}
> +		if (net_read_uint32(p))
> +			return NULL;
>  =

> -			free(ndir->stream.buf);
> +		if (!nfs_readdirattr_req(ndir->priv, ndir)) {
> +			printf("%s: nfs_readdirattr_req failed\n", __func__);
> +			return NULL;
> +		}
>  =

> -			buf =3D nfs_readdirattr_req(ndir->priv, &len, ndir->cookie);
> -			if (!buf)
> -				return NULL;
> +		goto again;
> +	}
>  =

> -			xdr_init(&ndir->stream, buf, len);
> +	/* there is another entry available in the last reply */
>  =

> -			goto again;
> -		}
> -		return NULL; /* -EINVAL */
> +	/* skip over fileid */
> +	p =3D xdr_inline_decode(xdr, 8);
> +	if (!p) {
> +		printf("%s: premature end of packet\n", __func__);
> +		return NULL;
>  	}
>  =

> -	p =3D xdr_inline_decode(xdr, 4);
> -	if (!p)
> -		goto out_overflow;
> -
>  	ret =3D decode_filename(xdr, ndir->ent.d_name, &len);
>  	if (ret)
>  		return NULL;
>  =

> -	/*
> -	 * The type (size and byte order) of nfscookie isn't defined in
> -	 * RFC 1094.  This implementation assumes that it's an XDR uint32.
> -	 */
> -	p =3D xdr_inline_decode(xdr, 4);
> -	if (!p)
> -		goto out_overflow;
> -
> -	ndir->cookie =3D be32_to_cpup(p);
> +	p =3D xdr_inline_decode(xdr, 8);
> +	if (!p) {
> +		printf("%s: premature end of packet\n", __func__);
> +		return NULL;
> +	}
> +	ndir->cookie =3D ntohll(net_read_uint64(p));
>  =

>  	return &ndir->ent;
> -
> -out_overflow:
> -
> -	printf("nfs: overflow error\n");
> -
> -	return NULL;
> -
>  }
>  =

>  static int nfs_closedir(struct device_d *dev, DIR *dir)
> @@ -990,7 +1347,7 @@ static int nfs_probe(struct device_d *dev)
>  	}
>  	npriv->mount_port =3D ret;
>  =

> -	ret =3D rpc_lookup_req(npriv, PROG_NFS, 2);
> +	ret =3D rpc_lookup_req(npriv, PROG_NFS, 3);

so we loose nfs2?
>  	if (ret < 0) {
>  		printf("lookup nfs port failed with %d\n", ret);
>  		goto err2;
> -- =

> 1.8.5.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
