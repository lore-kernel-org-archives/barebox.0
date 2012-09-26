Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGu6o-0001X7-9x
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 16:05:11 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6EC2BFFBCFF
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 18:11:11 +0200 (CEST)
Date: Wed, 26 Sep 2012 18:02:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120926160239.GV26553@game.jcrosoft.org>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
 <1348484692-24993-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348484692-24993-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 02/23] clk clkdev: Add clkdev matching based on physbase
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:04 Mon 24 Sep     , Sascha Hauer wrote:
> Most clock/device associations can be done based on the physical
> base address of the corresponding device. So instead of depending
> on string matching add an optional possibility to associate a clock
> lookups with physical addresses. This also has the advantage that
> the lookups for devicetree based devices can be identical to the
> platform based devices.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/clkdev.c   |   47 +++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/clkdev.h |    3 +++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index 717fea5..40bc006 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -62,6 +62,32 @@ static struct clk *clk_find(const char *dev_id, const char *con_id)
>  	return clk;
>  }
>  
> +static struct clk *clk_find_physbase(struct device_d *dev, const char *con_id)
> +{
> +	struct clk_lookup *p;
> +	unsigned long start;
> +
> +	if (!dev || !dev->resource)
> +		return ERR_PTR(-ENOSYS);
this is broken

clk_get_sys(NULL, "toto") is a valid call

Best Regars,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
