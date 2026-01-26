Delivery-date: Mon, 26 Jan 2026 11:47:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK7f-005VwB-0f
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:47:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK7e-0002nP-3g
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:47:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ttF8Y88JOajpN+f0A5vJV4OzODsEpunkHBEZ87qJItg=; b=DGT5jQf1lUNYKi6epoTxELFzoc
	1iSy7ETokkMg2xuks3PzJS6at7V8e0ngK+sXyuDMJ/jpl0NDxY/+o0egnGUO8E8eKr/pcV4x7MAeE
	wtfIqpUIjJc+TKVmupRel7so5oVq4TWhDcSnmgVnFvCcwOyJenTjjU3G+nGGPmIbvFkrivPHRB2QG
	75FPMyeS5IYBZXFBYQZlWq+Nxr3R19rNMxLQec7c8WkYYejs0sbpSng9SOnTF5BCEjF5ooe/IrW39
	B73mN7aa7DryQzPDGqEOBt6K5D5L/bsff8BDYGQTYcU/nhdgl+TJ8T0/oFhUjKPM6i80xzo8kCjnb
	9IgOA+aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK79-0000000CLS2-1Cfy;
	Mon, 26 Jan 2026 10:46:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK72-0000000CLL4-0MnY
	for barebox@bombadil.infradead.org;
	Mon, 26 Jan 2026 10:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ttF8Y88JOajpN+f0A5vJV4OzODsEpunkHBEZ87qJItg=; b=CTT8hHY3Nb+36ZlY0FMjwBhqmG
	OAM12JfWqyBC+ANd22ydnlUrU0gEVmGiWG9Z7nlPKCnbM4+sGvLFr3oFEHZL/c1k7nD+E4a96+kW0
	mNpLlUw1lrDEQ6sjcUz9NJXp71bgtQ8d0On+YDs3Px0WnPSyGaF6HcuzFA7wNU6kEl9XYNesYbPEg
	mbFxrE5+C7sA4+HoQw8h5lcDTDm2n6BcFhf2me5/ceUdjqxXlB5u2/kzNkh9FPy+7RukRK7lXhshp
	JD0G/DsDtyWdKVlAT6p/wSg51ei+xA9JHI62WZICtZGQlD0+x3ydiY0MjXJxuDVhy2AiW9aefzKYq
	a2Ani0og==;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK6x-000000053cZ-3Kdz
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:46:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK6u-0002Yz-Ms; Mon, 26 Jan 2026 11:46:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK6v-002ZCd-0b;
	Mon, 26 Jan 2026 11:46:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK6u-00000003O8l-3wdN;
	Mon, 26 Jan 2026 11:46:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 11:45:10 +0100
Message-ID: <20260126104619.782459-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_104623_967916_59C68CE1 
X-CRM114-Status: GOOD (  12.07  )
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
Subject: [PATCH v2] test: py: add dry run check for FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A dry run should not alter system state in a way that would inhibit
normal operation or repeated dry runs.

The FIT image boot in the test suite, however, reduces the VFS root's
reference count beyond the initial value before the bootm.

This led to a warning on boot that can be reproduced by repeating the
dry run multiple times:

  FAILED test/py/test_fit.py::test_fit_dryrun -
	AssertionError: ['WARNING: at fs/fs.c:255/mntput()!',
			 'WARNING: refcount for mount "/" becomes negative']

This issue is now fixed, so add a regression test, so it doesn't
resurface.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - fix typo: s/dyrun_attempts/dryrun_attempts/
  - adapt commit message after Sascha's fix
---
 test/py/helper.py   | 14 ++++++++++++++
 test/py/test_fit.py | 36 ++++++++++++++++++++++++++++--------
 2 files changed, 42 insertions(+), 8 deletions(-)

diff --git a/test/py/helper.py b/test/py/helper.py
index ce8e236b4689..17d40c584679 100644
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
index 1a2efde73f21..0f8fffee3361 100644
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
+    barebox.run_check("global dryrun_attempts=5")
+    barebox.run_check('[ "$global.dryrun_attempts" = 5 ]')
+
+    for i in range(5):
+        stdout, _, _ = barebox.run(f"bootm -d -v {fitimage}")
+        errors = filter_errors(stdout)
+        assert errors == [], errors
+
+    # If we actually did boot, this variable would be undefined
+    barebox.run_check('[ "$global.dryrun_attempts" = 5 ]')
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
         assert of_get_property(barebox, "/chosen/barebox-version") == ver, \
-- 
2.47.3



