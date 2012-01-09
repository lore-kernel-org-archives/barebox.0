Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkIOL-00039l-V6
 for barebox@lists.infradead.org; Mon, 09 Jan 2012 16:48:17 +0000
Received: from mail412.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CE6581000A3E
 for <barebox@lists.infradead.org>; Mon,  9 Jan 2012 17:41:31 +0100 (CET)
Date: Mon, 9 Jan 2012 17:33:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120109163337.GI2854@game.jcrosoft.org>
References: <1325930228-10935-1-git-send-email-plagnioj@jcrosoft.com>
 <20120109083720.GM5446@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120109083720.GM5446@pengutronix.de>
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
Subject: Re: [RESEND PATCH] atmel_nand: add on_flash_btt option to enable
 bbt option
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:37 Mon 09 Jan     , Sascha Hauer wrote:
> On Sat, Jan 07, 2012 at 10:57:08AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/mtd/nand/atmel_nand.c |    6 ++++++
> >  1 files changed, 6 insertions(+), 0 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> > index 3213de2..3e00226 100644
> > --- a/drivers/mtd/nand/atmel_nand.c
> > +++ b/drivers/mtd/nand/atmel_nand.c
> > @@ -406,6 +406,12 @@ static int __init atmel_nand_probe(struct device_d *dev)
> >  		}
> >  	}
> >  
> > +	if (host->board->on_flash_bbt) {
> > +		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
> 
> dev_info?
I don't really think it suppose to be here

in the mtd and core

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
