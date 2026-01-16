Delivery-date: Fri, 16 Jan 2026 09:16:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf0E-001tXg-24
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:16:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf0D-0004zw-Jf
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:16:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u2xTo9ToH6N1z4EpBJXfnG6ZionnualSD/rvayQKiwc=; b=mAiWukGZkVsFbtEZAObyxV8mmR
	UzdkpTl0hFr1AEZL+mqCeaTPwlcFs6hCvx2PR/+52SkNTY4o81G+uYjFJhT1xUCLFpM+/EO6J3pch
	aWP14zeNX6PyczHov/HzG1lRjKJcKgb5YgWQ3IYUgcG4/d4EPJK+7Si7lIcB3RXZex2GkpjcV4SNT
	Tkc/YeCxl88geNSrrUurFizluf4mL7najDykGzRG8eztUDkRaIhFN5ChX0ioOj5AgF1m0ofAoPkff
	BXUVqDM/n2mItg3MYHFW6u1+AYZ+yXzWrPJRLMijGSMYzluc8cOBbqvr2bxN3Gol8w3xB0Gy3LAgw
	L4JAaqTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgezW-0000000Dk5J-0V0f;
	Fri, 16 Jan 2026 08:15:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgezH-0000000Dk3a-2Sd6
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:15:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgezG-0004lv-0R; Fri, 16 Jan 2026 09:15:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgezG-000t6E-1Y;
	Fri, 16 Jan 2026 09:15:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgezF-00000005hYw-3BD2;
	Fri, 16 Jan 2026 09:15:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
Message-Id: <176855131775.1359066.6049830978127508766.b4-ty@pengutronix.de>
Date: Fri, 16 Jan 2026 09:15:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001520_770269_011707FF 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/23] Improve OP-TEE handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Nov 2025 21:34:40 +0100, Marco Felsch wrote:
> by this patchset I want to improve the current barebox OP-TEE handling.
> 
> Currently there are many paths which do all have their own pitfalls.
> 
>  - ARM (i.MX6, i.MX6UL(L)):
>    - bootm OP-TEE loading (deprecated)
>    - early boot loading:
>      Barebox and OP-TEE make use of a 'magic' FDT memory location, which
>      was used by OP-TEE to pass information like 'reserved-memory' nodes
>      and the used firmware interface and the psci node.
> 
> [...]

Applied, thanks!

[01/23] pbl: compressed-dtb: add missing includes
        https://git.pengutronix.de/cgit/barebox/commit/?id=569fea920c13 (link may not be stable)
[02/23] pbl: fdt: fix fdt_fixup_mem error handling
        https://git.pengutronix.de/cgit/barebox/commit/?id=7c266f0ed1c5 (link may not be stable)
[03/23] ARM: atf: add missing includes in atf_common.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=e9d526ae9924 (link may not be stable)
[04/23] ARM: i.MX8M: add support to pass DT via imx8m{m,n,q,p}_load_and_start_image_via_tfa()
        (no commit info)
[05/23] ARM: i.MX8M: cosmetic cleanup
        (no commit info)
[06/23] ARM: i.MX8M: move BL32 setup into imx8m_tfa_start_bl31()
        (no commit info)
[07/23] ARM: i.MX8M: imx8m_tfa_start_bl31() add support for bl33 and fdt
        (no commit info)
[08/23] pbl: decomp: add pbl_dtbz_uncompress helper
        (no commit info)
[09/23] pbl: fdt: add pbl_load_fdt helper
        (no commit info)
[10/23] ARM: i.MX: scratch: add FDT support
        (no commit info)
[11/23] ARM: i.MX8M: esdctl: drop ddrc base from imx8m_ddrc_sdram_size
        (no commit info)
[12/23] ARM: i.MX8M: esdctl: export imx8m_ddrc_sdram_size()
        (no commit info)
[13/23] ARM: i.MX8M: add support to pass BL3x bl_params
        (no commit info)
[14/23] ARM: i.MX: scratch: add OP-TEE FDTO support
        (no commit info)
[15/23] pbl: string: add strncmp
        (no commit info)
[16/23] pbl: fdt: add fdt_copy_node helper
        (no commit info)
[17/23] handoff-data: Add BL32_DT_OVL entry
        (no commit info)
[18/23] security: optee: add optee_extract_fdto helper
        (no commit info)
[19/23] security: optee: add helpers to apply OP-TEE FDTO
        (no commit info)
[20/23] ARM: i.MX8M: Add support to extract OP-TEE provided informations
        (no commit info)
[21/23] of: base: register optional OP-TEE overlay
        (no commit info)
[22/23] pbl: add support to disable/remove the /secure-chosen/stdout-path
        (no commit info)
[23/23] ARM: i.MX8M: remove /secure-chosen/stdout-path if requested
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



