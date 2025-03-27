Delivery-date: Thu, 27 Mar 2025 15:59:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohl-004uYH-0d
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 15:59:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohk-0000hh-Kf
	for lore@pengutronix.de; Thu, 27 Mar 2025 15:59:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NaKvYCg3gAcRIuVWEHESqmQrMBs1eZ5xly381hwsnNY=; b=W6ktUwmqiDkcY3T3JBK6c691Nv
	BdTCM4g5ps9jdHB/yM6NJuWIiXa9l3PoLWXlZxCDkjispsQacUr0fLGipzY3tkb2V8+iMtIKX37ZV
	morujour0/BvOFczjzC7kXgXjJozKOwLtZHBZnyDvNpmkvLq3+M3ndymjixdsWAekcjzM7qLo4MJ0
	CoVIUEEdHhGHLtTziF6t+ak3RwCxvuhQwKyrt95YAKW/h/ui0pBFOvV65B4o0439ImzvzR6H37smD
	gmmbLi7TSEo/KgbHiT/F8w0F6oceulLEjph1LBt9oU/nyNKQovRMpqGAF8WDC0gy4oc5K4yxeMz7s
	BOMnd11g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txohK-0000000BHk2-2w1U;
	Thu, 27 Mar 2025 14:59:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txoWS-0000000BFs3-1zf2
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 14:47:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWJ-0006Jf-6U; Thu, 27 Mar 2025 15:47:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-001whz-3B;
	Thu, 27 Mar 2025 15:47:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-007jNu-2s;
	Thu, 27 Mar 2025 15:47:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 15:47:41 +0100
Message-Id: <20250327144742.1841423-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
References: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_074756_508714_49C7426E 
X-CRM114-Status: UNSURE (   8.47  )
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
Subject: [PATCH 3/4] ci: pytest: rename build directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Naming the build directory after the arch means that multiple jobs will
each create a build-arm directory with different contents.

Let's factor in the name of the defconfig too, so it's
immediately clear what's what.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index e1ccac67932f..bfb022dc7778 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -65,19 +65,20 @@ jobs:
 
     - name: Build
       run: |
+        export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
         export ARCH=${{matrix.arch}}
 
-        ./MAKEALL -O build-${{matrix.arch}} -l "" -v 0 \
+        ./MAKEALL -O ${KBUILD_OUTPUT} -l "" -v 0 \
                 -k common/boards/configs/enable_self_test.config \
                 -k common/boards/configs/disable_target_tools.config \
                 ${{matrix.defconfig}}
 
         if [ ${{matrix.arch}} = "riscv" ]; then
-          cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin build-${{matrix.arch}}
+          cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin ${KBUILD_OUTPUT}/
         fi
     - name: labgrid-pytest
       run: |
-        export KBUILD_OUTPUT=build-${{matrix.arch}}
+        export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
 
         for i in ${{matrix.lgenv}}; do
           grep -wq '\(QEMUDriver\|ExternalConsoleDriver\):' "$i" || continue
-- 
2.39.5



