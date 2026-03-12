Delivery-date: Thu, 12 Mar 2026 16:03:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZF-00ArgS-1v
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 16:03:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZF-0000ZW-Gl
	for lore@pengutronix.de; Thu, 12 Mar 2026 16:03:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yedi3tJMii9Ulx5Y+YFltfqSmad2iHOTEF7ZgCQvOA4=; b=1pCXo3ZMi1Gw8YEkbOMI75cuqE
	UCN45SeAxBOn8z4HkcjUefk8xF7xigQmX1gYCJOKMl5UwPX0cZnjO51nU5MSdxtXD2AXwvNcMrSuw
	11mXNKx0YQuwP/opFJe6oqqYyzflvVg7seuxhpbDCB0NobAat/blBmtphR+BaKWCy8P/vNpWrFDPW
	I7lzZPeWKhxvoF834vGSF4VYl/ifiF8oeov76+oNuqxlM7pY+4W9ZUJyUH/C9W1bU40Vt2jc0y0xN
	1azwJfylNgjmWoLLxKa2Sb6I9nUpBqgIQy7rOAEg5tZTw3Q9akSdrZF8DHoMUAabW4bL0J9mqgGAZ
	vyE42MhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYc-0000000EI7G-1AgQ;
	Thu, 12 Mar 2026 15:02:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYX-0000000EI3D-2Q8f
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 15:02:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYW-0008VQ-3M; Thu, 12 Mar 2026 16:02:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYU-0052Q5-1f;
	Thu, 12 Mar 2026 16:02:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-000000093tN-0jQK;
	Thu, 12 Mar 2026 15:45:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:56 +0100
Message-ID: <20260312144505.2159816-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_080233_764698_21606ED1 
X-CRM114-Status: GOOD (  14.86  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 13/16] test: py: add test for initrd concatenation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that the FIT code supports processing multiple entries in the
ramdisk property, add a test to ensure this doesn't regress.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_fit.py                          | 38 +++++++++++++-------
 test/py/testfs.py                            | 23 ++++++++++++
 test/testdata/multi_v7_defconfig-gzipped.its | 28 +++++++++++++--
 test/testdata/multi_v8_defconfig-gzipped.its | 28 +++++++++++++--
 4 files changed, 98 insertions(+), 19 deletions(-)
 create mode 100644 test/py/testfs.py

diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 8bcee6a75f23..0fd5a3c5dcc5 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -7,6 +7,7 @@ import shutil
 import subprocess
 from pathlib import Path
 from .helper import of_get_property, filter_errors
+from .testfs import mkcpio
 
 
 def generate_bootscript(barebox, image, name="test"):
@@ -37,16 +38,9 @@ def fit_testdata(barebox_config, testfs):
             input=(builddir / "images" / "barebox-dt-2nd.img").read_bytes(),
             stdout=open(builddir / "barebox-dt-2nd.img.gz", "wb"))
 
-        find = subprocess.Popen(["find", "COPYING", "LICENSES/"],
-                                stdout=subprocess.PIPE)
-        cpio = subprocess.Popen(["cpio", "-o", "-H", "newc"],
-                                stdin=find.stdout, stdout=subprocess.PIPE)
-        gzip = subprocess.Popen(["gzip"], stdin=cpio.stdout,
-                                stdout=open(builddir / "ramdisk.cpio.gz", "wb"))
-
-        find.wait()
-        cpio.wait()
-        gzip.wait()
+        mkcpio("COPYING", outdir / "ramdisk1.cpio.gz")
+        mkcpio("LICENSES/exceptions/", outdir / "ramdisk2.cpio")
+        mkcpio("LICENSES/preferred/", outdir / "ramdisk3.cpio.gz")
 
         run(["mkimage", "-G", "test/self/development_rsa2048.pem", "-r", "-f",
              str(builddir / its_name), str(outfile)])
@@ -105,6 +99,15 @@ def test_fit(barebox, strategy, fitimage):
 
     barebox.run_check("global linux.bootargs.testarg=barebox.chainloaded")
 
+    barebox.run_check("cat -o /tmp/ramdisks.cpio /mnt/9p/testfs/ramdisk*.cpio*")
+    [hashsum1] = barebox.run_check("md5sum /tmp/ramdisks.cpio")
+
+    hashsum1 = re.split("/tmp/ramdisks.cpio", hashsum1, maxsplit=1)[0]
+    # Get the actual size of the concatenated ramdisks file
+    [fileinfo] = barebox.run_check("ls -l /tmp/ramdisks.cpio")
+    # Parse the size from ls -l output (format: permissions links user group size ...)
+    actual_size = int(fileinfo.split()[1])
+
     boottarget = generate_bootscript(barebox, fitimage)
 
     with strategy.boot_barebox(boottarget) as barebox:
