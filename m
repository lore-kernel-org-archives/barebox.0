Delivery-date: Thu, 02 Jun 2022 08:49:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nweeI-000Hdy-Kj
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 08:49:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nweeH-0006XJ-3c
	for lore@pengutronix.de; Thu, 02 Jun 2022 08:49:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bWGRWj8p3WNcEsiNCeHxLdXRiLDfAEHV7ddYLPN7khI=; b=wTgQgiLQ7ZvqLzB51cQBpBGvHt
	sbnKRsAvUf6c+CLJQ0gTFmBTa+DBfWVWI3qcGIRYfq5kpglPAELQNeW+DlrQZj3+Q43nghxpRTZ+d
	OF4i02iTXDf0iKxL3mBbLb5YdrLPa9fwdik+Qy2HXx0RF77yQJDWI/o6O162iJmJ8um3wmzSXK/vm
	660Tj1E387PO8KARzlho+XrOnn5Gif1tAiMT6ZRb7J5TyKAQyKVd8PDs8o7E4DtFhDTOo5bN6xJqX
	IV0+mKEGncaPUrrTRtdguO9R0mxy5gX1vtrMboa7sV1eGjqJIn6SXcPsXG4jdewIAQwJH5Q7nHgsT
	dwUCV4hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwecW-001qSG-7q; Thu, 02 Jun 2022 06:47:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwecG-001qJR-RD
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 06:47:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nwecB-0006Oi-2L; Thu, 02 Jun 2022 08:47:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nwecA-0007oW-Pk; Thu, 02 Jun 2022 08:47:26 +0200
Date: Thu, 2 Jun 2022 08:47:26 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220602064726.GD1615@pengutronix.de>
References: <20220601060226.3756-1-eagle.alexander923@gmail.com>
 <20220601060226.3756-3-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220601060226.3756-3-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_234732_940845_C9C66958 
X-CRM114-Status: GOOD (  18.90  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] ARM: boards: Fix unconditional compilation of
 imx51-babbage directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 01, 2022 at 09:02:23AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index d303999614..042b27a804 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -47,7 +47,7 @@ obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
>  obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
>  obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3ds/
>  obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3ds/
> -obj-y						+= freescale-mx51-babbage/
> +obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-babbage/

This change was intentional. The board code exports imx51_babbage_power_init()
which is used by the zii-imx51-rdu1 board code as well.

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

