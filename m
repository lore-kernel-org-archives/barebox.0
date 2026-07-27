Delivery-date: Mon, 27 Jul 2026 15:32:28 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woLRT-003Rcj-2P
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 15:32:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 232E020192C
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 15:32:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zBIZf9rv;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=cO696LNQOZ1LbyU5S3SYWTLMPFmlTUVBHqGBIdAZnl8=; b=zBIZf9rvLu5+LhcI3MfuYVwNT8
	7neO5+WvR9pZ/qu9JNOQxCvT5WOSxvTNriaOBuUeZctpxA4OiSXSx5YceY0CB+DFD9FKe7oZI6JT4
	JGldzrOqo4HUNft1FD8R6bfbtT3TbcD4gPGVcqOBKQlmj665pCl0YS8oAjdE1ZQnp/hs/yHlP4mb9
	ImGS/hUqT3a6r2jZEhTiJGR8DVdyDaioaY20H/oAb9KbwC1Ql1FI/tGFm+lDJQtSE5f8kOdhvKAE5
	1yw5Q6WSLUKxWjPgKtjo1/qCeQEJc66LEWN5WaCCa5PG/EyG3UvoTNTDagI2nIAws+GroJP/ap8TU
	+wy6nXPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLQA-00000002rak-0hNu;
	Mon, 27 Jul 2026 13:31:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLQ7-00000002raN-1WBG
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 13:31:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6B935202228;
	Mon, 27 Jul 2026 15:30:57 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woLQ1-001Yqz-13;
	Mon, 27 Jul 2026 15:30:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woLQ1-00000007IaB-0w2q;
	Mon, 27 Jul 2026 15:30:57 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 02/19] ARM: mvebu: add lowlevel support for Netgear
 RN102
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260723-rn102-rn104-series-v1-2-7698d25df866@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jul 2026 13:30:56 +0000
Message-Id: <E1woLQ1-00000007IaB-0w2q@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_063103_557751_7A869C85 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > --- > arch/arm/boards/netgear-rn102/lowlevel.c
    | 49 ++++++++++++++++++++++++++++++++ > 1 file changed [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 232E020192C
X-Rspamd-Server: mx1
X-Stat-Signature: 45kgyhami5zr7mm355gafec6nzxhhae4

On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> ---
>  arch/arm/boards/netgear-rn102/lowlevel.c | 49 ++++++++++++++++++++++++++=
++++++
>  1 file changed, 49 insertions(+)
>=20
> diff --git a/arch/arm/boards/netgear-rn102/lowlevel.c b/arch/arm/boards/n=
etgear-rn102/lowlevel.c
> new file mode 100644
> index 0000000000..11130eabbc
> --- /dev/null
> +++ b/arch/arm/boards/netgear-rn102/lowlevel.c
> @@ -0,0 +1,49 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/mvebu/lowlevel.h>
> +#include <mach/mvebu/barebox-arm-head.h>
> +#include <mach/mvebu/armada-370-xp-regs.h>
> +
> +extern char __dtb_armada_370_rn102_bb_start[];
> +
> +#define INTERNAL_REG_BASE_ADDR	0x20080
> +
> +static __always_inline void mvebu_remap_registers(void)
> +{
> +	void __iomem *base =3D mvebu_get_initial_int_reg_base();
> +
> +	writel(MVEBU_REMAP_INT_REG_BASE, base + INTERNAL_REG_BASE_ADDR);
> +}
> +
> +static unsigned long armada_370_xp_memory_find(void)
> +{
> +	unsigned long mem_size =3D 0;
> +
> +	for (int cs =3D 0; cs < 4; cs++) {
> +		u32 ctrl =3D readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
> +
> +		/* Skip non-enabled CS */
> +		if ((ctrl & DDR_SIZE_ENABLED) !=3D DDR_SIZE_ENABLED)
> +			continue;
> +
> +		mem_size +=3D (ctrl | ~DDR_SIZE_MASK) + 1;
> +	}
> +
> +	return mem_size;
> +}
> +
> +ENTRY_FUNCTION_MVEBU(start_netgear_rn102, r0, r1, r2)
> +{
> +    void *fdt;
> +
> +    arm_cpu_lowlevel_init();
> +=09
> +	fdt =3D __dtb_armada_370_rn102_bb_start +
> +		get_runtime_offset();
> +
> +	mvebu_remap_registers();
> +	barebox_arm_entry(0, armada_370_xp_memory_find(), fdt);
> +	// armada_370_xp_barebox_entry(fdt);

Why can't you use armada_370_xp_barebox_entry()? I assume that wrongly
detects the amount of memory. If that's the case the preferred way would
be to fix the SDRAM detection code. If that's not feasible, please leave
an explanation in the code why it doesn't work and drop the commented
out call.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


