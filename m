Delivery-date: Mon, 29 Sep 2025 10:05:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sm-002LbO-10
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sk-0000hp-Bs
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ydcMBtR7f/u7RCZL0MU9XOIletSu0sQsi5/ufXuNGk=; b=m7obwqcgVRxpLub+wVMJZE29bx
	t+4a/CiHANNSf+zPgDmPkjBv/MPIp8pmLfo2xFDKQoxv2ZUHGEociSsq/bJkbAOnb5m1vgce8iTy/
	/AzGuthFu5BEzK+oCSUzjxbokolRe34AhYUCVlUF+1QU9GsAeHxBMNewrCtKItww1mRBGkiAXiLqH
	h+qitmjUEdEEKIugZ6Sfn/a378vnj4UXNug7bT6vQgEogXz2GDQYbWwbK0x9pYHb2btbQ/qVpIXbF
	zGByWbbSRJPvMgKVpOYPOOb7IpZ6jV9IOMi2FfHd/dW7XmaRMyHgS64AbuT8BDyAoUabO9cupOmxG
	FT1YgAGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38sC-00000001iKs-2aEM;
	Mon, 29 Sep 2025 08:04:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38s9-00000001iGr-0gZZ
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:04:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v38s6-000070-Ay; Mon, 29 Sep 2025 10:04:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 29 Sep 2025 10:03:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250929-tlv-integration-v2-4-55f75da7e670@pengutronix.de>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=5327; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=XOzlwhezJ9Sm3d7w8PXDpBTAk4ahBMbJ4K4yP6ZUg2U=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4Zds/q+TNg/S0Vgu1k9yX95u0fj4/f8omO91r37NW7
 9f9MtuDs6OUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjCReTqMDD0yX99f3lO+z1dm
 6t38o+uit3Iun6YhHyd+qFVgg3qCVBrD/zTGarlWv48fk1+4LWH35d2h+4CDI2SvnPE549rnn/0
 WswIA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_010437_206709_7BA1F911 
X-CRM114-Status: GOOD (  10.79  )
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
Subject: [PATCH v2 4/9] test: move fitimage testdata generation to fixture
 and drop script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Get rid of scripts/generate_testfs.sh and the logic around it. Test data
generation should happen within pytest.

Move test data (its config for fitimages) from .github/testfs to
test/testdata for good measure.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml          | 10 -----
 scripts/generate_testfs.sh                         | 33 -----------------
 test/py/test_fit.py                                | 43 +++++++++++++++++++++-
 .../testdata}/multi_v7_defconfig-gzipped.its       |  0
 .../testdata}/multi_v8_defconfig-gzipped.its       |  0
 5 files changed, 42 insertions(+), 44 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 604f1db2fb..4569e475bc 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -97,16 +97,6 @@ jobs:
           cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin ${KBUILD_OUTPUT}/
         fi
 
-    - name: Populate testfs
-      if: steps.used-features.outputs.testfs == 'true'
-      run: |
-        export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
-        export KBUILD_DEFCONFIG=${{matrix.defconfig}}
-
-        # Just use already built dtc
-        export PATH="$PATH:${KBUILD_OUTPUT}/scripts/dtc/"
-        exec scripts/generate_testfs.sh
-
     - name: labgrid-pytest
       if: steps.build.outcome == 'success'
       run: |
diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
deleted file mode 100755
index d52772e6bf..0000000000
--- a/scripts/generate_testfs.sh
+++ /dev/null
@@ -1,33 +0,0 @@
-#!/bin/sh
-
-MKIMAGE=${MKIMAGE:-mkimage}
-KGZIP=${KGZIP:-gzip}
-
-set -e
-
-if [ -z "${KBUILD_OUTPUT}" ] || [ -z "${KBUILD_DEFCONFIG}" ] ; then
-	2>&1 echo "KBUILD_OUTPUT and KBUILD_DEFCONFIG must be set"
-	exit 1
-fi
-
-rm -rf "${KBUILD_OUTPUT}/testfs/"
-mkdir -p ${KBUILD_OUTPUT}/testfs
-
-generate_fit()
-{
-    cat ${KBUILD_OUTPUT}/images/barebox-dt-2nd.img | \
-	${KGZIP} -n -f -9 >${KBUILD_OUTPUT}/barebox-dt-2nd.img.gz
-
-    cp .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ${KBUILD_OUTPUT}/
-
-    find COPYING LICENSES/ | cpio -o -H newc | ${KGZIP} \
-						   > ${KBUILD_OUTPUT}/ramdisk.cpio.gz
-
-    ${MKIMAGE} -G $PWD/test/self/development_rsa2048.pem -r \
-	       -f ${KBUILD_OUTPUT}/${KBUILD_DEFCONFIG}-gzipped.its \
-	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
-}
-
-if [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ]; then
-	generate_fit
-fi
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 3b2b8ff871..5620996e9d 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -1,7 +1,11 @@
 # SPDX-License-Identifier: GPL-2.0-or-later
 
 import re
+import os
 import pytest
+import shutil
+import subprocess
+from pathlib import Path
 from .helper import of_get_property
 
 
@@ -15,7 +19,44 @@ def generate_bootscript(barebox, image, name="test"):
     return name
 
 
-def test_fit(barebox, env, target, barebox_config, testfs):
+def run(cmd, **kwargs):
+    subprocess.run(cmd, check=True, **kwargs)
+
+
+@pytest.fixture(scope="module")
+def fit_testdata(barebox_config, testfs):
+    its_name = f"{barebox_config['CONFIG_NAME']}-gzipped.its"
+    its_location = Path("test/testdata")
+    builddir = Path(os.environ['LG_BUILDDIR'])
+    outdir = Path(testfs)
+    outfile = outdir / "barebox-gzipped.fit"
+
+    if not os.path.isfile(its_location / its_name):
+        pytest.skip(f"no fitimage testdata found at {its_location}")
+
+    shutil.copy(its_location / its_name, builddir)
+
+    try:
+        run(["gzip", "-n", "-f", "-9"],
+            input=(builddir / "images" / "barebox-dt-2nd.img").read_bytes(),
+            stdout=open(builddir / "barebox-dt-2nd.img.gz", "wb"))
+
+        find = subprocess.Popen(["find", "COPYING", "LICENSES/"], stdout=subprocess.PIPE)
+        cpio = subprocess.Popen(["cpio", "-o", "-H", "newc"], stdin=find.stdout, stdout=subprocess.PIPE)
+        gzip = subprocess.Popen(["gzip"], stdin=cpio.stdout,
+                                stdout=open(builddir / "ramdisk.cpio.gz", "wb"))
+        find.wait(); cpio.wait(); gzip.wait()
+
+        run([ "mkimage", "-G", "test/self/development_rsa2048.pem", "-r", "-f",
+             str(builddir / its_name), str(outfile) ])
+    except FileNotFoundError as e:
+        pytest.skip(f"Skip dm tests due to missing dependency: {e}")
+
+    yield
+
+    os.remove(outfile)
+
+def test_fit(barebox, target, testfs, fit_testdata):
     _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
     if returncode != 0:
         pytest.xfail("skipping test due to missing FIT image")
diff --git a/.github/testfs/multi_v7_defconfig-gzipped.its b/test/testdata/multi_v7_defconfig-gzipped.its
similarity index 100%
rename from .github/testfs/multi_v7_defconfig-gzipped.its
rename to test/testdata/multi_v7_defconfig-gzipped.its
diff --git a/.github/testfs/multi_v8_defconfig-gzipped.its b/test/testdata/multi_v8_defconfig-gzipped.its
similarity index 100%
rename from .github/testfs/multi_v8_defconfig-gzipped.its
rename to test/testdata/multi_v8_defconfig-gzipped.its

-- 
2.51.0.297.gca2559c1d6



