Delivery-date: Mon, 08 Aug 2022 14:37:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL20j-00GARf-1L
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 14:37:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL20j-0003kQ-Lj
	for lore@pengutronix.de; Mon, 08 Aug 2022 14:37:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tzRJh2X1X3Idy1loHzkVLn+I/z2nSAdIefDvi4xcvW0=; b=VI1ECR7qKn7iPxzP4spgoOV3Uy
	bEbu2e1Hq5hDWx8A77BSr8eFHiyb+szH8iN3/62U+5zbenrCrMmCj4xw3+xDJziqTrVaAmaZMQBxO
	G7/huAVGHQctSe7yiPD3htgs/Ash2ZklboK/UmgISwDNsaXQXAOfl471Oq/kcb3SSPXrwLJl/VPPA
	7DBZV1o9CyWwLVz0nU2YZp1mQGU+m/KJ17tDi3Qzfmm1uGUQbqEoUtMGpI2fN1XyMYiMQzaoSF+JZ
	qbloijqDC1bvZxolsQQ5GhCR1MvsXtiRZA0o/ht+0/KlLh6S0tiC2kn9HX3YhOc2Fgl+/IRZ5ik69
	FLJMc8VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1zW-00Dkrd-9Z; Mon, 08 Aug 2022 12:36:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1zM-00Dko7-EE
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 12:36:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1zK-0003Xp-Vv; Mon, 08 Aug 2022 14:36:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1zK-0000pz-MU; Mon, 08 Aug 2022 14:36:06 +0200
Date: Mon, 8 Aug 2022 14:36:06 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808123606.GD31528@pengutronix.de>
References: <20220805085314.3404920-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805085314.3404920-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_053608_516170_2E25A7AC 
X-CRM114-Status: GOOD (  20.15  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] gitignore: add device tree blobs to top-level
 .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 10:53:13AM +0200, Ahmad Fatoum wrote:
> We have device trees outside of the usual directories, e.g. for
> overlays, so move the .gitignore rule to top-level.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .gitignore                           | 2 ++
>  arch/arm/boards/qemu-virt/.gitignore | 3 ---
>  arch/arm/dts/.gitignore              | 1 -
>  arch/mips/dts/.gitignore             | 1 -
>  arch/openrisc/dts/.gitignore         | 1 -
>  arch/riscv/dts/.gitignore            | 1 -
>  arch/sandbox/dts/.gitignore          | 1 -
>  7 files changed, 2 insertions(+), 8 deletions(-)
>  delete mode 100644 arch/arm/boards/qemu-virt/.gitignore
>  delete mode 100644 arch/arm/dts/.gitignore
>  delete mode 100644 arch/mips/dts/.gitignore
>  delete mode 100644 arch/riscv/dts/.gitignore
>  delete mode 100644 arch/sandbox/dts/.gitignore

Applied, thanks

Sascha

> 
> diff --git a/.gitignore b/.gitignore
> index cb87e9314f40..dd36d5083b17 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -35,6 +35,8 @@
>  *.symtypes
>  *.tab.[ch]
>  Module.symvers
> +*.dtb
> +*.dtb.*
>  
>  #
>  # Top-level generic files
> diff --git a/arch/arm/boards/qemu-virt/.gitignore b/arch/arm/boards/qemu-virt/.gitignore
> deleted file mode 100644
> index 3e3932a3bfba..000000000000
> --- a/arch/arm/boards/qemu-virt/.gitignore
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -
> -*.dtb*
> diff --git a/arch/arm/dts/.gitignore b/arch/arm/dts/.gitignore
> deleted file mode 100644
> index 077903c50a26..000000000000
> --- a/arch/arm/dts/.gitignore
> +++ /dev/null
> @@ -1 +0,0 @@
> -*dtb*
> diff --git a/arch/mips/dts/.gitignore b/arch/mips/dts/.gitignore
> deleted file mode 100644
> index 077903c50a26..000000000000
> --- a/arch/mips/dts/.gitignore
> +++ /dev/null
> @@ -1 +0,0 @@
> -*dtb*
> diff --git a/arch/openrisc/dts/.gitignore b/arch/openrisc/dts/.gitignore
> index 077903c50a26..e69de29bb2d1 100644
> --- a/arch/openrisc/dts/.gitignore
> +++ b/arch/openrisc/dts/.gitignore
> @@ -1 +0,0 @@
> -*dtb*
> diff --git a/arch/riscv/dts/.gitignore b/arch/riscv/dts/.gitignore
> deleted file mode 100644
> index 077903c50a26..000000000000
> --- a/arch/riscv/dts/.gitignore
> +++ /dev/null
> @@ -1 +0,0 @@
> -*dtb*
> diff --git a/arch/sandbox/dts/.gitignore b/arch/sandbox/dts/.gitignore
> deleted file mode 100644
> index 077903c50a26..000000000000
> --- a/arch/sandbox/dts/.gitignore
> +++ /dev/null
> @@ -1 +0,0 @@
> -*dtb*
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


