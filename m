Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3WIR-000529-Jt
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 17:29:36 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E812BDC3DE2
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 18:32:29 +0100 (CET)
Date: Fri, 2 Mar 2012 18:19:54 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120302171954.GE12248@game.jcrosoft.org>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-2-git-send-email-dimov@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330707323-8021-2-git-send-email-dimov@ronetix.at>
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
Subject: Re: [PATCH v2 2/4] pm9g45: fix Ethernet
To: Asen Chavdarov Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 18:55 Fri 02 Mar     , Asen Chavdarov Dimov wrote:
> Enable PHY clock.
> 
> Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
> ---
> since v1:
> 	- phy_init changed to pm9g45_phy_init
> 	- pm9g45_phy_init becamos void and "return 0" is removed
> 	- removed manual clock enabling
> ---
>  arch/arm/boards/pm9g45/init.c |   13 +++++++++++++
>  1 files changed, 13 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
> index 480c751..92d010f 100644
> --- a/arch/arm/boards/pm9g45/init.c
> +++ b/arch/arm/boards/pm9g45/init.c
> @@ -82,6 +82,17 @@ static struct at91_ether_platform_data macb_pdata = {
>  	.phy_addr = 0,
>  };
>  
> +static void pm9g45_phy_init(void)
> +{
> +	/*
> +	 * PD2 enables the 50MHz oscillator for Ethernet PHY
> +	 * 1 - enable
> +	 * 0 - disable
> +	 */
> +	at91_set_gpio_output(AT91_PIN_PD2, 1);
> +	at91_set_gpio_value(AT91_PIN_PD2, 1);
> +}
> +
>  static int pm9g45_mem_init(void)
>  {
>  	at91_add_device_sdram(128 * 1024 * 1024);
> @@ -92,7 +103,9 @@ mem_initcall(pm9g45_mem_init);
>  
>  static int pm9g45_devices_init(void)
>  {
> +
please drop the empty line

otherwise

Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
