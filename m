Delivery-date: Fri, 09 Jan 2026 18:01:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFrC-0033hK-2o
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 18:01:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFrC-0008HO-89
	for lore@pengutronix.de; Fri, 09 Jan 2026 18:01:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbRgK50HQDfVovorakP8TIjxHKdCbZg34rTtHDQ28LE=; b=HywSNJcrQfFxRtSgtE8rXm0zLH
	A7axAy8rCO5deUlzCPf+gsPJi7VRQS793ot47019t69hwmdTS8Lcso+q1SYwiYHDJpwFVPpJhiw/3
	IpgYzQd6hpLAkz58A4ZC8rm+0tXtkfWIoGKOeC6h0cAU0IkqmYaxeKKSQr++9VBRkuHCvYV5KP5Zq
	BhM7zzsdAcjAx4EGcZ7WWDW4++C6R6sdD65WYj1Za95ByjOaZir23CAtq6K/7U30dYjV7UE6YIBa7
	Ku/6CoqDRe1GAmDcIEP/kQzWEgk3NSh7/JgS0dz+su6OIS+gINkewoTsTcSvozPvYCADzVkMVpy15
	qXNYuKCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqR-00000002gr2-26BQ;
	Fri, 09 Jan 2026 17:00:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqN-00000002goB-2hla
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 17:00:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1veFqM-0007jb-0g; Fri, 09 Jan 2026 18:00:10 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  9 Jan 2026 17:57:28 +0100
Message-ID: <20260109170007.805177-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260109170007.805177-1-a.fatoum@barebox.org>
References: <20260109170007.805177-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_090011_690861_891E0427 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] test: py: strategy: add helpers for booting kernel and bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current boot helper activates the barebox strategy with the
assumption that barebox is booting itself, which is indeed the
case in the FIT boot test.

In preparation for adding customized boot tests of actual kernels
(and not only barebox masquerading as one), rename it to boot_barebox
and add boot_kernel, which behaves similarly, but activates the shell
driver.

Additionally, add support for using bootm instead of boot, which is more
convenient if we have no script, no ESP and no bootloader spec file.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_fit.py |  2 +-
 test/strategy.py    | 36 +++++++++++++++++++++++++++++++++---
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 97fdac0c79d9..e0999a01b0cb 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -78,7 +78,7 @@ def test_fit(barebox, strategy, testfs, fit_testdata):
 
     boottarget = generate_bootscript(barebox, fit_name('gzipped'))
 
-    with strategy.boot(boottarget):
+    with strategy.boot_barebox(boottarget) as barebox:
         assert of_get_property(barebox, "/chosen/barebox-version") == f'"{ver}"', \
                "/chosen/barebox-version suggests we did not chainload"
 
diff --git a/test/strategy.py b/test/strategy.py
index 0ca08b0cdd15..c04d38c180a7 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -86,20 +86,50 @@ class BareboxTestStrategy(Strategy):
             )
         self.status = status
 
+    def barebox_bootm(self, image=None):
+        self.barebox._run(f"global.loglevel={self.barebox.saved_log_level}",
+                          adjust_log_level=False)
+        if image:
+            self.console.sendline(f"bootm -v {image}")
+        else:
+            self.console.sendline("bootm -v")
+
     @contextmanager
-    def boot(self, boottarget=None):
+    def boot_barebox(self, boottarget=None, bootm=False):
         self.transition(Status.barebox)
 
         try:
-            self.barebox.boot(boottarget)
+            if bootm:
+                self.barebox_bootm(boottarget)
+            else:
+                self.barebox.boot(boottarget)
+
             self.target.deactivate(self.barebox)
             self.target.activate(self.barebox)
-            yield
+            yield self.barebox
         finally:
             self.target.deactivate(self.barebox)
             self.power.cycle()
             self.target.activate(self.barebox)
 
+    @contextmanager
+    def boot_kernel(self, boottarget=None, bootm=False):
+        self.transition(Status.barebox)
+
+        try:
+            if bootm:
+                self.barebox_bootm(boottarget)
+            else:
+                self.barebox.boot(boottarget)
+
+            self.barebox.await_boot()
+            self.target.activate(self.shell)
+            yield self.shell
+        finally:
+            self.target.deactivate(self.shell)
+            self.power.cycle()
+            self.target.activate(self.barebox)
+
     def force(self, state):
         self.transition(Status.off)  # pylint: disable=missing-kwoa
 
-- 
2.47.3



