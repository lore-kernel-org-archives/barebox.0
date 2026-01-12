Delivery-date: Mon, 12 Jan 2026 17:16:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfKaL-000Zv5-37
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 17:16:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfKaK-0007vM-Ty
	for lore@pengutronix.de; Mon, 12 Jan 2026 17:16:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iJzgfRk1OFT56I+U/c3FIqX+bTLIKD7XDuC1EXcqEw4=; b=goSFz28D6sca1Zr7nlOonunLad
	8IKb9/smngg7skwmnFP+DNDFI3hoCWYxST2Bv5P50zRhqw92k2DU9zOywrn1dA1/gbqMYgtqo9chF
	cb0HsvQk29VdozAymBMUoBpk2BqZpbTUoT1aoiWTUph6kUBYyC+qzT1bdOv7veD81VaifQ1yvpQh+
	jLMWSr4a0djfm+bdjVubFTNWLmd3xUa0OwXaQL4Y/SU6+7WvzJf3o7pcROqvnEwKsSAw/gr7PqrDq
	mQ+OvbxzyyyyTnhRTL1ujeOaLZGasW8fD7gkvvXCxlPYDh8v460sQRz7pv5OKCdDIB0JaglkltDIg
	stCQnnow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKZe-00000005hqU-2CqU;
	Mon, 12 Jan 2026 16:15:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKZb-00000005hpx-0emW
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 16:15:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfKZX-0007ng-49; Mon, 12 Jan 2026 17:15:15 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 17:15:04 +0100
Message-ID: <20260112161506.3092667-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_081519_726881_4B991705 
X-CRM114-Status: UNSURE (   8.43  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ci: drop workaround for missing opensbi-riscv32-generic-fw_dynamic.bin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It will be soon 5 years that we had that quirk to download
opensbi-riscv32-generic-fw_dynamic.bin, because the QEMU version in
Debian back then didn't ship with it.

This should no longer be needed nowadays, so drop all the special
handling we have for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml | 4 ----
 test/Containerfile                        | 2 --
 test/riscv/qemu@virt32_defconfig.yaml     | 5 -----
 3 files changed, 11 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index de06fab3e136..d387f9e3867a 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -114,10 +114,6 @@ jobs:
 
         ./MAKEALL -O ${KBUILD_OUTPUT} -l "" -v 0 ${{matrix.defconfig}}
 
-        if [ ${{matrix.arch}} = "riscv" ]; then
-          cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin ${KBUILD_OUTPUT}/
-        fi
-
     - name: labgrid-pytest
       if: steps.build.outcome == 'success'
       run: |
diff --git a/test/Containerfile b/test/Containerfile
index c9e11b45985f..196000ce1c8e 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -85,8 +85,6 @@ RUN tgz_checksum_dl() { set -e; wget -nv -O archive.tgz "$1"; \
     tgz_checksum_dl https://github.com/kalray/build-scripts/releases/download/v5.2.0/gcc-kalray-kvx-ubuntu-22.04-v5.2.0.tar.gz \
 		    f59964cac188f1e5a8f628d0abef68e3b6ceebdae18dff51625472329fe6ec40
 
-RUN wget -nv "https://github.com/qemu/qemu/blob/v10.1.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
-
 # Create our user/group
 RUN useradd -m -U barebox
 RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
index d0b640aa189e..7f1423f660ec 100644
--- a/test/riscv/qemu@virt32_defconfig.yaml
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: rv32
         memory: 256M
         kernel: barebox-dt-2nd.img
-        bios: opensbi-riscv32-generic-fw_dynamic.bin
         display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
@@ -17,11 +16,7 @@ targets:
       - virtio-mmio
       - barebox-state
       - testfs
-    runner:
-      download:
-        opensbi-riscv32-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-  opensbi-riscv32-generic-fw_dynamic.bin: !template "$LG_BUILDDIR/opensbi-riscv32-generic-fw_dynamic.bin"
 imports:
   -  ../strategy.py
-- 
2.47.3



