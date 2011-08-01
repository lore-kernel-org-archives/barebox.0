Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnnUz-00087W-I9
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 08:05:18 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 05817FF9DE5
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 10:06:11 +0200 (CEST)
Date: Mon, 1 Aug 2011 09:47:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110801074721.GB6255@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
	<1311995831-25350-8-git-send-email-plagnioj@jcrosoft.com>
	<20110801073240.GE20587@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110801073240.GE20587@pengutronix.de>
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
Subject: Re: [PATCH 21/23] mci-core: switch to resource
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:32 Mon 01 Aug     , Sascha Hauer wrote:
> On Sat, Jul 30, 2011 at 05:17:09AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/mci/mci-core.c |    2 +-
> >  1 files changed, 1 insertions(+), 1 deletions(-)
> > 
> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index 3cf364c..c03885b 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -1231,7 +1231,7 @@ static int mci_card_probe(struct device_d *mci_dev)
> >  	p->priv = mci_dev;
> >  
> >  	strcpy(disk_dev->name, "disk");
> > -	disk_dev->size = mci->capacity;
> > +	disk_dev->resource[0].size = mci->capacity;
> >  	disk_dev->platform_data = p;
> 
> Resources for a device must be allocated. I already fixed this once with
> the following. Please do not reintroduce this bug again.
> 
> (and honestly, this registering of the "disk" device is just a crude way
> of passing around data in a void pointer. The real solution for this is
> to just add a register_ata_interface() function instead of registering a
> device.)
agreed I plan to get rid of this but first need to fininsh the map_base frop

but as we drop map_base and size so we need to do like this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
