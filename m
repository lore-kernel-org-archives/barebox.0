Delivery-date: Fri, 26 Sep 2025 12:15:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tp-001IJI-1s
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 12:15:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25To-0004pC-Tx
	for lore@pengutronix.de; Fri, 26 Sep 2025 12:15:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O1YHu4fJWbzUuJ8RHNiIUcy31RUQmWCSW1qtk4OLWaM=; b=ELlneGG0YzOVvX/SW/xxOFR6lX
	agpoqd4XBGpVc2eD3cEamqY2KhS415eDqQ0k740byQbE6d15XIMS5K/aiUbFQmjLqRlnVGPdPKMjZ
	k4rH40Ms+1QncVORPkqNelsCNVDDp7kBX78jGbOJDxk0dkpdm/9Odf21bD1LW7WiR41eqwHtg3XOC
	zx0EcMBBo8eNjhoUqdyBO9XYFtDzYVF2nHUnlvTVWw+rMXN8hmGzuUzN/AGeXWS+9A7hUkcJ/xNMj
	yh1qZMD//ot54eq0CVOUBxIwyqVO/7dMjWIjq6Bdw+gH1qwZmOrGNafCbxCXEl3Tkh5SAFNyJzJpA
	FNhW360g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TG-00000000Id2-0Wmt;
	Fri, 26 Sep 2025 10:14:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TB-00000000IWm-1XdG
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 10:14:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v25T8-0004Ji-Dz; Fri, 26 Sep 2025 12:14:26 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 26 Sep 2025 12:14:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-tlv-integration-v1-3-45dc68b9b602@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3949; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=sj9GfvOKH/CfqsinF0GiqZ3O+iMYjK8JSzcPl6CH47Q=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ll4XPmGzbMiswNUq1sYLnly645azN+uRz+2bN08Xp
 GxpOL3fqKOUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjCR6YwM/1MuCcfed7b1uq+4
 Yy17ya9jfcd88jQXiD7Uzkj9WreT/xojw8lQo6CqqRZC6yaFdrZacqhWsT/asoyZe86tpbcn9Zj
 rsAEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_031429_461844_4E81FD39 
X-CRM114-Status: GOOD (  10.26  )
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
Subject: [PATCH 3/7] test: move dm-verity testdata generation to fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Simplify barebox integration test setup by moving logic away from
scripts/ and .github/.

Instead of generating testdata in separate scripts, they should be
implemented as testfs fixtures which are automatically ran as part of
the test suite.

Includes error handling and cleanup.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/generate_testfs.sh | 44 ---------------------------------------
 test/py/test_dm.py         | 51 ++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 49 insertions(+), 46 deletions(-)

diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
index 1c358ff846..3c200bd401 100755
--- a/scripts/generate_testfs.sh
+++ b/scripts/generate_testfs.sh
@@ -28,47 +28,3 @@ generate_fit()
 	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
 }
 [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit
-
-alias pad128k="dd if=/dev/zero bs=128k count=1 status=none"
-
-generate_dm_verity()
-{
-    work=$(mktemp -d)
-    cd ${work}
-
-    # Create two dummy files; use lots of padding to make sure that
-    # when we alter the contents of 'english' in root-bad, 'latin' is
-    # still be readable, as their contents wont (a) share the same
-    # hash block and (b) the block cache layer won't accedentally read
-    # the invalid block.
-
-    pad128k  >latin
-    echo -n "veritas vos liberabit" >>latin
-    pad128k >>latin
-
-    pad128k  >english
-    echo -n "truth will set you free" >>english
-    pad128k >>english
-
-    truncate -s 1M good.fat
-    mkfs.vfat good.fat
-    mcopy -i good.fat latin english ::
-
-    veritysetup format \
-		--root-hash-file=good.hash \
-		good.fat good.verity
-
-    sed 's/truth will set you free/LIAR LIAR PANTS ON FIRE/' \
-	<good.fat >bad.fat
-
-    cd -
-    cp \
-	${work}/good.fat \
-	${work}/good.verity \
-	${work}/good.hash \
-	${work}/bad.fat \
-	${KBUILD_OUTPUT}/testfs
-
-    rm -rf ${work}
-}
-generate_dm_verity
diff --git a/test/py/test_dm.py b/test/py/test_dm.py
index 8bdacf7b4e..837881f4af 100644
--- a/test/py/test_dm.py
+++ b/test/py/test_dm.py
@@ -4,10 +4,57 @@ import re
 import pytest
 from .helper import of_get_property
 
+import os, subprocess, shutil
 
+def pad128k(f):
+    f.write(b"\0" * 128 * 1024)
 
-def test_dm_verity(barebox, testfs):
-    barebox.run_check("cd /mnt/9p/testfs")
+@pytest.fixture(scope="module")
+def dm_testdata(testfs):
+    path = os.path.join(testfs, "dm")
+    os.makedirs(path, exist_ok=True)
+    cwd = os.getcwd()
+    os.chdir(path)
+
+    with open("latin", "wb") as f:
+        pad128k(f)
+        f.write(b"veritas vos liberabit")
+        pad128k(f)
+
+    with open("english", "wb") as f:
+        pad128k(f)
+        f.write(b"truth will set you free")
+        pad128k(f)
+
+    try:
+        subprocess.run(["truncate", "-s", "1M", "good.fat"], check=True)
+        subprocess.run(["mkfs.vfat", "good.fat"], check=True)
+        subprocess.run(["mcopy", "-i", "good.fat", "latin", "english", "::"], check=True)
+
+        subprocess.run([
+            "veritysetup", "format",
+            "--root-hash-file=good.hash",
+            "good.fat", "good.verity"
+        ], check=True)
+    except FileNotFoundError as e:
+        pytest.skip(f"Skip dm tests due to missing dependency: {e}")
+
+    with open("good.fat", "rb") as f: data = f.read()
+    with open("bad.fat", "wb") as f:
+        f.write(data.replace(
+            b"truth will set you free",
+            b"LIAR LIAR PANTS ON FIRE"
+        ))
+
+    os.chdir(cwd)
+
+    yield path
+
+    shutil.rmtree(path)
+
+
+def test_dm_verity(barebox, dm_testdata):
+    barebox.run_check("cd /mnt/9p/testfs/dm")
 
     # Since commands run in a subshell, export the root hash in a
     # global, so that we can access it from subsequent commands

-- 
2.51.0.297.gca2559c1d6



