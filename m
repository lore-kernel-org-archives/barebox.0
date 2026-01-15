Delivery-date: Thu, 15 Jan 2026 11:41:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgKnB-001Yty-28
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 11:41:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgKnA-0008FC-JD
	for lore@pengutronix.de; Thu, 15 Jan 2026 11:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7Qbb7bx3c7nXAVt+ghxmx82nchEQvLEAHlXeMl5+XDo=; b=r22CtmEV8iIZXawI2lhPtDwTGw
	ZH6YDL084lCHMtXvaigmFub6HTXAFZd/3qJCS5rwM/Ij9lIsNhnUY1EhX1KvIqEg/jNYS/iMDybcT
	Kgvz2j7yytYtB0xVnT/OiLf2+tpLVVBWdaCB5sNAqDi+C+fWnMWDJtObxWljkDBAygL4KRO6i4Gm8
	99716Cc66okzC7URPzHEnDfAYHUS0zvuU1J16QgAplZqjrglEX1zxyGm5NM+uYaReSJXhpmlBYBOH
	WavbzLZ1B+MQpe/Mdji96bQxfjHMluiI8PxjyopAw1cmRfVTdGjeSZv5W5N6QYfYjfVAU9lZDgJ8i
	0/9dkCrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgKmV-0000000CAUF-3N4I;
	Thu, 15 Jan 2026 10:40:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgKmQ-0000000CATa-28bm
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 10:40:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgKmO-00089z-7I; Thu, 15 Jan 2026 11:40:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgKmO-000jqQ-2D;
	Thu, 15 Jan 2026 11:40:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgKmO-0000000FaID-2X6j;
	Thu, 15 Jan 2026 11:40:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Jan 2026 11:40:38 +0100
Message-ID: <20260115104038.3714380-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_024043_063209_0AC6E64A 
X-CRM114-Status: UNSURE (   8.55  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: layerscape: defconfig: refresh defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PPA support was removed in c862c3d23d01 ("ARM: Layerscape: LS1046a:
remove PPA support") in favor of use of TF-A as secure monitor as the
former is no longer maintained. The TF-A config symbol is selected
by the SoC symbols as needed.

Run defconfig to remove this option as well as other options that have
become selected by other options in the meantime.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/layerscape_defconfig | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 95a86ccc07d9..272dff90d7c8 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_LAYERSCAPE=y
-CONFIG_ARCH_LAYERSCAPE_PPA=y
 CONFIG_MACH_LS1028ARDB=y
 CONFIG_MACH_LS1046ARDB=y
 CONFIG_MACH_TQMLS1046A=y
@@ -8,9 +7,7 @@ CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="layerscape_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -18,7 +15,6 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
-- 
2.47.3



