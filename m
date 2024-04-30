Delivery-date: Tue, 30 Apr 2024 13:49:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1lzE-00AIHc-0g
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 13:49:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1lzD-0006Ue-Ik
	for lore@pengutronix.de; Tue, 30 Apr 2024 13:49:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A8dVqJrVKn6Ns3xhzkbhkVBPdAIj8LB0kMveb0jCBdw=; b=Y4pcyCstopXBVoOmcRztEubub0
	KZyak2ygCF6+BeCjF9VTsSP86ltKwovMrMuBUNm9UYurW2wN2l7gJVvOBFtUQ7CdeYZhnXAlUrzKv
	ArVJbaGhHG0rNiCUgiiXB1Bw8GmQnbjVmYepkk0/wuRbAYqH1TwzwW4bgSknpwo9zKjOujX9wd3OT
	IoSKdLI4Wbc4jgcK2J3u+CsteEFc3J8AIweSB30MEcGsjh++TTFe/Sums9o8rAVmZzY03KyGjhrNw
	wXTZjKU8r0ZpdOYg7m7IGnf8zyBlbDchhHZ8ZfCC0lTbeAJCp4/5mArmkrnQbgGyhYTxKtbxuBBRf
	MeAqu7Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lyn-00000006EBT-1OmZ;
	Tue, 30 Apr 2024 11:49:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lyk-00000006E9k-0Qjn
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 11:48:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1s1lyh-0006ME-BG
	for barebox@lists.infradead.org; Tue, 30 Apr 2024 13:48:55 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1s1lyg-00F9bf-Um
	for barebox@lists.infradead.org; Tue, 30 Apr 2024 13:48:54 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1s1lyg-004AM0-2n
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 13:48:54 +0200
Date: Tue, 30 Apr 2024 13:48:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20240430114854.tnjlp3ptfwl75tzs@pengutronix.de>
References: <20240430112941.3207284-1-m.felsch@pengutronix.de>
 <20240430112941.3207284-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240430112941.3207284-2-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_044858_180004_9AB5FCAF 
X-CRM114-Status: GOOD (  20.72  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX8M: add support to handle ROM SError
 ERR050350
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-04-30, Marco Felsch wrote:
> This ports U-Boot commit:
> 
> | commit 2f3c92060dcd6bc9cfd3e2e344a3e1745ca39f09
> | Author: Peng Fan <peng.fan@nxp.com>
> | Date:   Thu Jul 9 13:39:26 2020 +0800
> |
> |     imx8m: workaround ROM serror
> |
> |     ROM SError happens on two cases:
> |
> |     1. ERR050342, on iMX8MQ HDCP enabled parts ROM writes to GPV1 register, but
> |     when ROM patch lock is fused, this write will cause SError.
> |
> |     2. ERR050350, on iMX8MQ/MM/MN, when the field return fuse is burned, HAB
> |     is field return mode, but the last 4K of ROM is still protected and cause
> |     SError.
> |
> |     Since ROM mask SError until ATF unmask it, so then ATF always meets the
> |     exception. This patch works around the issue in SPL by enabling SPL
> |     Exception vectors table and the SError exception, take the exception
> |     to eret immediately to clear the SError.
> |
> |     Signed-off-by: Ye Li <ye.li@nxp.com>
> |     Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> Other than U-Boot we don't support exceptions in PBL and therefore we
> can handle it simpler by installing an dummy exception table which does
> nothing. The table gets overriden by TF-A later on anyway.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Hi all,
> 
> I'm not sure if the relocation should be done within the erratum
> handler or if we should move it into the lowlevel code per default for
> all i.MX8M platforms since the board files call it anyway after the
> lowlevel init. In the later case this would be an separate patch to drop
> the pattern:
> 
>  lowlevel_setup();
>  relocate_to_current_adr();
> 
> from the board files.

...

> diff --git a/arch/arm/mach-imx/errata.c b/arch/arm/mach-imx/errata.c
> new file mode 100644
> index 000000000000..ef8de91a9278
> --- /dev/null
> +++ b/arch/arm/mach-imx/errata.c
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <mach/imx/errata.h>
> +
> +#ifdef CONFIG_CPU_V8
> +
> +extern unsigned long early_imx8m_vectors;
> +
> +void erratum_050350_imx8m(void)
> +{
> +	if (current_el() != 3)
> +		return;
> +
> +	relocate_to_current_adr();

If I use:

	extern char early_imx8m_vectors[];

	addr = runtime_address(early_imx8m_vectors);

it does work without relocation too. This seems to fit better here. I
will send a v2 if you're okay with that.

Regards,
  Marco

> +
> +	asm volatile("msr vbar_el3, %0" : : "r" (&early_imx8m_vectors) : "cc");
> +	asm volatile("msr daifclr, #4;isb");
> +}


