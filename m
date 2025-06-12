Delivery-date: Thu, 12 Jun 2025 12:07:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqg-006TYK-2T
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:07:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqf-00077P-Fq
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:07:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PHT6cA6d/HiNqhUANbCs3XN9J14v6vTAfHY47OtbWZo=; b=M6iwRo4DTPbxCvBEKexRK54wyY
	2xIEpi0HTNJlC/cKmJ7E/eS/PP2BtBDCHYHgRMfDov1gaxyVOcyQ+/6mw2uhQ/Rw4imnHfnXsDXay
	fQZzIYnoXFjG1HMgLGaRNmtCYuKfzas3eUk+L6+iDHCWjjr1jiHLOdqIFtMmDPMPVTs71sPZyegUc
	9yoHctjAuU9KJlXLC1Xp4aTQqS7ky6hx9Cf23WWTb8q4hCbFkjGGXMkJkqGl7KdjZSb4vLDP8IOBj
	vh9h6QmSenr0Gg8r1DTWo5lVLhfMIfNe87AQPtd1RFTKrFQLTzQFJcJaSwHokzokoIBhdcR8aQLLP
	JQ2bL/zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPeqB-0000000Cv26-2kit;
	Thu, 12 Jun 2025 10:07:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdjC-0000000CjsU-15vA
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:56:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPdjA-0001k5-Ma; Thu, 12 Jun 2025 10:56:04 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 12 Jun 2025 10:56:00 +0200
Message-Id: <20250612085603.4190573-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612085603.4190573-1-a.fatoum@barebox.org>
References: <20250612085603.4190573-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015606_308680_F0D0CD11 
X-CRM114-Status: GOOD (  15.39  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ci: pytest: mount virtfs with signed FIT image into VMs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is in preparation for adding a FIT boot pytest.

We intentionally don't use scripts/make_fit.py as its compression is
broken and we want to sign the FIT image, so we can test that in future
too.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/testfs/multi_v7_defconfig-gzipped.its | 57 +++++++++++++++++++
 .github/testfs/multi_v8_defconfig-gzipped.its | 57 +++++++++++++++++++
 .github/workflows/test-labgrid-pytest.yml     | 20 ++++++-
 scripts/generate_testfs.sh                    | 26 +++++++++
 4 files changed, 159 insertions(+), 1 deletion(-)
 create mode 100644 .github/testfs/multi_v7_defconfig-gzipped.its
 create mode 100644 .github/testfs/multi_v8_defconfig-gzipped.its
 create mode 100755 scripts/generate_testfs.sh

diff --git a/.github/testfs/multi_v7_defconfig-gzipped.its b/.github/testfs/multi_v7_defconfig-gzipped.its
new file mode 100644
index 000000000000..11595c39baa1
--- /dev/null
+++ b/.github/testfs/multi_v7_defconfig-gzipped.its
@@ -0,0 +1,57 @@
+/dts-v1/;
+
+/ {
+    description = "fitImage for testing";
+    #address-cells = <1>;
+    images {
+        kernel-1 {
+            description = "barebox image";
+            data = /incbin/("barebox-dt-2nd.img.gz");
+            type = "kernel";
+            arch = "arm";
+            os = "linux";
+            compression = "gzip";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        fdt-qemu-virt32.dtb {
+            description = "Flattened Device Tree blob";
+            data = /incbin/("arch/arm/dts/qemu-virt32.dtb");
+            type = "flat_dt";
+            arch = "arm";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        ramdisk-1 {
+            description = "initramfs";
+            data = /incbin/("ramdisk.cpio.gz");
+            type = "ramdisk";
+            arch = "arm";
+            os = "linux";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+    };
+
+    configurations {
+        default = "conf-qemu-virt32.dtb";
+        conf-qemu-virt32.dtb {
+            description = "Qemu Virt32";
+            kernel = "kernel-1";
+            fdt = "fdt-qemu-virt32.dtb";
+            ramdisk = "ramdisk-1";
+            compatible = "linux,dummy-virt";
+            signature-1 {
+                algo = "sha256,rsa2048";
+                sign-images = "kernel", "fdt", "ramdisk";
+                signer-name = "None";
+                signer-version = "None";
+            };
+        };
+    };
+};
diff --git a/.github/testfs/multi_v8_defconfig-gzipped.its b/.github/testfs/multi_v8_defconfig-gzipped.its
new file mode 100644
index 000000000000..5ce678eec9a8
--- /dev/null
+++ b/.github/testfs/multi_v8_defconfig-gzipped.its
@@ -0,0 +1,57 @@
+/dts-v1/;
+
+/ {
+    description = "fitImage for testing";
+    #address-cells = <1>;
+    images {
+        kernel-1 {
+            description = "barebox image";
+            data = /incbin/("barebox-dt-2nd.img.gz");
+            type = "kernel";
+            arch = "arm64";
+            os = "linux";
+            compression = "gzip";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        fdt-qemu-virt64.dtb {
+            description = "Flattened Device Tree blob";
+            data = /incbin/("arch/arm/dts/qemu-virt64.dtb");
+            type = "flat_dt";
+            arch = "arm64";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+        ramdisk-1 {
+            description = "initramfs";
+            data = /incbin/("ramdisk.cpio.gz");
+            type = "ramdisk";
+            arch = "arm64";
+            os = "linux";
+            compression = "none";
+            hash-1 {
+                algo = "sha256";
+            };
+        };
+    };
+
+    configurations {
+        default = "conf-qemu-virt64.dtb";
+        conf-qemu-virt64.dtb {
+            description = "Qemu Virt64";
+            kernel = "kernel-1";
+            fdt = "fdt-qemu-virt64.dtb";
+            ramdisk = "ramdisk-1";
+            compatible = "linux,dummy-virt";
+            signature-1 {
+                algo = "sha256,rsa2048";
+                sign-images = "kernel", "fdt", "ramdisk";
+                signer-name = "None";
+                signer-version = "None";
+            };
+        };
+    };
+};
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index d4043de961b2..64618582a940 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -80,6 +80,20 @@ jobs:
         if [ ${{matrix.arch}} = "riscv" ]; then
           cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin ${KBUILD_OUTPUT}/
         fi
+
+    - name: Populate testfs
+      run: |
+        export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
+        export KBUILD_DEFCONFIG=${{matrix.defconfig}}
+
+        for i in ${{matrix.lgenv}}; do
+          grep -wq 'testfs' "$i" || continue
+
+          # Just use already built dtc
+          export PATH="$PATH:${KBUILD_OUTPUT}/scripts/dtc/"
+          exec scripts/generate_testfs.sh
+        done
+
     - name: labgrid-pytest
       run: |
         export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
@@ -87,10 +101,14 @@ jobs:
         for i in ${{matrix.lgenv}}; do
           grep -wq '\(QEMUDriver\|ExternalConsoleDriver\):' "$i" || continue
 
+          if grep -wq 'testfs' "$i"; then
+            extraargs="--fs testfs=${KBUILD_OUTPUT}/testfs"
+          fi
+
           cfg=$(basename $i .yaml)
           echo "Testing $cfg"
           labgrid-pytest --lg-env $i test/py --verbosity=1 \
-          --junitxml=$cfg.tests.xml --lg-log=log/$cfg
+          --junitxml=$cfg.tests.xml --lg-log=log/$cfg $extraargs
         done
 
     - name: Publish Test Results
diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
new file mode 100755
index 000000000000..c5d24f7e1af8
--- /dev/null
+++ b/scripts/generate_testfs.sh
@@ -0,0 +1,26 @@
+#!/bin/sh
+
+MKIMAGE=${MKIMAGE:-mkimage}
+KGZIP=${KGZIP:-gzip}
+
+set -e
+
+if [ -z "${KBUILD_OUTPUT}" ] || [ -z "${KBUILD_DEFCONFIG}" ] ; then
+	2>&1 echo "KBUILD_OUTPUT and KBUILD_DEFCONFIG must be set"
+	exit 1
+fi
+
+rm -rf "${KBUILD_OUTPUT}/testfs/"
+mkdir -p ${KBUILD_OUTPUT}/testfs
+
+cat ${KBUILD_OUTPUT}/images/barebox-dt-2nd.img | \
+  ${KGZIP} -n -f -9 >${KBUILD_OUTPUT}/barebox-dt-2nd.img.gz
+
+cp .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ${KBUILD_OUTPUT}/
+
+find COPYING LICENSES/ | cpio -o -H newc | ${KGZIP} \
+  > ${KBUILD_OUTPUT}/ramdisk.cpio.gz
+
+${MKIMAGE} -G $PWD/test/self/development_rsa2048.pem -r \
+      -f ${KBUILD_OUTPUT}/${KBUILD_DEFCONFIG}-gzipped.its \
+	 ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
-- 
2.39.5



