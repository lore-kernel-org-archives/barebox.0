Delivery-date: Fri, 09 Jan 2026 18:01:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFrF-0033hg-1X
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 18:01:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFrE-0008In-PZ
	for lore@pengutronix.de; Fri, 09 Jan 2026 18:01:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZyMBkRrKr+AIYNqdM4MRhfvgM5FPy2r2WNwaSOAn9Wo=; b=XEHA7jO/DmgBDJs2Kq1a+GotY0
	IeOGSuu0cXmIQQ5Qn8gN0h5dktmLFb9VxxNk0+JiP+LSuYQYxq+VSqwt3Sp5P+0e0h8VP2iMnNF4Z
	CbEOF9AmWXcEmhmEV657CVe446p45N24nnLp1+v+q7+B2QRClm/GR4MPy0BI10qrCZ1M8ZcvvaDri
	ufdUqBB8joafMY3yAv6bWwLzPjC88d8pMr1ONmvjRB+jL7mr6lvcCfFRf1MhXzhV5rUirZqMCp/4W
	hZIw4yB1ZGMVWjzIhfTOuUbLmkSUQI1K2PPIruaMQ7kLUpNFHtjOCLzoHfCltahzHsPCdh3H04CNx
	+0lwSbWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqS-00000002grO-0LyT;
	Fri, 09 Jan 2026 17:00:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqP-00000002gp1-06uZ
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 17:00:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1veFqN-0007jb-C9; Fri, 09 Jan 2026 18:00:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  9 Jan 2026 17:57:31 +0100
Message-ID: <20260109170007.805177-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260109170007.805177-1-a.fatoum@barebox.org>
References: <20260109170007.805177-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_090013_072395_E5FD0773 
X-CRM114-Status: GOOD (  14.22  )
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
Subject: [PATCH 5/5] ci: add Debian ARM64 EFI loader boot test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Download the Debian nocloud image, boot with barebox into Linux and do
some rudimentary tests on the shell and then cache it for next time.

To make it easier for manual use, the downloading is done by a separate
script. The download info message is intentionally a warning, so we have
a chance of noticing if the Github Actions caching doesn't work as we
expect, so we can take measures instead of needlessly hitting Debian
infra too often.

I tried using runs-on: ubuntu-latest-arm, but there are less ARM workers
and the job takes longer to schedule it seems, so sticking with the normal
x86 runners.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml | 20 +++++++++++++
 .gitignore                                |  4 +++
 scripts/fetch-os.sh                       | 35 +++++++++++++++++++++++
 3 files changed, 59 insertions(+)
 create mode 100755 scripts/fetch-os.sh

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index d9822fc206a5..de06fab3e136 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -28,6 +28,11 @@ jobs:
             defconfig: multi_v8_defconfig
             lgargs: --runxfail
 
+          - ARCH: arm
+            lgenv: test/arm/multi_v8_efiloader_defconfig.yaml
+            defconfig: multi_v8_efiloader_defconfig
+            osimg: debian-13-nocloud-arm64.qcow2
+
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
             defconfig: qemu-malta_defconfig
@@ -64,6 +69,21 @@ jobs:
     - name: Checkout code
       uses: actions/checkout@v4
 
+    - name: Cache OS image
+      id: cache-osimg
+      if: ${{ matrix.osimg != '' }}
+      uses: actions/cache@v4
+      with:
+        path: ${{ matrix.osimg }}
+        key: osimg-${{ matrix.osimg }}
+        restore-keys: osimg-${{ matrix.osimg }}-
+
+    - name: Download OS image
+      if: ${{ steps.cache-osimg.outputs.cache-hit != 'true' && matrix.osimg != '' }}
+      run: |
+        echo "::warning::Cache miss - downloading fresh OS image from Debian infra."
+        scripts/fetch-os.sh
+
     - name: Determine used features
       id: used-features
       run: |
diff --git a/.gitignore b/.gitignore
index 74cb7b092834..1b335c330091 100644
--- a/.gitignore
+++ b/.gitignore
@@ -112,3 +112,7 @@ default.profdata
 default.profraw
 coverage.info
 coverage_html/
+
+# Disk images (used for testing)
+/*.raw
+/*.qcow2
diff --git a/scripts/fetch-os.sh b/scripts/fetch-os.sh
new file mode 100755
index 000000000000..649e4efe9a05
--- /dev/null
+++ b/scripts/fetch-os.sh
@@ -0,0 +1,35 @@
+#!/usr/bin/env bash
+
+wgetopts=""
+if [ -n "$GITHUB_ACTIONS" ]; then
+	wgetopts="-nv"
+fi
+
+set -euo pipefail
+
+declare -A images=(
+	["debian-13-nocloud-arm64.qcow2"]="https://cloud.debian.org/images/cloud/trixie/latest/debian-13-nocloud-arm64.qcow2"
+)
+
+found=0
+dl=0
+
+for image in "${!images[@]}"; do
+	if [ -e "$image" ]; then
+		((++found))
+	else
+		wget -c $wgetopts -O "$image" "${images[$image]}"
+		((++dl))
+	fi
+done
+
+if [ "$found" -eq 0 ]; then
+	echo -n "No images found. ";
+else
+	echo -n "Found $found images(s). ";
+fi
+if [ "$dl" -eq 0 ]; then
+	echo "Nothing needed to be downloaded.";
+else
+	echo "$dl missing images downloaded.";
+fi
-- 
2.47.3



