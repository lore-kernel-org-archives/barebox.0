Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S39fa-0001KO-Hw
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 17:19:59 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E6BBCDC3272
 for <barebox@lists.infradead.org>; Thu,  1 Mar 2012 18:22:49 +0100 (CET)
Date: Thu, 1 Mar 2012 18:10:27 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120301171027.GT12248@game.jcrosoft.org>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330618889-11482-2-git-send-email-dimov@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330618889-11482-2-git-send-email-dimov@ronetix.at>
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
Subject: Re: [PATCH 2/3] pm9g45: enable MCI0
To: Asen Chavdarov Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 18:21 Thu 01 Mar     , Asen Chavdarov Dimov wrote:
> FIXME: part of or no data is written. File copy ends
> with message: "atmel_mci@atmel_mci0: command/data timeout"
> 
> Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
> ---
>  arch/arm/boards/pm9g45/init.c     |   17 ++++++++++++++++-
>  arch/arm/configs/pm9g45_defconfig |   34 +++++++++++++++++++++++++++++++---
>  2 files changed, 47 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
> index 9eba12a..257e5e2 100644
> --- a/arch/arm/boards/pm9g45/init.c
> +++ b/arch/arm/boards/pm9g45/init.c
> @@ -77,6 +77,21 @@ static void pm_add_device_nand(void)
>  	at91_add_device_nand(&nand_pdata);
>  }
>  
> +#if defined(CONFIG_MCI_ATMEL)
> +static struct atmel_mci_platform_data __initdata mci_data = {
> +	.bus_width	= 4,
> +	.wp_pin		= 0,
> +	.detect_pin	= AT91_PIN_PD6,
> +};
> +
> +static void add_device_mci(void)
> +{
> +	at91_add_device_mci(0, &mci_data);
> +}
> +#else
> +static void add_device_mci(void) {}
please the nale of the function board specifc

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
