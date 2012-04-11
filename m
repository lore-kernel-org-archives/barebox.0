Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHt42-00044z-3Y
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 08:38:07 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 06299FF9394
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2012 10:39:05 +0200 (CEST)
Date: Wed, 11 Apr 2012 10:20:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120411082046.GL29577@game.jcrosoft.org>
References: <1334126298-29923-1-git-send-email-plagnioj@jcrosoft.com>
 <20120411081214.GK3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120411081214.GK3852@pengutronix.de>
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
Subject: Re: [PATCH v2] arm: fix zImage support when a oftree is concatenated
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:12 Wed 11 Apr     , Sascha Hauer wrote:
> On Wed, Apr 11, 2012 at 08:38:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > When a oftree is concatenated,the zImage is bigger than the size specified in
> > the zImage header. Detect it and copy it too.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/lib/bootm.c |   49 +++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 files changed, 49 insertions(+), 0 deletions(-)
> > 
> > diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> > index defc89b..dc379d8 100644
> > --- a/arch/arm/lib/bootm.c
> > +++ b/arch/arm/lib/bootm.c
> > @@ -123,6 +123,51 @@ struct zimage_header {
> >  
> >  #define ZIMAGE_MAGIC 0x016F2818
> >  
> > +static int do_bootz_linux_fdt(int fd, struct image_data *data)
> > +{
> > +	struct fdt_header __header, *header;
> > +	struct resource *r = data->os_res;
> > +	struct resource *of_res = data->os_res;
> > +	void *oftree;
> > +	int ret;
> > +
> > +	u32 end;
> > +
> > +	header = &__header;
> > +	ret = read(fd, header, sizeof(*header));
> > +	if (ret < sizeof(*header))
> > +		return ret;
> > +
> > +	if (file_detect_type(header) != filetype_oftree)
> > +		return -ENXIO;
> > +
> > +	end = be32_to_cpu(header->totalsize);
> > +
> > +	of_res = request_sdram_region("oftree", r->start + r->size, end);
> > +	if (!of_res) {
> > +		perror("zImage: oftree request_sdram_region");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	oftree = (void*)of_res->start;
> > +
> > +	memcpy(oftree, header, sizeof(*header));
> > +
> > +	end -= sizeof(*header);
> > +
> > +	ret = read_full(fd, oftree + sizeof(*header), end);
> > +	if (ret < 0)
> > +		return ret;
> > +	if (ret < end) {
> > +		printf("premature end of image\n");
> > +		return -EIO;
> > +	}
> 
> I am missing a call to of_fix_tree() here. Without it the command line
> will not be passed to the kernel. Maybe this is not really the intended
> usecase for appending an oftree to the zImage. Being able to append the
> oftree to the zImage seems more for bootloaders which do not have native
> support for devicetrees.
> 
> We could be more clever here and read the oftree to a seperately
> allocated area and set data->oftree then.
yeah I was thinking about it too

I'll do it as un incremetal patch

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
