Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.98.mail-out.ovh.net ([188.165.35.94]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QZ0j1-0005Rg-C6
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 13:10:45 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id EE95F4B6C27
	for <barebox@lists.infradead.org>;
	Tue, 21 Jun 2011 15:10:18 +0200 (CEST)
Date: Tue, 21 Jun 2011 14:56:12 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110621125612.GV7881@game.jcrosoft.org>
References: <1308232556-12394-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1308232556-12394-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] macb: add support for board specific get_ethaddr function
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 15:55 Thu 16 Jun     , Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/include/mach/board.h |    2 ++
>  drivers/net/macb.c                      |    2 +-
>  2 files changed, 3 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index 89c1746..89caebb 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -21,6 +21,7 @@
>  #ifndef __ASM_ARCH_BOARD_H
>  #define __ASM_ARCH_BOARD_H
> 
> +#include <net.h>
>  #include <linux/mtd/mtd.h>
> 
>  void atmel_nand_load_image(void *dest, int size, int pagesize, int blocksize);
> @@ -47,6 +48,7 @@ void at91_add_device_nand(struct atmel_nand_data *data);
>  struct at91_ether_platform_data {
>  	unsigned int flags;
>  	int phy_addr;
> +	int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
can we find a generic way?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
