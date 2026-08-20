Delivery-date: Thu, 20 Aug 2026 09:15:21 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwwzg-0059F0-1r
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 09:15:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C89A6201B9A
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 09:15:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SipeuyZ8;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BcCyjfXWsstQLhDG0THt6Z4FGHhOcp7qHGut+M5hbUc=; b=SipeuyZ8s+Vi56zOl99I3XzNeq
	CkhNodEAPeUO9Jipolc7w7bcTQ3HfdU+OU9HMSCVOuGVeBViCdNwX8OyZeE4W356ESITx8IqX+PkA
	yUpZ5Xl4Wz/QbuoZCaAamwbxuwl4ULfwGaF2MRpmfrLXiN4ix8PVzTIfGO9BNb0TJT4UdpBZmrrum
	/EG0hWjozTYOfvnasLQCuKu3v5mdAjyV1E7WmwcwoDdplNbfhRMDnQXvNojpQW9NTNz/fMp/0TqaW
	0sV3Nt/M0CpKSziClcWl1zj2XXXM4JsrZBdGpTka4P1/jzfQLsgP94BbxS65qtO00JxAtzBZRlXDC
	GrWIfBUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwow-0000000B00v-3m94;
	Thu, 20 Aug 2026 07:04:14 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwot-0000000B00Y-1xet
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 07:04:13 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E230F2005C5;
	Thu, 20 Aug 2026 09:04:07 +0200 (CEST)
Message-ID: <a361d161-65c7-446d-bbbc-8e870923df9c@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 4/8] drivers: arm_architected_timer: refactor for pbl
 compatibility
To: "Stefan Kerkmann" <s.kerkmann@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-4-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
 <20260817-feature-pbl-get-time-ns-v3-4-9874c1438855@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Aug 2026 07:04:07 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_000411_664912_6DAB6CC0 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-17 16:01, Stefan Kerkmann wrote: > All ARMv8-A
   cores implement the 64bit wide generic timer CNTPCT[1]. Thus > the driver
   is the candidate for all AARCH64 SoCs to implement > PBL_CLOCKSOURCE [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: n56ybeh4dbs3rft1xxtx4nim17ggf11a
X-Spamd-Result: default: False [-3.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: C89A6201B9A

On 2026-08-17 16:01, Stefan Kerkmann wrote:
> All ARMv8-A cores implement the 64bit wide generic timer CNTPCT[1]. Thus
> the driver is the candidate for all AARCH64 SoCs to implement
> PBL_CLOCKSOURCE compatibilty.
>=20
> There is one catch though: the CNTFRQ_EL0 register[2] must be programmed
> by the bootrom, barebox or the tf-a before the `arm_arch_timer_init`
> call or the clocksource setup will return with -ENODEV. A later
> re-initialization is also possible by calling `arm_arch_timer_init`
> again.
>=20
> [1]: See "ARM Architecture Reference Manual for A-profile architecture
> (rev L.a)", chapter D12 "The Generic Timer in AArch64 state"
> [2]: See "ARM Architecture Reference Manual for A-profile architecture
> (rev L.a)", chapter D12.1.2.1 "Initializing and reading the system
> effective frequency"
>=20
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  .../include/asm/hardware/arm_architected_timer.h   | 21 ++++++++++++++++=
+++
>  drivers/clocksource/Makefile                       |  2 +-
>  drivers/clocksource/arm_architected_timer.c        | 24 ++++++++++++++--=
------
>  3 files changed, 38 insertions(+), 9 deletions(-)
>=20
> diff --git a/arch/arm/include/asm/hardware/arm_architected_timer.h b/arch=
/arm/include/asm/hardware/arm_architected_timer.h
> new file mode 100644
> index 0000000000..e0c1fd84fd
> --- /dev/null
> +++ b/arch/arm/include/asm/hardware/arm_architected_timer.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __ASM_ARM_HARDWARE_ARCH_TIMER_H
> +#define __ASM_ARM_HARDWARE_ARCH_TIMER_H
> +
> +#include <linux/types.h>
> +
> +/**
> + * arm_arch_timer_init() - Initialize the ARM architected timer as global
> + * clocksource
> + * @cntfrq: The timer frequency, if zero the frequency is read from the
> + *          CNTFRQ_EL0 register
> + *
> + * This function is meant to be called in a PBL constructor or in the dr=
iver
> + * probe function.
> + *
> + * Return: 0 on success, -ENODEV if the timer frequency can not be deter=
mined
> + */
> +int arm_arch_timer_init(uint64_t cntfrq);
> +
> +#endif
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index dff8255650..0c92477247 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -13,7 +13,7 @@ obj-$(CONFIG_CLOCKSOURCE_ORION)   +=3D orion.o
>  obj-$(CONFIG_CLOCKSOURCE_UEMD)    +=3D uemd.o
>  obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+=3D rk_timer.o
>  obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) +=3D timer-atmel-pit.o
> -obj-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) +=3D arm_architected_tim=
er.o
> +obj-pbl-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) +=3D arm_architected=
_timer.o
>  ifneq ($(CONFIG_CPU_V8),y)
>  CFLAGS_arm_architected_timer.o :=3D -march=3Darmv7-a
>  endif
> diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocks=
ource/arm_architected_timer.c
> index daced94c0e..ea5f5b8e05 100644
> --- a/drivers/clocksource/arm_architected_timer.c
> +++ b/drivers/clocksource/arm_architected_timer.c
> @@ -9,6 +9,7 @@
>  #include <linux/clk.h>
>  #include <io.h>
>  #include <asm/system.h>
> +#include <asm/hardware/arm_architected_timer.h>
> =20
>  static uint64_t arm_arch_clocksource_read(void)
>  {
> @@ -22,22 +23,29 @@ static struct clocksource cs =3D {
>  	.priority =3D 70,
>  };
> =20
> -static int arm_arch_timer_probe(struct device *dev)
> +int arm_arch_timer_init(uint64_t cntfrq)
>  {
> -	u32 cntfrq;
> -	int ret;
> -
> -	/* Some platforms don't set CNTFRQ_EL0 before barebox */
> -	ret =3D of_property_read_u32(dev->of_node, "clock-frequency", &cntfrq);
> -
> -	if (ret)
> +	if (!cntfrq)
>  		cntfrq =3D get_cntfrq();

I wonder if we should just drop the cntfrq argument. All users call
set_cntfrq() before calling this, so get_cntfrq() should return the
correct value and we can rely on it.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



