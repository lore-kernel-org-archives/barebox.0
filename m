Delivery-date: Tue, 06 Jan 2026 14:02:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hR-001tem-1T
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:02:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hP-0003R9-Oz
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:02:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZuiSrpgOOaYui4nRxCxWMNVeM/gtJQiHhvkNUKotj/A=; b=1fcPQ73m9BX4CjHYwosHR6Fpn1
	J9+XQ8g9nacSpGO+lULMkQyu3VFqISCw7Jl6AZvDgojhT8hytcL506Mc31POKHE92oQxBlLvvf5h9
	Un8DGzpjBekZCnZ+D7yM6VipwDoD2FIgxQuOxJTHgwDj+IjkS8n3YzxrzfS1dVqXt8ZZGMHf/z5fy
	KA0HhEgkY4dPYSslubUpLpbTkVK7NC4laIgXrj2QUF6ViQb8RlGfh2SAl2JHd4TJlJ3zea5lQPsWo
	ODarNr0hw69JVPzQLlXF6jWi18ERL2krzsVV/q4faMd5DyZ+4uSlXLjbYyNj+hy83GegfLmIvWn7K
	oOG1T3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gt-0000000D2aH-1dOJ;
	Tue, 06 Jan 2026 13:01:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gq-0000000D2VG-1EqF
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ZuiSrpgOOaYui4nRxCxWMNVeM/gtJQiHhvkNUKotj/A=; b=LP2pEsRw5KRwxQDMddalBcs4ff
	0DnZBlWvj4vNsONKrOeoy0MwdUmKuE4+FNX/B/DeYOz6FttusnrKYBFvvBbpNOejEix+FxEgsTSBt
	ncNjMr+859XvHMV9Ls3eSgvEoyWmBsvHuinwt96H2pfPRC6fjs7S2M5I3Dh9C58JGrVAwJiYJ5JIB
	TXFDjVfv+CuQdVL94dnbolXBDz5aVcbuaANO/dfmgCahkwgdxHA5pLUXy2alnnSbnvHXIjQIuuUkr
	B9XR46CvkBTVaMoArRZW81r16LHBDlECNlywV42d09y5kPxQ8+dBwJrR0N1cRSOJYIHfHflFLBFfm
	kHPWHXaA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gn-00000009jKb-1tXZ
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-0002rT-TH; Tue, 06 Jan 2026 14:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-009LeV-2H;
	Tue, 06 Jan 2026 14:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3jVe;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-20-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=761;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MQVkyW6KmwnarSoz8qWgPEA16Yeo1zsjQRw17byxOs4=;
 b=cnl4GDCU0XC8qO9nMmIWJQhiO4BofGhPH7Dx2smfctP21Jc4oaBaruefzNXvicWLXdBvvXq8K
 9scqGCavhOtC2nnTftqKETRZFrUNMnI7de/veOEJo8aadxUdYVLiogx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_130133_515533_DD0ADCC6 
X-CRM114-Status: UNSURE (   9.39  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/21] riscv: Allwinner D1: Drop M-Mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Allwinner D1 selects both RISCV_M_MODE and RISCV_S_MODE. The board
code uses barebox_riscv_machine_entry() and not barebox_riscv_machine_entry()
which indicates RISCV_M_MODE was only selected by accident. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/Kconfig.socs | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 4a3b56b5fff48c86901ed0346be490a6847ac14e..0d9984dd2888e6cab81939e3ee97ef83851362a0 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -123,7 +123,6 @@ if SOC_ALLWINNER_SUN20I
 config BOARD_ALLWINNER_D1
 	bool "Allwinner D1 Nezha"
 	select RISCV_S_MODE
-	select RISCV_M_MODE
 	def_bool y
 
 endif

-- 
2.47.3



