Delivery-date: Mon, 05 Jun 2023 08:37:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qY-00BSHw-Es
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qV-0004EA-N6
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=amIP1TbCnDuS8x9+MOxTtv97ED1YRBhEggxrpoc8hCc=; b=b21fmH+PMF2VZQ1R3Sx+0maQQV
	Wm5NLDnppVPx+G7KTy2eIBVccNAShAd6VrSUNZB4v6FRFf//K5G4v3hms8agaz6lVYopouygyCims
	Hs4u5vES0f6M1JAs6yxXZM+S2JJAQGK9B8/B7XBOf27l3zWbNGY+873fxPhtfR+nagPWsJp/odWrv
	jXWLELaCngTmQ66qtNBGoAGuQVeK1OQnYSbpZ6d78SLsyuPS1PkRZygPYzVC7ogH4NuF6ZgCyshwS
	lwTX1VdmWWHki5jF0UQsAWIqnwHahcsIunVs0jg0fsjR0KIfkS2NFKqp9+l6uvc1xmRRItRHsqAIW
	ssNmqRlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pZ-00ENIC-0h;
	Mon, 05 Jun 2023 06:36:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pO-00EN89-2w
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pN-0003Wg-Ku; Mon, 05 Jun 2023 08:36:29 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-005CtX-VK; Mon, 05 Jun 2023 08:36:28 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pQk-Gc; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:21 +0200
Message-Id: <20230605063623.1254764-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233630_958916_DB46186A 
X-CRM114-Status: GOOD (  12.49  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/14] ci: build: dynamically generate build matrix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have some manual chunking of defconfigs, which makes it more
difficult to see on a glance which defconfig failed.

Let's add a job that generates a JSON of all available defconfigs
for the selected architectures and use that as build matrix for the
build job.

This gives us higher parallelism at the cost of more IO in the form
of container pulls and repository (--depth=1) fetches.

All in all, it seems to save 5 minutes execution time on average, so
let's make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml | 30 +++++++++++++++-----------
 scripts/list-defconfigs.sh             | 15 +++++++++++++
 2 files changed, 32 insertions(+), 13 deletions(-)
 create mode 100755 scripts/list-defconfigs.sh

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index c5c294300e03..ff9264721d87 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -2,8 +2,23 @@ name: build images
 
 on: [push, pull_request]
 
+env:
+  ARCH: arm mips powerpc riscv sandbox x86
+
 jobs:
+  defconfigs:
+    runs-on: ubuntu-latest
+    outputs:
+      matrix: ${{ steps.set-matrix.outputs.matrix }}
+    steps:
+      - name: Checkout code
+        uses: actions/checkout@v3
+
+      - name: Collect defconfigs
+        id: set-matrix
+        run: echo "matrix=$(scripts/list-defconfigs.sh $ARCH)" >> $GITHUB_OUTPUT
   build:
+    needs: defconfigs
     runs-on: ubuntu-latest
     container:
       image: ghcr.io/barebox/barebox/barebox-ci:latest
@@ -12,18 +27,7 @@ jobs:
 
     strategy:
       fail-fast: false
-      matrix:
-        arch: [mips, powerpc, riscv, sandbox, x86 ]
-        regex: ["*"]
-        include:
-          - arch: arm
-            regex: "[a-b]*"
-          - arch: arm
-            regex: "[c-m]*"
-          - arch: arm
-            regex: "[n-q]*"
-          - arch: arm
-            regex: "[r-z]*"
+      matrix: ${{ fromJSON(needs.defconfigs.outputs.matrix) }}
 
     steps:
     - name: Checkout code
@@ -36,4 +40,4 @@ jobs:
         ./test/generate-dummy-fw.sh
 
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
-                -k test/kconfig/disable_target_tools.kconf -e '${{matrix.regex}}'
+                -k test/kconfig/disable_target_tools.kconf '${{matrix.config}}'
diff --git a/scripts/list-defconfigs.sh b/scripts/list-defconfigs.sh
new file mode 100755
index 000000000000..eeae9fbfdc30
--- /dev/null
+++ b/scripts/list-defconfigs.sh
@@ -0,0 +1,15 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Output json formatted defconfig list for Github Action consumption
+
+ARCH=${@:-*}
+
+cd arch
+
+archs=$(for arch in $ARCH; do
+	ls -1 $arch/configs | xargs -i printf '{ "arch": "%s", "config": "%s" }\n' \
+		"$arch" "{}" | paste -sd ',' -
+done | paste -sd ',' -)
+
+echo '{ "include" : '" [ $archs ] }"
-- 
2.39.2



