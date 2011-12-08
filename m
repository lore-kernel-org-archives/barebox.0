Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYeti-0003BG-QK
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 14:24:32 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A17A9104E591
 for <barebox@lists.infradead.org>; Thu,  8 Dec 2011 15:24:39 +0100 (CET)
Date: Thu, 8 Dec 2011 15:20:36 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111208142036.GB23884@game.jcrosoft.org>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
 <1323262387-8012-11-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323262387-8012-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 10/11] arm at91sam9260: Add missing
 AT91SAM_ETX2_ETX3_ALTERNATIVE define
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:53 Wed 07 Dec     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-at91/include/mach/board.h |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index 546fe90..5e23688 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -51,6 +51,7 @@ void at91_add_device_nand(struct atmel_nand_data *data);
>  #define AT91SAM_ETHER_MII		(0 << 0)
>  #define AT91SAM_ETHER_RMII		(1 << 0)
>  #define AT91SAM_ETHER_FORCE_LINK	(1 << 1)
> +#define AT91SAM_ETX2_ETX3_ALTERNATIVE	(2 << 0
this will not work too

(1 << 1) = (1 << 0)


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