@@ -118,7 +121,16 @@ def test_fit(barebox, strategy, fitimage):
         bootargs = of_get_property(barebox, "/chosen/bootargs")
         assert "barebox.chainloaded" in bootargs
 
-        initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start", 0)
-        initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end", 0)
+        initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start", ncells=0)
+        initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end", ncells=0)
+        initrd_size = initrd_end - initrd_start
 
-        assert initrd_start < initrd_end
+        # Verify the DT-reported size matches the actual file size
+        assert initrd_size == actual_size, \
+            f"Initrd size mismatch: DT says {initrd_size}, file is {actual_size}"
+
+        [hashsum2] = barebox.run_check(f"md5sum {initrd_start}+{initrd_size}")
+
+        hashsum2 = re.split("/dev/mem", hashsum2, maxsplit=1)[0]
+
+        assert hashsum1 == hashsum2
diff --git a/test/py/testfs.py b/test/py/testfs.py
new file mode 100644
index 000000000000..3ead67c0621b
--- /dev/null
+++ b/test/py/testfs.py
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import subprocess
+
+
+def mkcpio(inpath, outname):
+    compress = outname.suffix == ".gz"
+
+    find = subprocess.Popen(["find", inpath], stdout=subprocess.PIPE)
+
+    with open(outname, "wb") as outfile:
+        cpio = subprocess.Popen(["cpio", "-o", "-H", "newc"], stdin=find.stdout,
+                                stdout=(subprocess.PIPE if compress else outfile))
+
+        find.stdout.close()
+
+        if compress:
+            gzip = subprocess.Popen(["gzip"], stdin=cpio.stdout, stdout=outfile)
+            cpio.stdout.close()
+            gzip.wait()
+
+        cpio.wait()
+        find.wait()
diff --git a/test/testdata/multi_v7_defconfig-gzipped.its b/test/testdata/multi_v7_defconfig-gzipped.its
index 11595c39baa1..1cb84fd41564 100644
--- a/test/testdata/multi_v7_defconfig-gzipped.its
+++ b/test/testdata/multi_v7_defconfig-gzipped.its
@@ -26,8 +26,30 @@
             };
         };
         ramdisk-1 {
-            description = "initramfs";
-            data = /incbin/("ramdisk.cpio.gz");
+            description = "initramfs 1 (compressed)";
+            data = /incbin/("testfs/ramdisk1.cpio.gz");
+            type = "ramdisk";
+            arch = "arm";
+            os = "linux";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        ramdisk-2 {
+            description = "initramfs 2 (uncompressed)";
+            data = /incbin/("testfs/ramdisk2.cpio");
+            type = "ramdisk";
+            arch = "arm";
+            os = "linux";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        ramdisk-3 {
+            description = "initramfs 3 (compressed)";
+            data = /incbin/("testfs/ramdisk3.cpio.gz");
             type = "ramdisk";
             arch = "arm";
             os = "linux";
@@ -44,7 +66,7 @@
             description = "Qemu Virt32";
             kernel = "kernel-1";
             fdt = "fdt-qemu-virt32.dtb";
-            ramdisk = "ramdisk-1";
+            ramdisk = "ramdisk-1", "ramdisk-2", "ramdisk-3";
             compatible = "linux,dummy-virt";
             signature-1 {
                 algo = "sha256,rsa2048";
diff --git a/test/testdata/multi_v8_defconfig-gzipped.its b/test/testdata/multi_v8_defconfig-gzipped.its
index 5ce678eec9a8..3786d0f12187 100644
--- a/test/testdata/multi_v8_defconfig-gzipped.its
+++ b/test/testdata/multi_v8_defconfig-gzipped.its
@@ -26,8 +26,30 @@
             };
         };
         ramdisk-1 {
-            description = "initramfs";
-            data = /incbin/("ramdisk.cpio.gz");
+            description = "initramfs 1 (compressed)";
+            data = /incbin/("testfs/ramdisk1.cpio.gz");
+            type = "ramdisk";
+            arch = "arm64";
+            os = "linux";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        ramdisk-2 {
+            description = "initramfs 2 (uncompressed)";
+            data = /incbin/("testfs/ramdisk2.cpio");
+            type = "ramdisk";
+            arch = "arm64";
+            os = "linux";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        ramdisk-3 {
+            description = "initramfs 3 (compressed)";
+            data = /incbin/("testfs/ramdisk3.cpio.gz");
             type = "ramdisk";
             arch = "arm64";
             os = "linux";
@@ -44,7 +66,7 @@
             description = "Qemu Virt64";
             kernel = "kernel-1";
             fdt = "fdt-qemu-virt64.dtb";
-            ramdisk = "ramdisk-1";
+            ramdisk = "ramdisk-1", "ramdisk-2", "ramdisk-3";
             compatible = "linux,dummy-virt";
             signature-1 {
                 algo = "sha256,rsa2048";
-- 
2.47.3



