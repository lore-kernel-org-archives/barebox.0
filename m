Delivery-date: Fri, 14 Jan 2022 18:08:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Q3Z-002EGj-9r
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 18:08:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Q3Y-0006Ya-2l
	for lore@pengutronix.de; Fri, 14 Jan 2022 18:08:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6cWa9v7YH58OH/ubPjSSdlHvWqWbFLZ6SXJzwg2h7pg=; b=o0bIuwMAyIsY34aUbA2C2kGCsv
	GiWziNTsS+eBOdxw0NX8KAwSpJX2LcemTEN+uyHHQwaVUMFj0ApniwVzhJ1YX0Yvu7Ew7pIaW4SaU
	FZYvCX0f+F7MDzzEDJtV4O0yBwmP5FJosZJLhqs14hWSm8pmG60QyW2Fv86fmuhzF0ZXAfw1YJ890
	oAK/QJYHGXPDasBSTpV7nxucTaDTXXcqmowfXuXubwtuYvRoTjaG57wHXXSbRbBSPv0GMiXJGCiWB
	49eANdQUj9odshJtRhF6mraN3SdUgX80LNJzPHxmFqG1jFCcEZlufH2UWwaW1X5n9MvIT9aJX04Lx
	mI6FvF5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Q2G-009uEt-Ll; Fri, 14 Jan 2022 17:06:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Q2C-009uES-66
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 17:06:42 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8Q27-0006OP-9S; Fri, 14 Jan 2022 18:06:35 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165456.10542-1-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f99cfd5d-f477-4564-c5e3-dac889b5c8b3@pengutronix.de>
Date: Fri, 14 Jan 2022 18:06:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220114165456.10542-1-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_090640_262953_78924C2C 
X-CRM114-Status: GOOD (  19.27  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/13] drivers: add soc hierarchy properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules,

On 14.01.22 17:54, Jules Maselbas wrote:
> From: Clement Leger <cleger@kalray.eu>
> 
> We will add kvx driver in this folder to create a proper hierarchy.

This won't apply cleanly. You need to rebase.

> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/Kconfig     | 2 +-
>  drivers/soc/Kconfig | 5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/soc/Kconfig
> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index dbdf3c06f5..d66714af9a 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -42,7 +42,7 @@ source "drivers/fpga/Kconfig"
>  source "drivers/phy/Kconfig"
>  source "drivers/crypto/Kconfig"
>  source "drivers/memory/Kconfig"
> -source "drivers/soc/imx/Kconfig"
> +source "drivers/soc/Kconfig"
>  source "drivers/nvme/Kconfig"
>  source "drivers/ddr/Kconfig"
>  source "drivers/power/Kconfig"
> diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
> new file mode 100644
> index 0000000000..d78f13f3f8
> --- /dev/null
> +++ b/drivers/soc/Kconfig
> @@ -0,0 +1,5 @@
> +menu "SoC drivers"
> +
> +source "drivers/soc/imx/Kconfig"
> +
> +endmenu
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

