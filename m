Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL1TK-0002Gs-Ev
 for barebox@lists.infradead.org; Tue, 22 May 2018 07:12:40 +0000
Date: Tue, 22 May 2018 09:12:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180522071226.zarehvvh5xktfe5t@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
 <20180403074851.5411-19-s.hauer@pengutronix.de>
 <1526644453.3948.8.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1526644453.3948.8.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 18/19] fs: tftp: Switch to dcache implementation
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, May 18, 2018 at 01:54:13PM +0200, Philipp Zabel wrote:
> Hi Sascha,
> =

> On Tue, 2018-04-03 at 09:48 +0200, Sascha Hauer wrote:
> [...]
> > -static int tftp_stat(struct device_d *dev, const char *filename, struc=
t stat *s)
> > +static struct dentry *tftp_lookup(struct inode *dir, struct dentry *de=
ntry,
> > +			    unsigned int flags)
> >  {
> > -	struct file_priv *priv;
> > +	struct inode *inode;
> >  =

> > -	priv =3D tftp_do_open(dev, O_RDONLY, filename);
> > -	if (IS_ERR(priv))
> > -		return PTR_ERR(priv);
> > +	printf("Lookup: \"%s\"\n", dentry->name);
> >  =

> > -	s->st_mode =3D S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
> > -	if (priv->filesize)
> > -		s->st_size =3D priv->filesize;
> > -	else
> > -		s->st_size =3D FILESIZE_MAX;
> =

> With this change, stat() on files on TFTP mounts will return 0 where it
> returned FILESIZE_MAX before, if the TFTP server does not send
> information about the file size. This causes read_file_2() to fail,
> which uses stat() to determine file size. read_file_2() is used for
> example by bootm to load the device tree.
> =

> > +	inode =3D tftp_get_inode(dir->i_sb, dir, S_IFREG | S_IRWXUGO);
> > +	if (!inode)
> > +		return ERR_PTR(-ENOSPC);
> >  =

> =

> Can we just store the fake filesize in the d_inode here?
> =A0
> +=A0=A0=A0=A0=A0=A0=A0if (inode->i_size =3D=3D 0)
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0inode->i_size =3D FILESIZE_=
MAX;

Have you tried it? Does it work as expected?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
