Delivery-date: Tue, 21 Oct 2025 08:49:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vB6BR-00AAEU-2u
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 08:49:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vB6BR-0008Lz-8A
	for lore@pengutronix.de; Tue, 21 Oct 2025 08:49:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TKSJQoNZdk0f3fieGle80yp6SmNapiFMTuq9zn90Jvc=; b=B+gxfBXM21USyftdC+8FoXGY8T
	I+13yIaZ89s6mapJetn2banHIapjJBo/B+Da5r0a6cg4PYJKcdO+omfqeNZeTIEQ1UC2qTZieEjhl
	XITd/cxZVcTGCc35EElCQKM7o8ig6H0/Wd+I7Gr3w31Dj/4DeE0ovBSjh9Cviwke0c3MukxfOSj9X
	L9w2h+MrWf+8hn4R9gZbkJrsBezaHBMneK1/FbiHs6/2HSqmGZpUnfAWtEN10O3p1dcgXVnPxTjRz
	1ATfQi8Q1bZr31FwvQpdqtSqVIy9jNtLICj4pjo5bh9yr7KPFsQFZ/Pa4VuNqenrgzadA8mXlRoFc
	meFpPonQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6Az-0000000FxKD-1TC5;
	Tue, 21 Oct 2025 06:48:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6Ax-0000000FxJb-28oa
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 06:48:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vB6Av-0008GX-Lk; Tue, 21 Oct 2025 08:48:53 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 21 Oct 2025 08:48:49 +0200
Message-ID: <20251021064851.775660-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_234855_546534_60C520C8 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: fit: power cycle after tests in booted barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Networking in QEMU may run into issues in the chainloaded barebox.
Power cycle the virtual machine after the end of the FIT tests to avoid
this interference.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_fit.py | 34 ++++++++++++++++------------------
 test/strategy.py    | 15 +++++++++++++++
 2 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 2a51ac1bc075..97fdac0c79d9 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -58,7 +58,7 @@ def fit_testdata(barebox_config, testfs):
         pytest.skip(f"Skip dm tests due to missing dependency: {e}")
 
 
-def test_fit(barebox, target, testfs, fit_testdata):
+def test_fit(barebox, strategy, testfs, fit_testdata):
     _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
     if returncode != 0:
         pytest.xfail("skipping test due to missing FIT image")
@@ -77,25 +77,23 @@ def test_fit(barebox, target, testfs, fit_testdata):
     barebox.run_check("global linux.bootargs.testarg=barebox.chainloaded")
 
     boottarget = generate_bootscript(barebox, fit_name('gzipped'))
-    barebox.boot(boottarget)
-    target.deactivate(barebox)
-    target.activate(barebox)
 
-    assert of_get_property(barebox, "/chosen/barebox-version") == f'"{ver}"', \
-           "/chosen/barebox-version suggests we did not chainload"
+    with strategy.boot(boottarget):
+        assert of_get_property(barebox, "/chosen/barebox-version") == f'"{ver}"', \
+               "/chosen/barebox-version suggests we did not chainload"
 
-    assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x1>', \
-           "/chosen/barebox,boot-count suggests we got bultin DT"
+        assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x1>', \
+               "/chosen/barebox,boot-count suggests we got bultin DT"
 
-    # Check that command line arguments were fixed up
-    bootargs = of_get_property(barebox, "/chosen/bootargs")
-    assert "barebox.chainloaded" in bootargs
+        # Check that command line arguments were fixed up
+        bootargs = of_get_property(barebox, "/chosen/bootargs")
+        assert "barebox.chainloaded" in bootargs
 
-    initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start")
-    initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end")
+        initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start")
+        initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end")
 
-    addr_regex = r"<(0x[0-9a-f]{1,8} ?)+>"
-    assert re.search(addr_regex, initrd_start), \
-        f"initrd start {initrd_start} malformed"
-    assert re.search(addr_regex, initrd_end), \
-        f"initrd end {initrd_end} malformed"
+        addr_regex = r"<(0x[0-9a-f]{1,8} ?)+>"
+        assert re.search(addr_regex, initrd_start), \
+            f"initrd start {initrd_start} malformed"
+        assert re.search(addr_regex, initrd_end), \
+            f"initrd end {initrd_end} malformed"
diff --git a/test/strategy.py b/test/strategy.py
index bf4dacfefd81..fc65895daece 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -6,6 +6,7 @@ import attr
 import pytest
 import subprocess
 import re
+from contextlib import contextmanager
 
 from labgrid import target_factory, step, driver
 from labgrid.strategy import Strategy, StrategyError
@@ -71,6 +72,20 @@ class BareboxTestStrategy(Strategy):
             )
         self.status = status
 
+    @contextmanager
+    def boot(self, boottarget=None):
+        self.transition(Status.barebox)
+
+        try:
+            self.barebox.boot(boottarget)
+            self.target.deactivate(self.barebox)
+            self.target.activate(self.barebox)
+            yield
+        finally:
+            self.target.deactivate(self.barebox)
+            self.power.cycle()
+            self.target.activate(self.barebox)
+
     def force(self, state):
         self.transition(Status.off)  # pylint: disable=missing-kwoa
 
-- 
2.47.3



