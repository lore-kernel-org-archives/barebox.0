Delivery-date: Thu, 14 Aug 2025 22:28:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYw-000cfC-0s
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:28:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYv-0001XQ-4c
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:28:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3+eBjHOEzuqstlvDH09WbZGZ6bseaP0ieUNFC5uhfpM=; b=HhiBtZX5YFU/PNLdjwRYmTPd9r
	Rq6s9AMQUTT24KPzzJcrVbwnud7bauHXs326UT4y1piWTILmnd6TpqaC2iD5OHim/sjIWiCcV5smx
	KZ/kG3CuHQax3cqzk0X4bnJKm2Fgx1iInBvYfTse9L2lQkv7c5O6D8yigQzcgcNZzq1l9OKzSEyau
	e/8ymz+lWarRaKA2JqBX/0VODahxTfpGKb4xM8vq0GTJlAI16x9w0rNnjCK2YmZAGDZ+O6FjqTaKz
	LaVN94Arqu05LPaLqgRYR6sIkKxaGcWOFn7oWjvR2Rm0MLiTJ8N5hByOCyf90CsOmF2WZyw2/rrU8
	fXY9iK/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYV-00000000VAT-0xtT;
	Thu, 14 Aug 2025 20:28:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYR-00000000V7s-3Zvc
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:28:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeYQ-00019L-Gy; Thu, 14 Aug 2025 22:28:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:27:59 +0200
Message-Id: <20250814202805.354827-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814202805.354827-1-a.fatoum@barebox.org>
References: <20250814202805.354827-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132807_890402_DAAC8053 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] RISC-V: virt: riscvemu: set better hostname/model
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hostname and model currently come from the device tree:
"riscvemu-bar_dev" and "ucbbar,riscvemu-bare", respectively.

The former is now warned about, because it contains an underscore and
the latter is not that descriptive.

As the device tree is supplied by the emulator, add an override to board
code. We differntiate between riscv32 and riscv64 in the hostname string
as that information can be relevant for choosing the correct kernel.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boards/riscvemu/board.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index bf5a05dd6a4d..be1d0c162961 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -42,6 +42,13 @@ static int riscvemu_probe(struct device *dev)
 	struct riscvemu_priv *priv;
 	u64 start;
 
+	if (IS_ENABLED(CONFIG_ARCH_RV32I))
+		barebox_set_hostname("riscvemu32");
+	else
+		barebox_set_hostname("riscvemu64");
+
+	barebox_set_model("RISC-V Emulator");
+
 	of_overlay_apply_dtbo(dev->of_node, __dtbo_riscvemu_sram_start);
 	/* of_probe() will happen later at of_populate_initcall */
 
-- 
2.39.5



