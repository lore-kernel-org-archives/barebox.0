Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKOfq-0007N5-Al
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 08:56:35 +0000
Received: by mail-ea0-f174.google.com with SMTP id f15so1392968eak.5
 for <barebox@lists.infradead.org>; Mon, 03 Mar 2014 00:56:12 -0800 (PST)
Date: Mon, 3 Mar 2014 10:08:21 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140303090820.GB24214@x61s.Speedport_W_921V_1_24_000>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
 <1393573468-31105-2-git-send-email-alex.aring@gmail.com>
 <20140303083620.GN17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140303083620.GN17250@pengutronix.de>
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
Subject: Re: [RFC 1/3] ramfs: add foofs for testing
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Mar 03, 2014 at 09:36:20AM +0100, Sascha Hauer wrote:
> On Fri, Feb 28, 2014 at 08:44:26AM +0100, Alexander Aring wrote:
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> >  fs/ramfs.c | 69 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 69 insertions(+)
> > 
> > diff --git a/fs/ramfs.c b/fs/ramfs.c
> > index f45a454..4b93c2e 100644
> > --- a/fs/ramfs.c
> > +++ b/fs/ramfs.c
> > @@ -608,6 +608,48 @@ static int ramfs_probe(struct device_d *dev)
> >  	return 0;
> >  }
> >  
> > +static int foofs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
> > +{
> > +	if (f->pos == strlen("Hello World!\n"))
> > +		return 0;
> > +
> > +	return sprintf(buf, "%s", "Hello World!\n");
> > +}
> 
> You should never read more bytes than insize. This is also true for
> insize == 0. Implement this correctly and you'll see that your patches
> do not solve the problem.
> 
yes it's not correctly implemented. Maybe I implement a "testfs"
filesystem for barebox with unit-tests which can be used to test the
filesystem layer to see if something broken or not. This fs should be
based on ramfs.

The fs tests be placed into commands -> testing and it's only interesting for
some developers.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
