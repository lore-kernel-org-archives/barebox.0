Delivery-date: Mon, 23 Feb 2026 11:56:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTbs-004nrR-23
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:56:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTbs-0003Nq-Tk
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:56:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hld94lqcGB9qkNgppuOAgDhINsuIbmyc+KN9skqolIk=; b=OVO5Tt+B18zxqEpy4qsKjG4Giu
	RnaG7gm1yxiHgZ4oAABaxz/r3+McK/qaQ9jPHOMZOlhjmxlCMq11/5M2Qk9AgxbXmTlt0s9CKNtB9
	XhCTy/adFkC9LUd1fV9D6C6pJo5g3gGXJlMvCpftcl/5zFqcbd2DVqeIvphq0TYbqJxAMIojiAn80
	nFokW7o3buM1ftlXsN6KZmaGy9p1EEMta9smmyP9DMCB3UP/4RVhxJx2XrjPVJS81LD5zBGtayHvS
	w+XPcbfJJngd0bY6S1lKhZrgCV5P5Oys9nhDd1tidKsIrazioyfHnaZNa0bCmPI5BJB5IfpgeRCzx
	o6GWNtLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTbX-000000006Ua-0c9D;
	Mon, 23 Feb 2026 10:55:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTbU-000000006Tq-2VF4
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:55:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTbS-0003KB-Vx; Mon, 23 Feb 2026 11:55:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTbR-002DMr-1S;
	Mon, 23 Feb 2026 11:55:50 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTbS-00000000u0A-36JS;
	Mon, 23 Feb 2026 11:55:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
Message-Id: <177184415073.215233.16467980191031879664.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:55:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_025552_654017_CC0AE7E1 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 00/14] Improve OP-TEE handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Feb 2026 23:41:11 +0100, Marco Felsch wrote:
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

[01/14] ARM: i.MX8M: add support to pass DT via lowlevel __imx8m*_load_and_start_image_via_tfa()
        https://git.pengutronix.de/cgit/barebox/commit/?id=64945fd5adab (link may not be stable)
[02/14] ARM: i.MX8M: move BL32 setup into imx8m_tfa_start_bl31()
        https://git.pengutronix.de/cgit/barebox/commit/?id=bd7b225679ab (link may not be stable)
[03/14] ARM: i.MX8M: imx8m_tfa_start_bl31() add support for bl33 and fdt
        https://git.pengutronix.de/cgit/barebox/commit/?id=e310e007a080 (link may not be stable)
[04/14] pbl: decomp: add pbl_dtbz_uncompress helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=05670f17ec88 (link may not be stable)
[05/14] pbl: fdt: add pbl_load_fdt helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=4c7be79b825b (link may not be stable)
[06/14] ARM: i.MX: scratch: add FDT support
        https://git.pengutronix.de/cgit/barebox/commit/?id=7761a06ab553 (link may not be stable)
[07/14] ARM: i.MX8M: esdctl: drop ddrc base from imx8m_ddrc_sdram_size
        https://git.pengutronix.de/cgit/barebox/commit/?id=c7d134207d8b (link may not be stable)
[08/14] ARM: i.MX8M: esdctl: export imx8m_ddrc_sdram_size()
        https://git.pengutronix.de/cgit/barebox/commit/?id=456f6db2311e (link may not be stable)
[09/14] ARM: i.MX8M: add support to pass BL3x bl_params
        https://git.pengutronix.de/cgit/barebox/commit/?id=a3dea7470ded (link may not be stable)
[10/14] handoff-data: Add TEE_DT_OVL entry
        https://git.pengutronix.de/cgit/barebox/commit/?id=317e09d65002 (link may not be stable)
[11/14] security: optee: add optee_handoff_overlay helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=715df1d88226 (link may not be stable)
[12/14] security: optee: add helpers to register OF overlays
        https://git.pengutronix.de/cgit/barebox/commit/?id=d789b6e5a625 (link may not be stable)
[13/14] ARM: i.MX8M: Pass optional OP-TEE overlay to barebox
        https://git.pengutronix.de/cgit/barebox/commit/?id=72c760b62378 (link may not be stable)
[14/14] of: base: register optional OP-TEE overlay
        https://git.pengutronix.de/cgit/barebox/commit/?id=c4bff428f467 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



