Delivery-date: Fri, 26 Sep 2025 12:15:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25To-001IIJ-2B
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 12:15:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tn-0004nb-Ak
	for lore@pengutronix.de; Fri, 26 Sep 2025 12:15:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hBaW2QetkfZzC1YQbvSlg2qJKl/ai+f3kw00gWdLho=; b=zVrNIL75tv7JZsjd0eJ4G5DVs2
	E1TXwRPn8I16tPzW0KFINQ0sPRIGPO/lMRP9wGvKnyKpYDR+wOBWQE2mzniglTIk091l4QGf7ttb6
	X+VcNcPyJlI8gf0t/nmVczK/9giBknwitSbTb9IM0HCtKp4WLW2vh3KgzX84mBXt3yuqQn3untZBD
	EXIsuDaUrVDa0Yy04zpXp8PuItaufx7hklRnwAbhms/QrEpdCYZkVmUc4EOOZkQlp3I2i3mXbMTdh
	jUPJpsGs7tKRfvwHm7dyGzeYQn13jRe4cxS8Jerf0igOqyEVRBSPUgKrMGgurodDVtPF68HwEzKKx
	WiiBMHKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TH-00000000Ieo-2aLY;
	Fri, 26 Sep 2025 10:14:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TB-00000000IWk-1b7R
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 10:14:32 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v25T8-0004Ji-Bt; Fri, 26 Sep 2025 12:14:26 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 26 Sep 2025 12:14:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-tlv-integration-v1-1-45dc68b9b602@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3215; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=r/eCBbPChqCFlTdd19sscp01KvvFB1MHIX11MeOFDEM=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ll5bHTnfTTj3oOvDGVsTO0w1Tc6sD11nnfCb36g21
 tNidpJARykLgxgXg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCKW+YwMd0oEyvrTObaGWFWd
 31KxzOdX/ektOjpX21RDl/VH7P+ux8jwbeuyssrrL04k1Frn1Zv8s82LSRdiWuOdUF+y+XbhDjc
 mAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_031429_492213_63C726AD 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] test: when testfs feature is available, always enable
 it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add 9pfs devices to the qemu commandline on all platforms that support
it (multi_v7, multi_v8) so tests relying upon it can be ran without
specifying --fs testfs=${KBUILD_OUTPUT}/testfs.

Moving logic out of the github workflow into pytest makes integration
tests more accessible to developers.

Introduce the fixture in existing test and drop obsolete test.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 3 ---
 conftest.py                               | 6 ++++++
 test/py/test_dm.py                        | 6 +-----
 test/py/test_fit.py                       | 4 ----
 4 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index ccf8ae172c..604f1db2fb 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -116,9 +116,6 @@ jobs:
           grep -wq '\(QEMUDriver\|ExternalConsoleDriver\):' "$i" || continue
 
           extraargs="${{matrix.lgargs}}"
-          if grep -wq 'testfs' "$i"; then
-            extraargs="${extraargs} --fs testfs=${KBUILD_OUTPUT}/testfs"
-          fi
 
           cfg=$(basename $i .yaml)
           echo "Testing $cfg"
diff --git a/conftest.py b/conftest.py
index 06321c938d..00969e62df 100644
--- a/conftest.py
+++ b/conftest.py
@@ -208,6 +208,12 @@ def strategy(request, target, pytestconfig):
     for arg in pytestconfig.option.qemu_arg:
         strategy.append_qemu_args(arg)
 
+    if "testfs" in features:
+        if not any(fs and fs[0] == "testfs" for fs in pytestconfig.option.qemu_fs):
+            testfs_path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
+            pytestconfig.option.qemu_fs.append(["testfs", testfs_path])
+            os.makedirs(testfs_path, exist_ok=True)
+
     for i, fs in enumerate(pytestconfig.option.qemu_fs):
         if virtio:
             path = fs.pop()
diff --git a/test/py/test_dm.py b/test/py/test_dm.py
index a9debd85b5..8bdacf7b4e 100644
--- a/test/py/test_dm.py
+++ b/test/py/test_dm.py
@@ -6,11 +6,7 @@ from .helper import of_get_property
 
 
 
-def test_dm_verity(barebox):
-    _, _, returncode = barebox.run("ls /mnt/9p/testfs")
-    if returncode != 0:
-        pytest.xfail("skipping test due to missing --fs testfs=")
-
+def test_dm_verity(barebox, testfs):
     barebox.run_check("cd /mnt/9p/testfs")
 
     # Since commands run in a subshell, export the root hash in a
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 1a23a53a32..08d5feba5c 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -19,10 +19,6 @@ def test_fit(barebox, env, target, barebox_config):
     if 'testfs' not in env.get_target_features():
         pytest.xfail("testfs feature not specified")
 
-    _, _, returncode = barebox.run("ls /mnt/9p/testfs")
-    if returncode != 0:
-        pytest.xfail("skipping test due to missing --fs testfs=")
-
     _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
     if returncode != 0:
         pytest.xfail("skipping test due to missing FIT image")

-- 
2.51.0.297.gca2559c1d6



