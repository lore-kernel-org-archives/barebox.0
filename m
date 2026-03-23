Delivery-date: Mon, 23 Mar 2026 09:59:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4b88-0044Ux-34
	for lore@lore.pengutronix.de;
	Mon, 23 Mar 2026 09:59:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4b88-0003kO-Bv
	for lore@pengutronix.de; Mon, 23 Mar 2026 09:59:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=luCgasFFKbOGpExjmo0fJU1NurB+u3ITlTVDUBhNxT0=; b=zFR5P+piF5RGnoZry2YeokpMM/
	oDAm490uCz3gEsV2lp6gvHxmfPRlSNbktAm8hxVKr8Ho+Fi7z7FZYrbRPGhyQYDHri3LEko6hI5NJ
	fa4o6QsQ/IKYl8g2/mT/x2WvqTREFqh+kjJomw6SLPjTHzMuhTQDBUGSY7HN/jwh75ppvL6vM2xrX
	4hWvgkVOX98MwWgju7/xauQmbV44LGLak6eb2FJ5Bto8FH/4fT///f0tShkwLILSbXoFJUs2MpAno
	UHS5G5dtj+NRo32DS5lCD/hB5ke96TnV7ts62iClofFl2Fx+7Af8svVSJ46p+wSiluEUREM980rEq
	fCxugUtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b7i-0000000GJuW-2Ey7;
	Mon, 23 Mar 2026 08:58:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b7f-0000000GJtQ-2uCX
	for barebox@lists.infradead.org;
	Mon, 23 Mar 2026 08:58:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w4b7e-0003XY-13; Mon, 23 Mar 2026 09:58:54 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Mar 2026 09:58:51 +0100
Message-ID: <20260323085851.4073528-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_015855_745200_25C63D82 
X-CRM114-Status: UNSURE (   8.14  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ci: pytest: test against Debian 13.4.0 image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Debian 13.3.0 CDROM ISO is no longer available, bump the minor revision
as a minimal fix to get CI going again.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml  | 2 +-
 scripts/fetch-os.sh                        | 2 +-
 test/arm/multi_v8_efiloader_defconfig.yaml | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index f87e0761df82..94b314230874 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -35,7 +35,7 @@ jobs:
           - ARCH: arm
             lgenv: test/arm/multi_v8_efiloader_defconfig.yaml
             defconfig: multi_v8_efiloader_defconfig
-            osimg: debian-13.3.0-arm64-netinst.iso
+            osimg: debian-13.4.0-arm64-netinst.iso
 
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
diff --git a/scripts/fetch-os.sh b/scripts/fetch-os.sh
index e22185af2a00..126b50f758e8 100755
--- a/scripts/fetch-os.sh
+++ b/scripts/fetch-os.sh
@@ -8,7 +8,7 @@ fi
 set -euo pipefail
 
 declare -A images=(
-	["debian-13.3.0-arm64-netinst.iso"]="https://cloud.debian.org/images/release/current/arm64/iso-cd/debian-13.3.0-arm64-netinst.iso"
+	["debian-13.4.0-arm64-netinst.iso"]="https://cloud.debian.org/images/release/current/arm64/iso-cd/debian-13.4.0-arm64-netinst.iso"
 )
 
 found=0
diff --git a/test/arm/multi_v8_efiloader_defconfig.yaml b/test/arm/multi_v8_efiloader_defconfig.yaml
index 579ac9f50d25..86d6a4c391d0 100644
--- a/test/arm/multi_v8_efiloader_defconfig.yaml
+++ b/test/arm/multi_v8_efiloader_defconfig.yaml
@@ -9,7 +9,7 @@ targets:
         kernel: barebox-dt-2nd.img
         display: qemu-default
         extra_args: >
-          -drive if=virtio,snapshot=on,file=debian-13.3.0-arm64-netinst.iso
+          -drive if=virtio,snapshot=on,file=debian-13.4.0-arm64-netinst.iso
           -device virtio-rng
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
@@ -35,6 +35,6 @@ targets:
 
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-  debian_iso: !template "../../debian-13.3.0-arm64-netinst.iso"
+  debian_iso: !template "../../debian-13.4.0-arm64-netinst.iso"
 imports:
   -  ../strategy.py
-- 
2.47.3



