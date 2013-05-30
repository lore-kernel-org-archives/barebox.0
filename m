Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uhz4m-0002WX-AW
 for barebox@lists.infradead.org; Thu, 30 May 2013 09:23:16 +0000
Date: Thu, 30 May 2013 11:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130530092256.GA32299@pengutronix.de>
References: <1369741903-24988-5-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369741903-24988-5-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] twl6030: Set WR_S for VMMC
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, May 28, 2013 at 01:51:43PM +0200, Jan Weitzel wrote:
> After Reset VMMC goes to default VSEL. This is not a clean power cycle for
> some SD cards.
> Set flag WR_S for VMMC to avoid going to default VSEL.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/mci/twl6030.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/mci/twl6030.c b/drivers/mci/twl6030.c
> index 4a875bd..ad1043d 100644
> --- a/drivers/mci/twl6030.c
> +++ b/drivers/mci/twl6030.c
> @@ -21,6 +21,7 @@ static int twl6030_mci_write(u8 address, u8 data)
>  void twl6030_mci_power_init(void)
>  {
>  	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_VOLTAGE,
> +			TWL6030_VMMC_WR_S | 
>  			TWL6030_VMMC_VSEL_0 | TWL6030_VMMC_VSEL_2 |
>  			TWL6030_VMMC_VSEL_4);
>  	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_STATE,
> -- 
> 1.7.0.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
