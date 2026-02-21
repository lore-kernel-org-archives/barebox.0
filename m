Delivery-date: Sat, 21 Feb 2026 16:05:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vtoXj-0049hs-0k
	for lore@lore.pengutronix.de;
	Sat, 21 Feb 2026 16:05:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vtoXj-0001RE-JL
	for lore@pengutronix.de; Sat, 21 Feb 2026 16:05:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OisQZO0f0gO8dAO19MEdKLiKm3XOXRKtUvUfo8WPxZ4=; b=VGTy8h/OQKHDIV6+aOLylo6ooN
	LAmvt0FLF7FQ/ONQcVQTQ4TyXGHQ3W8yHenMSOEX+ne2p/tXhlT36O2PhLiwPUtUoainHmbi/oeDL
	zD4gWf1onwBMaOtOWJ38qUjyE/QdRh941THt9ExHICQjx9XznxZjafI/x7Kg3JUY9vfur7RuFoV0C
	qZnXzFFueRFcJarzDPpVYbygvjyRxGSZli9KjQUUQTJvLaIZLbm1Utym3AKu+hBRk9cfIW7Bh8EU4
	gG/035hHRsOGbzrEEmRCnbtsvKbebeY+VIuby7WoHeACrfCg3TJ48nWrxkC3ZWKQPBGXACPoVUpaR
	fUgNmyqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoX3-0000000G7dt-3jwT;
	Sat, 21 Feb 2026 15:04:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoX1-0000000G7da-3uAv
	for barebox@lists.infradead.org;
	Sat, 21 Feb 2026 15:04:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8BCAC42A8F;
	Sat, 21 Feb 2026 15:04:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE84C4CEF7;
	Sat, 21 Feb 2026 15:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771686270;
	bh=MryaFfRoVbMJlMfx49ePI2JaXYQOgofQFswBazmf3EM=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=mWTeeZQwHjP1QsLlavuB6gGmDSDFWOcr/Jnek7RwTYQF8TnDNW2uU9ZkRaxXjAnqN
	 B0FWikJDV3BPUAAIULauzywYuRxdP/gymWcGv8oA4DZxI6U6hJWuuDPQRNDJp4lKYk
	 w65S/wyDc6DwfUJXhxZ2pDCCsSD9q3xyVke/+sEKdS1102CLXSk1WnfO/XlRkxacXY
	 MbLG0+g1lQb374tl0SMsNALZvL9VAgAEbL1WaItJUs+tSc1yyKidBWLT6rvC266qkD
	 AbAD8LVcmGuu4CKcb5BEGQlls1RHhsbc1iK8fyPAfVxEFCHT7VLh9Xe6U26iFpYXZ8
	 39+e2sbOMD2Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629D1C5CFE6;
	Sat, 21 Feb 2026 15:04:30 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sat, 21 Feb 2026 16:04:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260221-riscv_dtbs-v1-1-be58fc118bc2@hotmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyND3aLM4uSy+JSSpGLd1CSTNKNU4zTDxKQ0JaCGgqLUtMwKsGHRsbW
 1AC/b4gpcAAAA
X-Change-ID: 20260221-riscv_dtbs-eb4f2e3f1abf
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771686269; l=1339;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=Th7Qwm6hQnrq4gu3K2f3OhDRAPXeHmIvXWOPCaXz16A=;
 b=T0BIY/L3eAFKEItfifQ7QMsl2CthofU8BEzVlPQcFFkEjt+kIh5p812CeCMgLiChcJGR3o2L7
 sOvg3DTMAZlAnmOwv6WNQ7FThKwbj09pIhGmhXDcOB72dO+Fk+zEWO/
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_070432_018448_11F54D74 
X-CRM114-Status: UNSURE (   7.23  )
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
Reply-To: maud_spierings@hotmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] RISC-V: dts: fix generation of dtbs-list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

For some reason pbl-$(CONFIG) results in dtbs-list being empty. This breaks
the generic fit image generation. Switch to lwl-$(CONFIG) like arm.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
 arch/riscv/dts/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 841f86064ae1..92cff9b84fa6 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -4,11 +4,11 @@
 # created.
 obj- += dummy.o
 
-pbl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
-pbl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
+lwl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+lwl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
                               hifive-unleashed-a00.dtb.o
-pbl-$(CONFIG_BOARD_BEAGLEV) += jh7100-beaglev-starlight.dtb.o
-pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
+lwl-$(CONFIG_BOARD_BEAGLEV) += jh7100-beaglev-starlight.dtb.o
+lwl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso

---
base-commit: 74393178faf08f8102c7c370ac310c29112e1137
change-id: 20260221-riscv_dtbs-eb4f2e3f1abf

Best regards,
-- 
Maud Spierings <maud_spierings@hotmail.com>




