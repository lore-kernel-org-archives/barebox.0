Delivery-date: Mon, 18 May 2026 09:26:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsMh-0012qd-0G
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 09:26:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsMg-0006vd-C2
	for lore@pengutronix.de; Mon, 18 May 2026 09:26:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cmz4rEa2GRIgZcZ9Ul+I5b6Ue39utJ+3f4nvDOzPySA=; b=hXTfrYYEQHqdLj0Ty1oAu57t2B
	4/gjtd0uYOq/iFP/HRLqp7gyz7Kv0FK+c++X+opVcdQoRf7Np2KMVc3WkqP5H1mUls2P2kSQ9c5Xw
	I/cezVwIbPXqNw1X0nmBMwyTbbAVTp/qbUlAAfkuwLmAC/plKAbxEz2mWdWSR6UPqSgG8CHEnB+CR
	4K8pmyxddm6qy6S/5lRjyYREEOwG+dj9bHFbI4VpmQ4Jh6X6dTv3DrzbGDpfZ9yRczEDcgk3GSPFV
	jehwVCYo253Ooz6AHQ2wFUTjrMcZRgBbZ47RLXGly0VZg8KfTywd1Tl9vxGyUPtAwLG/4RcIuFU1P
	fZZdpTnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsEV-0000000EYRV-2rHK;
	Mon, 18 May 2026 07:17:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsES-0000000EYQv-2hzl
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 07:17:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOsEP-00060w-4v; Mon, 18 May 2026 09:17:41 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOsEO-000YHI-1i;
	Mon, 18 May 2026 09:17:41 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOsEP-000000005zF-008V;
	Mon, 18 May 2026 09:17:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 18 May 2026 09:17:28 +0200
Message-ID: <20260518071740.23003-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_001744_686920_E5E1C2CA 
X-CRM114-Status: UNSURE (   8.20  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ci: pytest: bump Debian installer image to 13.5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Debian 13.5 has been released on 16th of May and the old images are no
longer available, thus bump the version we use in our boot tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml  | 2 +-
 scripts/fetch-os.sh                        | 2 +-
 test/arm/multi_v8_efiloader_defconfig.yaml | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 94b314230874..b1feb432a869 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -35,7 +35,7 @@ jobs:
           - ARCH: arm
             lgenv: test/arm/multi_v8_efiloader_defconfig.yaml
             defconfig: multi_v8_efiloader_defconfig
-            osimg: debian-13.4.0-arm64-netinst.iso
+            osimg: debian-13.5.0-arm64-netinst.iso
 
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
diff --git a/scripts/fetch-os.sh b/scripts/fetch-os.sh
index 126b50f758e8..7e507509e691 100755
--- a/scripts/fetch-os.sh
+++ b/scripts/fetch-os.sh
@@ -8,7 +8,7 @@ fi
 set -euo pipefail
 
 declare -A images=(
-	["debian-13.4.0-arm64-netinst.iso"]="https://cloud.debian.org/images/release/current/arm64/iso-cd/debian-13.4.0-arm64-netinst.iso"
+	["debian-13.5.0-arm64-netinst.iso"]="https://cloud.debian.org/images/release/current/arm64/iso-cd/debian-13.5.0-arm64-netinst.iso"
 )
 
 found=0
diff --git a/test/arm/multi_v8_efiloader_defconfig.yaml b/test/arm/multi_v8_efiloader_defconfig.yaml
index 86d6a4c391d0..ef77d1707f74 100644
--- a/test/arm/multi_v8_efiloader_defconfig.yaml
+++ b/test/arm/multi_v8_efiloader_defconfig.yaml
@@ -9,7 +9,7 @@ targets:
         kernel: barebox-dt-2nd.img
         display: qemu-default
         extra_args: >
-          -drive if=virtio,snapshot=on,file=debian-13.4.0-arm64-netinst.iso
+          -drive if=virtio,snapshot=on,file=debian-13.5.0-arm64-netinst.iso
           -device virtio-rng
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
@@ -35,6 +35,6 @@ targets:
 
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-  debian_iso: !template "../../debian-13.4.0-arm64-netinst.iso"
+  debian_iso: !template "../../debian-13.5.0-arm64-netinst.iso"
 imports:
   -  ../strategy.py
-- 
2.47.3



