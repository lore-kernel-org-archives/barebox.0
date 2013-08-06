Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6qyX-0005d9-On
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 23:47:38 +0000
Received: by mail-we0-f171.google.com with SMTP id q55so949417wes.2
 for <barebox@lists.infradead.org>; Tue, 06 Aug 2013 16:47:15 -0700 (PDT)
Date: Wed, 7 Aug 2013 01:50:58 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130806235057.GA2391@x61s.8.8.8.8>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
 <1375794428-29577-9-git-send-email-s.hauer@pengutronix.de>
 <20130806181614.GA30507@x61s.8.8.8.8>
 <20130806195010.GE26614@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130806195010.GE26614@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Aug 06, 2013 at 09:50:10PM +0200, Sascha Hauer wrote:
> Hi Alex,
> 
> On Tue, Aug 06, 2013 at 08:16:16PM +0200, Alexander Aring wrote:
> > Hi Sascha,
> > 
> > I take only a fast first look, it's a nice pretty huge patch :-)
> > 
> 
> Yes, it's huge. Unfortunately not only in source code size, but also in
> binary size...
> 
Yea, I meant it not in a negative way.

> > >  obj-$(CONFIG_FS_NFS)	+= nfs.o
> > > diff --git a/fs/ubifs/Kconfig b/fs/ubifs/Kconfig
> > > new file mode 100644
> > > index 0000000..76612fd
> > > --- /dev/null
> > > +++ b/fs/ubifs/Kconfig
> > > @@ -0,0 +1,17 @@
> > > +menuconfig FS_UBIFS
> > > +	bool
> > 
> > select UBI here?
> > We use sometimes the ubi_read function.
> 
> Yes, right. I'll add a depends on CONFIG_MTD_UBI instead. selecting it
> is not good since UBI needs mtd which would introduce indirect
> dependencies.
> 
Oh yes, you already explained me the bad select and good depends on
thing a year ago.

> > > +	bool
> > > +	select LZO_DECOMPRESS
> > > +	prompt "LZO compression support"
> > > +
> > > +config FS_UBIFS_COMPRESSION_ZLIB
> > > +	bool
> > > +	select ZLIB
> > > +	prompt "ZLIB compression support"
> > > +
> > > +endif
> > 
> > Is this for a full compressed ubi volume? I know that in ubifs exists
> > some extended attributes to enable compression for a special file. How
> > barebox deal with that? I think barebox hasn't a support for xattr yet. :(
> 
> The compression in UBIFS comes from UBIFS, not from UBI. See mkfs.ubifs -h,
> you can specify different compression types.
> 
Yea, I meant here a support for reading a file which is compressed by
ubifs. Under Linux you can set extended attributed for the file(also for
compression). I don't know how barebox will dealing with that.

The question is what happens when I set the compression xattr for a file
under linux and then read it under barebox... Maybe I should try it and
then send patches if necessary :-).

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
