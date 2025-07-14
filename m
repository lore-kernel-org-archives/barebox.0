Delivery-date: Mon, 14 Jul 2025 09:34:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDhX-00HKWx-0D
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 09:34:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDhW-0004Y6-Go
	for lore@pengutronix.de; Mon, 14 Jul 2025 09:34:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GYelK0PR0PCX/62DMjyaGCZFM+IJqtLCxcqVTJq+AcM=; b=LJ1HnSZEOIRf1VMjMIRLXwjeq5
	Oypf12MW6uGQAeT9qL7tL2AcxZ1BtmqBZ2bYJFSji7ZTJ1kVz9r919+9Wl9PnyHADD+iN8IvFpxJ2
	KCToozTea6ub2j9+gLgN5iJQ5q9NrAy5vmQdADvY1vmagwLi9wsbdDDPh9WVCHF3qt2A/HUiVM+iy
	MIQ6lbz4Dvtjq9hsapFA0ahHyZr8kEFedVrdWx+U7jXPUpe9c3PvJ5hXJW4508AqMGwydZHxqk3zx
	io3Hlyd7F/1fAtlkYbe/YILFkB5MjMA+1zSrdhQC4lKAVBYO7bAnYnVmpY6Ia57R2s+7HZ9+GhDKC
	KKwVnyIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDgw-00000001U2y-3elS;
	Mon, 14 Jul 2025 07:33:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDMt-00000001RFc-1x36
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 07:12:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ubDMp-0000hT-OF; Mon, 14 Jul 2025 09:12:51 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 14 Jul 2025 09:12:49 +0200
Message-Id: <20250714071249.2428110-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250714071249.2428110-1-a.fatoum@barebox.org>
References: <20250714071249.2428110-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_001255_502631_B04E285A 
X-CRM114-Status: GOOD (  11.91  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: zynq: drop the board-specific environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux device tree hardcodes per DT alias (since 2015) the
stdout-path to uart1, not uart0 and thus the Linux TTY device is called
ttyPS0 and not ttyPS1.

With previous changes to the serial driver to fix up the console device,
hardcoding this option is no longer needed, so drop it along with its
environment overlay that's now empty.

Reported-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console | 1 -
 arch/arm/configs/zynq_defconfig                              | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)
 delete mode 100644 arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console

diff --git a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console b/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
deleted file mode 100644
index 6c9f9dabcf1b..000000000000
--- a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyPS1,115200
diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index 1a1378d3e079..752068f69196 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -17,7 +17,7 @@ CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/avnet-zedboard/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-- 
2.39.5



