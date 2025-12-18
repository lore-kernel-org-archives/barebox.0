Delivery-date: Thu, 18 Dec 2025 15:50:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKp-00CrYT-39
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 15:50:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKp-0005Wx-Ay
	for lore@pengutronix.de; Thu, 18 Dec 2025 15:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MxM1K1ZfFgkapMQYDgcljl9SIOI9nta2cfAfocnNcm4=; b=V1/KySwwBuQ4OFWIE6eFZDE7S0
	x7blgudtpg4nIjzgmsHzeV/GjgUAJOhGU6HIRz+oGzP/UxsOErud2XiTgJ4jwZA+qYfFNwHR0khx5
	1yqPsxr8u3SUD/F3n5ou9v1wX6lDG3me1UpUYPllEaWFkUZVQpxv2yZ/K2iHwAgEFqkQjP5IuIxzm
	KLCaJ+6HpxKyE8e6bQWn4uEo+dtAqOd7myByAHoAgBUGlsmbMDqFYyRWu+4xC7uaVel1y/5Iqq6AZ
	hWkHEr+16hhNvUyWhg3ECCWUODTaGUG74dKJ4KS6gND6LWX6NOVlvtSQpqSTvFsXN5RMU+8He0GxY
	lGevxJTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKN-00000008dbj-1f9t;
	Thu, 18 Dec 2025 14:50:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKK-00000008dZm-3sl4
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 14:50:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0005Il-Dg; Thu, 18 Dec 2025 15:49:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-006IcU-0i;
	Thu, 18 Dec 2025 15:49:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0000000E9lv-0XYw;
	Thu, 18 Dec 2025 15:49:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 15:48:44 +0100
Message-ID: <20251218144950.3068179-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
References: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_065000_970479_32A4260E 
X-CRM114-Status: UNSURE (   8.67  )
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
Subject: [PATCH 1/4] test: py: strategy: add OS shell state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, we only boot barebox from within barebox. Let's allow YAML files
to optional specify a ShellDriver that we will use to test booting of
actual kernels and not only barebox look-alikes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py      |  6 ++++++
 test/strategy.py | 11 +++++++++++
 2 files changed, 17 insertions(+)

diff --git a/conftest.py b/conftest.py
index 55935f7602f7..ef6ca221a5db 100644
--- a/conftest.py
+++ b/conftest.py
@@ -25,6 +25,12 @@ def barebox(request, strategy, target):
     return target.get_driver('BareboxDriver')
 
 
+@pytest.fixture(scope='function')
+def shell(strategy, target):
+    strategy.transition('shell')
+    return target.get_driver('ShellDriver')
+
+
 @pytest.fixture(scope="session")
 def barebox_config(request, strategy, target):
     transition_to_barebox(request, strategy)
diff --git a/test/strategy.py b/test/strategy.py
index fcfa2ed48125..0f1b76147443 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -25,6 +25,7 @@ class Status(enum.Enum):
     qemu_dry_run = 3
     qemu_interactive = 4
     qemu_dump_dtb = 5
+    shell = 6
 
 
 @target_factory.reg_driver
@@ -35,6 +36,7 @@ class BareboxTestStrategy(Strategy):
         "power": "PowerProtocol",
         "console": "ConsoleProtocol",
         "barebox": "BareboxDriver",
+        "shell": {"ShellDriver", None},
     }
 
     status = attr.ib(default=Status.unknown)
@@ -55,6 +57,9 @@ class BareboxTestStrategy(Strategy):
             step.skip("nothing to do")
             return  # nothing to do
         elif status == Status.off:
+            self.target.deactivate(self.barebox)
+            if self.shell:
+                self.target.deactivate(self.shell)
             self.target.deactivate(self.console)
             self.target.activate(self.power)
             self.power.off()
@@ -65,6 +70,12 @@ class BareboxTestStrategy(Strategy):
             self.power.cycle()
             # interrupt barebox
             self.target.activate(self.barebox)
+        elif status == Status.shell:
+            # transition to barebox
+            self.transition(Status.barebox)  # pylint: disable=missing-kwoa
+            self.barebox.boot("")
+            self.barebox.await_boot()
+            self.target.activate(self.shell)
         else:
             raise StrategyError(
                 "no transition found from {} to {}".
-- 
2.47.3



