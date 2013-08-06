Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6nHC-0007y7-Kh
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 19:50:40 +0000
Date: Tue, 6 Aug 2013 21:50:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130806195010.GE26614@pengutronix.de>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
 <1375794428-29577-9-git-send-email-s.hauer@pengutronix.de>
 <20130806181614.GA30507@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130806181614.GA30507@x61s.8.8.8.8>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/8] fs: Add ubifs support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alex,

On Tue, Aug 06, 2013 at 08:16:16PM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> I take only a fast first look, it's a nice pretty huge patch :-)
> 

Yes, it's huge. Unfortunately not only in source code size, but also in
binary size...

> >  obj-$(CONFIG_FS_NFS)	+= nfs.o
> > diff --git a/fs/ubifs/Kconfig b/fs/ubifs/Kconfig
> > new file mode 100644
> > index 0000000..76612fd
> > --- /dev/null
> > +++ b/fs/ubifs/Kconfig
> > @@ -0,0 +1,17 @@
> > +menuconfig FS_UBIFS
> > +	bool
> 
> select UBI here?
> We use sometimes the ubi_read function.

Yes, right. I'll add a depends on CONFIG_MTD_UBI instead. selecting it
is not good since UBI needs mtd which would introduce indirect
dependencies.

> > +	bool
> > +	select LZO_DECOMPRESS
> > +	prompt "LZO compression support"
> > +
> > +config FS_UBIFS_COMPRESSION_ZLIB
> > +	bool
> > +	select ZLIB
> > +	prompt "ZLIB compression support"
> > +
> > +endif
> 
> Is this for a full compressed ubi volume? I know that in ubifs exists
> some extended attributes to enable compression for a special file. How
> barebox deal with that? I think barebox hasn't a support for xattr yet. :(

The compression in UBIFS comes from UBIFS, not from UBI. See mkfs.ubifs -h,
you can specify different compression types.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
