Delivery-date: Mon, 12 Jun 2023 14:54:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4K-003qC4-2D
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:54:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4H-0006W5-MT
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:54:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UXRzaMheR1+NDqu8rnO9HWVlFK8frAlmVf437ar52nM=; b=e4mZMLE8C5cvqlyCbB8oMftnKW
	WjifNp9/2aN0rcPojFRTaocdLO3UwTljra7+cGob91K8iB4pAwIuo5//zLzXpxNRZsiyEGb5kmwat
	wZBsHn8OXDm0e3EoL3OQb/3DoqDgAJEbtAvAVZgxXTXULHNiqfu+YhII8FqAwswfULO4CJdombcVy
	CE6qb4z0mg0suYFcPTvAoLp9rC8tJQbYoFpQxRJtuN42VioMTaiHPzVUdFN+HBmQI91dx8tyYssvs
	ujKU7aSxa9EyYXn2VLIjKaIvb/n9xNgBBWVsHmCj+CMYZ1cZI+TVL4F3LTg3x2VRxJYkuBfSG6S6w
	ghPrXP4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h3C-0045KY-2R;
	Mon, 12 Jun 2023 12:53:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h39-0045HD-0g
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:53:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h37-0006BB-QW; Mon, 12 Jun 2023 14:53:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h37-006tTY-3u; Mon, 12 Jun 2023 14:53:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h36-004YHe-7A; Mon, 12 Jun 2023 14:53:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:53:29 +0200
Message-Id: <20230612125331.1085059-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
References: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055335_264069_70AA3BD6 
X-CRM114-Status: UNSURE (   9.03  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 4/6] of: select OF_OVERLAY where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both Qemu Virt and riscvemu depend on OF_OVERLAY to apply overlays, but
don't care for symbols in the barebox DT (and thus don't need
OF_OVERLAY_LIVE). Reflect this in the Kconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs | 1 +
 common/boards/Kconfig   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 2cb0716cd527..56ba5ecf5865 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -38,6 +38,7 @@ config BOARD_RISCV_VIRT
 config BOARD_RISCVEMU
 	depends on SOC_VIRT
 	bool "TinyEMU Virt Machine (riscvemu)"
+	select OF_OVERLAY
 	default y
 	help
 	  TinyEMU's Virt machine differs from QEMU in poweroff and restart
diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index e27273b7671d..3ac3dcbe0406 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -2,3 +2,4 @@
 
 config BOARD_QEMU_VIRT
 	bool
+	select OF_OVERLAY
-- 
2.39.2



