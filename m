Delivery-date: Thu, 08 Jan 2026 11:08:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdmwQ-002aF9-0a
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 11:08:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdmwP-000650-Hu
	for lore@pengutronix.de; Thu, 08 Jan 2026 11:08:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7w45YJL/wHG37Ro7Qbm4TFoDsURm8NeqHeJQdkWfTo8=; b=TGHnToLYTpL1J7e4eL0O7ax2wD
	JyOZyUU/UKgMKNm7LPafEgqFVWkxFJaWrxiT+N033zPwHcZh3Esaa++fM69etH77MumuQtMUUelva
	EBKOHxQ7koEAb27fpPYx/YBfTA78oF4s7azLqS1JeSAClz7T1wGXSGLYp2S/KUV7isojToXRg+OJM
	e3afOCXKSwrkNUqrdxJEaslNJ/CmilsaqU6NgwNVotBg5AU5oM68NIx2SLSnFahkebXPa67kH10Mc
	yOYPahEFS4Uy/GipFS2HwYlx/qABsyVdatJFury82y7fLmlIdWJWlwsbc4qtbDlByjuZdMlvDaAy0
	gXMLgzSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdmvh-0000000GZCs-3hjz;
	Thu, 08 Jan 2026 10:07:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdmve-0000000GZBt-3c3Y
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 10:07:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdmvc-0005xa-KU; Thu, 08 Jan 2026 11:07:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdmvc-009eo8-1S;
	Thu, 08 Jan 2026 11:07:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdmvc-00000007GZT-1N8c;
	Thu, 08 Jan 2026 11:07:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  8 Jan 2026 11:07:39 +0100
Message-ID: <20260108100739.1731988-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_020742_897981_36CDB097 
X-CRM114-Status: GOOD (  10.46  )
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
Subject: [PATCH] test/strategy.py: optionally don't activate BareboxDriver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When bootstrapping barebox on QEMU with my barebox-bringup utility it
brings it to the 'barebox' state before opening a console. The
BareboxDriver consumes all console messages in order to bring barebox
to the prompt. This is bad for interactive use where one wants to
see the console output right from the start.

Insert a 'on' state which brings up QEMU but doesn't activate the
BareboxDriver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/strategy.py | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/test/strategy.py b/test/strategy.py
index 0f1b761474..0ca08b0cdd 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -21,11 +21,12 @@ if match is None or int(match.group(1)) < 25:
 class Status(enum.Enum):
     unknown = 0
     off = 1
-    barebox = 2
-    qemu_dry_run = 3
-    qemu_interactive = 4
-    qemu_dump_dtb = 5
-    shell = 6
+    on = 2
+    barebox = 3
+    qemu_dry_run = 4
+    qemu_interactive = 5
+    qemu_dump_dtb = 6
+    shell = 7
 
 
 @target_factory.reg_driver
@@ -63,11 +64,13 @@ class BareboxTestStrategy(Strategy):
             self.target.deactivate(self.console)
             self.target.activate(self.power)
             self.power.off()
-        elif status == Status.barebox:
+        elif status == Status.on:
             self.transition(Status.off)  # pylint: disable=missing-kwoa
             self.target.activate(self.console)
             # cycle power
             self.power.cycle()
+        elif status == Status.barebox:
+            self.transition(Status.on)  # pylint: disable=missing-kwoa
             # interrupt barebox
             self.target.activate(self.barebox)
         elif status == Status.shell:
-- 
2.47.3



