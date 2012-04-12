Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIIZj-0004hh-Ph
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 11:52:33 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CB99DFF91B1
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2012 13:53:33 +0200 (CEST)
Date: Thu, 12 Apr 2012 13:35:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120412113500.GC11079@game.jcrosoft.org>
References: <1334126298-29923-1-git-send-email-plagnioj@jcrosoft.com>
 <1334135588-26117-1-git-send-email-plagnioj@jcrosoft.com>
 <20120412100355.GX3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120412100355.GX3852@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] arm: bootm: zImage allow to use the concataned oftree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:03 Thu 12 Apr     , Sascha Hauer wrote:
> On Wed, Apr 11, 2012 at 11:13:08AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will allow to update it with fixup.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> This looks like a followup to the previous patch, but it does not apply
> neither with or without this patch.
it's apply over the android patch sereis

I put the patch merge there

The following changes since commit 6c727af2c27d84f26a04a8075890f575ebf91814:

  Final switch to use combined driver mc13xxx (2012-04-11 09:51:01 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git zImage

for you to fetch changes up to 576b0d48b3f27388240538f85ec4aa1f778f2573:

  arm: bootm: zImage allow to use the concataned oftree (2012-04-12 19:50:42 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      arm: fix zImage support when a oftree is concatenated
      arm: bootm: zImage allow to use the concataned oftree

 arch/arm/lib/bootm.c |   54 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 54 insertions(+), 0 deletions(-)

Best Regards,
J. 
> Sascha
> 
> > ---
> >  arch/arm/lib/bootm.c |   19 ++++++++++++-------
> >  1 files changed, 12 insertions(+), 7 deletions(-)
> > 
> > diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> > index 813927a..213f136 100644
> > --- a/arch/arm/lib/bootm.c
> > +++ b/arch/arm/lib/bootm.c
> > @@ -14,6 +14,7 @@
> >  #include <sizes.h>
> >  #include <libbb.h>
> >  #include <magicvar.h>
> > +#include <libfdt.h>
> >  
> >  #include <asm/byteorder.h>
> >  #include <asm/setup.h>
> > @@ -127,8 +128,6 @@ struct zimage_header {
> >  static int do_bootz_linux_fdt(int fd, struct image_data *data)
> >  {
> >  	struct fdt_header __header, *header;
> > -	struct resource *r = data->os_res;
> > -	struct resource *of_res = data->os_res;
> >  	void *oftree;
> >  	int ret;
> >  
> > @@ -144,14 +143,12 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
> >  
> >  	end = be32_to_cpu(header->totalsize);
> >  
> > -	of_res = request_sdram_region("oftree", r->start + r->size, end);
> > -	if (!of_res) {
> > -		perror("zImage: oftree request_sdram_region");
> > +	oftree = malloc(end + 0x8000);
> > +	if (!oftree) {
> > +		perror("zImage: oftree malloc");
> >  		return -ENOMEM;
> >  	}
> >  
> > -	oftree = (void*)of_res->start;
> > -
> >  	memcpy(oftree, header, sizeof(*header));
> >  
> >  	end -= sizeof(*header);
> > @@ -164,6 +161,14 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
> >  		return -EIO;
> >  	}
> >  
> > +	fdt_open_into(oftree, oftree, end + 0x8000);
> > +
> > +	ret = of_fix_tree(oftree);
> > +	if (ret)
> > +		return ret;
> > +
> > +	data->oftree = oftree;
> > +
> >  	pr_info("zImage: concatenated oftree detected\n");
> >  
> >  	return 0;
> > -- 
> > 1.7.9.1
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
