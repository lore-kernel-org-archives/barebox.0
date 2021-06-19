Delivery-date: Sat, 19 Jun 2021 05:46:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwX-0003MQ-7t
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:46:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwV-0002Zo-S7
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:46:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9EkxhB2xYHKaoyixvdJiJF3ptpykf6YxqUlIv+gq1g=; b=fq1WCgOdTFIbic
	KLU/lXz+GwSzwkkVoFrVTMyX237dQ+bckcePWfD1TyxckOcHX0UlzGDHsQ2DANHXqQRqiMNI5SjiS
	HdXJfU/axzO5fpSqT+/y4JzN3CiUWOHgo3Rt2M5hScd0hKuZb8irY4iHpfjm7Y6o24ORalS1SCgEW
	oXyruLNXMICdxNVM2qG2MphQJu+j7S2t8HSpYiVYP5IPWnpbWX+A1W/Yscw/Q5suPz/t09njY7Yzl
	6ndvrHED8u0V2SON76PE0CrTVeIJ58sVjIHCV0XpBekfTPjD4LLga3DhFcPjfMod8LpVWDgLn8ztM
	RR+bTZog2xyT2gk2ImYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvJ-00GC2f-Hy; Sat, 19 Jun 2021 03:45:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRv7-00GBxr-8a
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001v7-U1; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv4-00029i-V8; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:10 +0200
Message-Id: <20210619034516.6737-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204521_448010_E2E7F867 
X-CRM114-Status: GOOD (  11.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/13] sandbox: use nvmem-reboot-mode instead of
 syscon-reboot-mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have some syscon-reboot-mode users in tree, but no nvmem-reboot-mode
yet. Use the new nvmem-cells binding to remedy this. Added benefit is
that we no longer access unpartitioned space; The reboot mode is now
clearly described in the device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig |  2 +-
 arch/sandbox/dts/sandbox.dts           | 15 ++++++++++-----
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index d9d96d948155..881762444b21 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -4,7 +4,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PARTITION=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
@@ -126,6 +125,7 @@ CONFIG_WATCHDOG_POLLER=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
 CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_NVMEM_REBOOT_MODE=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 7f8f1964e408..fa9348d71f62 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -59,11 +59,12 @@
 		barebox,cdev; /* no caching allowed */
 
 		bmode: reboot-mode {
-			compatible = "syscon-reboot-mode";
-			offset = <0>;
-			mask = <0xffffff00>;
-			mode-normal = <0x00000000>;
-			mode-loader = <0xbbbbbb00>;
+			compatible = "nvmem-reboot-mode";
+			nvmem-cells = <&reboot_mode>;
+			nvmem-cell-names = "reboot-mode";
+
+			mode-normal = <0x000000>;
+			mode-loader = <0xbbbbbb>;
 		};
 
 		partitions {
@@ -81,6 +82,10 @@
 				reset_source: reset-source@0 {
 					reg = <0x0 0x1>;
 				};
+
+				reboot_mode: reboot-mode@1 {
+					reg = <0x1 0x4>;
+				};
 			};
 
 			part_env: env@400 {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

