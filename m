Delivery-date: Tue, 18 Mar 2025 12:15:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUvB-0010y8-2v
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:15:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUvA-0004ci-PG
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:15:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajkqwE5gjEUMLdXybgoWXUHdNHN7TFFNakE8RpUzrLs=; b=SudttgIbtduLsvjozZv1umab/l
	h5jhL/5E/NNdY67/C3xPjFOodWo/LzSlleS/bdXDhf0x+F5hm+Hpa4onQMA2BkTxGNU/GB8nnoGEu
	Dk2zzklyjRdenfF3OdMmJT6HCiHP9DQ/WaN4r+TlV1yWVj236vhdTM4VLW7KOOauyKpOZM7u8KR65
	i1FawsVoc+QBjHr+XOz/p7it07bINRm48Mv+YJi5CtJBRikTw8fZp944rN7ZprhSKxKyHFADqufpO
	cwoHymoroL5gCgK8ucwINlR/LFmEXOtwcGA6227vDcH4QLHXn71uvFEx8Qy+yTR9zAjjcfOfdQdZF
	qRYKQzeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUui-00000005foc-2srf;
	Tue, 18 Mar 2025 11:15:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUmr-00000005eAd-1YkX
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:07:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUmp-0003BT-R8; Tue, 18 Mar 2025 12:07:07 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUmp-000PrK-0i;
	Tue, 18 Mar 2025 12:07:07 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUmp-0030CN-1e;
	Tue, 18 Mar 2025 12:07:07 +0100
Date: Tue, 18 Mar 2025 12:07:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z9lT26AVZGa65OWT@pengutronix.de>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
 <20250318082507.419785-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318082507.419785-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_040709_407968_69030BF2 
X-CRM114-Status: GOOD (  23.52  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] ARM: qemu: mask data aborts during AMBA
 identification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 18, 2025 at 09:25:07AM +0100, Ahmad Fatoum wrote:
> The barebox FIT image target is meant as an easy way to load barebox
> second stage from other bootloaders.
> 
> Doing so with U-Boot 2025.01 compiled for qemu_arm64_defconfig
> currently leads to a crash when accessing the PL061 GPIO controller
> device for identification.
> 
> It seems that U-Boot (or TF-A, which wasn't included in my setup)
> should have done some initial setup to allow access to the PL061.
> 
> barebox doesn't even have a driver for the peripheral and loading
> barebox directly with -kernel works. In both cases, barebox runs in EL1.
> 
> Let's thus workaround the issue on the barebox side by using the new
> CONFIG_ARM_AMBA_DABT_MASK option to turn the crash into an error
> message.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index f5f9f3828782..7d46dcfb63dc 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -282,6 +282,7 @@ config BOARD_ARM_VIRT
>  	select BOARD_GENERIC_DT
>  	select BOARD_QEMU_VIRT
>  	select OF_OVERLAY
> +	select ARM_AMBA_DABT_MASK

Ah, ok. You select the option where you anticipate that it's useful.
Should have read this patch before commenting on #3.

Fine with me then.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


