Delivery-date: Fri, 16 Jan 2026 11:14:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vggqq-001vWQ-2y
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 11:14:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vggqp-0004Bv-Qz
	for lore@pengutronix.de; Fri, 16 Jan 2026 11:14:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Rdb7X3lckmt0RUIBQFPF53L6nwgPGaFQPPHEq6LrR1E=; b=suPz28Et23Oy+rfpSEuoQTTne5
	UvYcFsgaShx8QizQp7Qy+qO6Ndq8bGVisFAu1xAWGTIKBqmSKe5mPadqhOLnCxIFGr9gRAIhDd9dm
	gihWapVsbCXdRA53WUZloytXOuJGpvkp8JYIVpP7+7eLMa6eZjv/NFnNaPtUoNbwJLHr7bb8lIsaB
	/U4nZEHJvoZt8hRoskHjo3GnObohqE0QAf2CCFoB0JdziL6bOr3zZ/IGDKXpLzhOTvb0ozizWRi8h
	O4qSgDsI1FDWxmUdYZlS/owEB6CsXWdCigp+xe+P0M2mM2OnizYMl143G6YO2+B199+cZlV8OX3L9
	G1+r6s9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggqI-0000000Duxz-19Zy;
	Fri, 16 Jan 2026 10:14:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggqF-0000000DuxU-3nyJ
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 10:14:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vggqD-00044n-C5; Fri, 16 Jan 2026 11:14:05 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 11:14:03 +0100
Message-ID: <20260116101404.3954872-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_021407_970884_3AD6EAE9 
X-CRM114-Status: GOOD (  10.91  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: py: add dry run check for FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A dry run should not alter system state in a way that would inhibit
normal operation or repeated dry runs.

The FIT image boot in the test suite, however, reduces the VFS root's
reference count beyond the initial value before the bootm.

This leads to a warning on boot that can be reproduced by repeating the
dry run multiple times:

  FAILED test/py/test_fit.py::test_fit_dryrun -
	AssertionError: ['WARNING: at fs/fs.c:255/mntput()!',
			 'WARNING: refcount for mount "/" becomes negative']

Add a regression test for this issue.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
@Sascha, given that you introduced the warning, maybe you are interested
in looking into this? :-)
I am not sure if it's 9PFS related. It's reproducible with:

  pytest -x test/py/test_fit.py

On this has run once, you should be able to use --interactive and
reproduce this issue manually with repeating

  bootm -d /mnt/9p/testfs/barebox-gzipped.fit
---
 test/py/helper.py   | 14 ++++++++++++++
 test/py/test_fit.py | 36 ++++++++++++++++++++++++++++--------
 2 files changed, 42 insertions(+), 8 deletions(-)

diff --git a/test/py/helper.py b/test/py/helper.py
index 756a06a8be66..4ed60ead1ef4 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -86,6 +86,20 @@ def devinfo(barebox, device):
     return info
 
 
+def filter_errors(lines):
+    prefixes = (
+        "WARNING:",
+        "ERROR:",
+        "CRITICAL:",
+        "ALERT:",
+        "EMERG:",
+        "PANIC:",
+        "BUG:",
+    )
+
+    return [line for line in lines if line.startswith(prefixes)]
+
+
 def format_dict_with_prefix(varset: dict, prefix: str) -> str:
     parts = []
     for k, v in varset.items():
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index e0999a01b0cb..3182fe8cf0d8 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -6,11 +6,7 @@ import pytest
 import shutil
 import subprocess
 from pathlib import Path
-from .helper import of_get_property
-
-
-def fit_name(suffix):
-    return f"/mnt/9p/testfs/barebox-{suffix}.fit"
+from .helper import of_get_property, filter_errors
 
 
 def generate_bootscript(barebox, image, name="test"):
@@ -58,11 +54,35 @@ def fit_testdata(barebox_config, testfs):
         pytest.skip(f"Skip dm tests due to missing dependency: {e}")
 
 
-def test_fit(barebox, strategy, testfs, fit_testdata):
-    _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
+@pytest.fixture(scope="function")
+def fitimage(barebox, testfs, fit_testdata):
+    path = f"/mnt/9p/testfs/barebox-gzipped.fit"
+    _, _, returncode = barebox.run(f"ls {path}")
     if returncode != 0:
         pytest.xfail("skipping test due to missing FIT image")
 
+    return path
+
+
+def test_fit_dryrun(barebox, strategy, fitimage):
+    # Sanity check, this is only fixed up on first boot
+    assert of_get_property(barebox, "/chosen/barebox-version") is False
+    [ver] = barebox.run_check("echo barebox-$global.version")
+    assert ver.startswith('barebox-2')
+
+    barebox.run_check("global dyrun_attempts=5")
+    barebox.run_check('[ "$global.dyrun_attempts" = 5 ]')
+
+    for i in range(5):
+        stdout, _, _ = barebox.run(f"bootm -d -v {fitimage}")
+        errors = filter_errors(stdout)
+        assert errors == [], errors
+
+    # If we actually did boot, this variable would be undefined
+    barebox.run_check('[ "$global.dyrun_attempts" = 5 ]')
+
+
+def test_fit(barebox, strategy, fitimage):
     # Sanity check, this is only fixed up on first boot
     assert of_get_property(barebox, "/chosen/barebox-version") is False
     [ver] = barebox.run_check("echo barebox-$global.version")
@@ -76,7 +96,7 @@ def test_fit(barebox, strategy, testfs, fit_testdata):
 
     barebox.run_check("global linux.bootargs.testarg=barebox.chainloaded")
 
-    boottarget = generate_bootscript(barebox, fit_name('gzipped'))
+    boottarget = generate_bootscript(barebox, fitimage)
 
     with strategy.boot_barebox(boottarget) as barebox:
         assert of_get_property(barebox, "/chosen/barebox-version") == f'"{ver}"', \
-- 
2.47.3



