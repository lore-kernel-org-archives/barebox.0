Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22a.google.com ([2a00:1450:4013:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK9Nz-0003wN-Rg
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 15:32:37 +0000
Received: by mail-ea0-f170.google.com with SMTP id a15so2376222eae.15
 for <barebox@lists.infradead.org>; Mon, 25 Mar 2013 08:32:33 -0700 (PDT)
Date: Mon, 25 Mar 2013 16:34:08 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130325153406.GB6967@x61s.campuswlan.hs-rm.de>
References: <1364224557-1840-1-git-send-email-j.weitzel@phytec.de>
 <20130325153215.GA6967@x61s.campuswlan.hs-rm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130325153215.GA6967@x61s.campuswlan.hs-rm.de>
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
Subject: Re: [PATCH] ubiformat: get buffer from malloc
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 25, 2013 at 04:32:15PM +0100, Alexander Aring wrote:
> Hi,
> 
> On Mon, Mar 25, 2013 at 04:15:57PM +0100, Jan Weitzel wrote:
> > There was a erase block sized (here 131072) char buf array on the stack.
> > Changed this to get the space from malloc preventing stack overflows.
> > Also fix a wrong return without clean up.
> > 
> > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > ---
> >  commands/ubiformat.c |   22 +++++++++++++++-------
> >  1 files changed, 15 insertions(+), 7 deletions(-)
> > 
> > diff --git a/commands/ubiformat.c b/commands/ubiformat.c
> > index 47941be..121816f 100644
> > --- a/commands/ubiformat.c
> > +++ b/commands/ubiformat.c
> > @@ -296,13 +296,20 @@ static int mark_bad(const struct mtd_dev_info *mtd, struct ubi_scan_info *si, in
> >  static int flash_image(const struct mtd_dev_info *mtd,
> >  		       const struct ubigen_info *ui, struct ubi_scan_info *si)
> >  {
> > -	int fd, img_ebs, eb, written_ebs = 0, divisor;
> > +	int fd, img_ebs, eb, written_ebs = 0, divisor, ret = -1;
> >  	off_t st_size;
> > +	char *buf = NULL;
> >  
> >  	fd = open_file(&st_size);
> >  	if (fd < 0)
> >  		return fd;
> >  
> > +	buf = malloc(mtd->eb_size);
> > +	if (!buf) {
> > +		sys_errmsg("cannot allocate %d bytes of memory", mtd->eb_size);
> > +		goto out_close;
> 
> meep, out_close will call free(buf). You need to add a new label above
> free(buf);
> 

ah, free is null proofed sry.

Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
