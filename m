Delivery-date: Mon, 03 May 2021 12:53:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWCF-0002so-UI
	for lore@lore.pengutronix.de; Mon, 03 May 2021 12:53:03 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWCF-0001j6-19
	for lore@pengutronix.de; Mon, 03 May 2021 12:53:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bQGC67XNklGrxJphkESxwgsjKrJkC8LA/7z+M21JQm0=; b=Bqn355KgAbuGOPXDXKBPcwCts
	ukX4iAVfJYhzHq7ctnYVJzqOjqmKHVehNOZLw9txzAtzqV2zDaNqmaPG1/dQGBjpGFhP8eG8HuZEn
	jD8Qo4lmSWgTbTvhqM5Zxoj5gTrDCCDg4sZ6Z2cEWVWDFWNkOJqFTI/SU+B2uxCANCN+ofTtdKlI/
	9dh19UQwdK2ZH3o923vusDY8FDsN4Qtm5SpIc7rVgYOrfYoDO47tawLSjH77O0DWtkw0uGmk+49ru
	ab/2IQnSOUunfRD/YFci9iRWVyEH0uaYW+qB6qzYbtvkiKWjLwK4C6O2gty4WgH6P3WAf9ZC4SBOI
	TYjt6cizg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWAy-00Dhk1-SW; Mon, 03 May 2021 10:51:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWAt-00Dhjs-Gy
 for barebox@desiato.infradead.org; Mon, 03 May 2021 10:51:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ya1AGLTZ3Frb/mRVy1ySfAf8GZh06rqv8SMFZulEY5M=; b=BMcAo8ufLxz1UDmHmBcF+k82Hm
 Vj9rUm+NmyjMTJkO9VukIevbSxsfMMB6boyQPQEGhxYLJ+UHm4Vs7t+TbMLzyURFn2fAH8xRJbf0K
 L2Co0wL0pGRf3lg1X3D7xnqxToAcHSRgazG3RKe/DCzmf+h35YAuy/GY0yjiMJNVfS2lkNsFyqqmA
 kHzReEKC7cw8P1abEAEvqtLW34GRPOqQKLcHokynXfL8GEaagb7berSvHJPxZH1rHfhg9tY4yDAGK
 CUbKBSF6uSptLFLEnuPKi42oVlsQIv7hDpW90M2UzRxMTbwejKRCzK/XC/3tS3U84HI3OtwiGggve
 glQ+sD0g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWAq-002zKn-K0
 for barebox@lists.infradead.org; Mon, 03 May 2021 10:51:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWAn-0001Vt-UY; Mon, 03 May 2021 12:51:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWAn-0006sw-LE; Mon, 03 May 2021 12:51:33 +0200
Date: Mon, 3 May 2021 12:51:33 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210503105133.GW19819@pengutronix.de>
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
 <20210423142829.29468-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423142829.29468-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:50:06 up 74 days, 14:13, 103 users,  load average: 0.03, 0.07,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_035136_685767_60315F33 
X-CRM114-Status: GOOD (  25.47  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/6] ARM: at91: xload-mmc: add
 sama5d3_atmci_start_image() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 23, 2021 at 04:28:25PM +0200, Oleksij Rempel wrote:
> This helper should be called from the xloader
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/mach-at91/Kconfig              |  2 +
>  arch/arm/mach-at91/include/mach/xload.h |  2 +
>  arch/arm/mach-at91/xload-mmc.c          | 51 +++++++++++++++++++++++++
>  3 files changed, 55 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 52eefc7361..0fc8d25111 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -45,6 +45,7 @@ config HAVE_AT91_DDRAMC
>  
>  config AT91_MCI_PBL
>  	bool
> +	depends on MCI_ATMEL_PBL
>  	depends on MCI_ATMEL_SDHCI_PBL
>  	default y
>  
> @@ -599,6 +600,7 @@ config MACH_MICROCHIP_KSZ9477_EVB
>  	bool "Microchip EVB-KSZ9477 Evaluation Kit"
>  	select SOC_SAMA5D3
>  	select OFDEVICE
> +	select MCI_ATMEL_PBL
>  	select COMMON_CLK_OF_PROVIDER
>  	help
>  	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
> diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
> index 9201e7d0b7..bbc70af210 100644
> --- a/arch/arm/mach-at91/include/mach/xload.h
> +++ b/arch/arm/mach-at91/include/mach/xload.h
> @@ -5,6 +5,8 @@
>  #include <pbl.h>
>  
>  void __noreturn sama5d2_sdhci_start_image(u32 r4);
> +void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
> +					  unsigned int slot);
>  
>  int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
> index e9edeccb7f..e865f237ef 100644
> --- a/arch/arm/mach-at91/xload-mmc.c
> +++ b/arch/arm/mach-at91/xload-mmc.c
> @@ -3,6 +3,7 @@
>  #include <mach/sama5_bootsource.h>
>  #include <mach/hardware.h>
>  #include <mach/sama5d2_ll.h>
> +#include <mach/sama5d3_ll.h>
>  #include <mach/gpio.h>
>  #include <linux/sizes.h>
>  #include <asm/cache.h>
> @@ -44,6 +45,23 @@ static const struct sdhci_instance {
>  	},
>  };
>  
> +static const struct atmci_instance {
> +	void __iomem *base;
> +	unsigned id;
> +	u8 periph;
> +	s8 pins[15];
> +} atmci_instances[] = {

Renamed this to sama5d3_atmci_instances while applying as for example
sama5d4 has different base addresses for the same hardware.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

