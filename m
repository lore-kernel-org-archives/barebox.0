Delivery-date: Wed, 03 Sep 2025 09:18:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthkn-007Z5q-1z
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 09:18:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthkm-0001XM-F7
	for lore@pengutronix.de; Wed, 03 Sep 2025 09:18:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Gni/dCQvUpO7LFR/lE5qdyHh1ctFWqVNuo7FVhUdrI=; b=Vg3BKoLFCOSwL+/p2cXeTlmjHN
	LAAVIrJxQJjAuHtkt/agUXP0zuH7aXJFc5qWR9VyfOG0S3IRFoM0ZOLgb2pdcwwsHHtXDBz4CpBnp
	EdvDLNlP9ITpSCZxLuLYaXU97hX/F5rwtEAOv/P3FXZOYxFmvVv+wNDc0g65a7heypThvovKyqU7Y
	Jr9/yQ0vxfCt/4LGiklyHKro9wFY0RBPlxvsOAi62TyeeG+x/r0E3RKjmqZySBkKKH6xxG5yq6SzK
	pMe/TJxJ+MnTSHfqJMrzkGe5qOhk0UgyIelM2UA66oW7f27esRklmrjN7p4KXm13rU/UVj8EV6fKp
	d6aN6AdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthkG-00000005005-1z8N;
	Wed, 03 Sep 2025 07:17:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthhf-00000004yhz-1nAM
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 07:14:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uthhd-0000wQ-S9; Wed, 03 Sep 2025 09:14:45 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uthhd-003WPQ-2E;
	Wed, 03 Sep 2025 09:14:45 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uthhd-00HVtj-1p;
	Wed, 03 Sep 2025 09:14:45 +0200
Date: Wed, 3 Sep 2025 09:14:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: a.fatoum@pengutronix.de, barebox@lists.infradead.org
Message-ID: <aLfq5dZelMilBJBn@pengutronix.de>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-4-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250831035542.1623695-4-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_001447_468246_D1AD53C7 
X-CRM114-Status: GOOD (  23.58  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/7] arm: efi: add a generic efi machine.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, Aug 30, 2025 at 11:55:39PM -0400, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> add a generic arm64 machine that can select the CPU_V8 and the
> required efi payload minimal configs. this machine permits to have
> a clean arm64 efi payload, idealy we don't need the other machine
> that comes from multi arch since they execute code that is specific
> for the correspondig hardware. with this generic efi machine the
> barebox log shell is more clean. to get a pure clean efi payload
> you need to unselect all the other arch machines and keep only the
> EFI ARM64.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  arch/arm/Kconfig | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index cce71b50eb04..0a098440ddde 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -254,6 +254,18 @@ config ARCH_ZYNQMP
>  	select GPIOLIB
>  	select HAS_MACB
>  
> +config EFI_ARM64
> +	bool "EFI on ARM64"
> +	select CPU_V8
> +	select CPU_SUPPORTS_64BIT_KERNEL
> +	select HAVE_EFI_PAYLOAD
> +	select EFI_PAYLOAD
> +	select BOOTM_FITIMAGE
> +    select CLOCKSOURCE_EFI
> +    select DRIVER_VIDEO_EFI_GOP

Do we actually require this driver?

Nit: should be tabs here.

> +	depends on 64BIT
> +	default y if ARCH_MULTIARCH

No default y here please.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


