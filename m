Delivery-date: Thu, 27 Mar 2025 15:59:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohk-004uXk-0a
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 15:59:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohj-0000gv-Hl
	for lore@pengutronix.de; Thu, 27 Mar 2025 15:59:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ppc5TP1GklRYfGc3u8LKeLFVxSAixkTIZL8XjTMj9cg=; b=WgJxmq4hJgp5LYTaCr1H5dR2lY
	Zo9ECaVU0Iv3VNrJbI6qF0rl5j6QOFlFIvbuop/Hx5yO0nP1GhdGdbSxvR0iWOQ2QmzIEQkV8DsfP
	DI50R4H3fZJ7pP8vLmjAJNiXXaIteTi7Zrt06V3VMy4Ltqo537wPMBOZJ8Ex1ydWA7dBAs4damim8
	Q1mFyuubZBdsSTh1swiLPfUIVpZxMik9tA3iM9ARJl64uPLAlfVxX6EMrgD9QQSMkFZE3Ey/YWFAB
	sxKfeAn2P6503KOItRyguwWXqTmrGdJQbXPEADvZnaHpCyEjKTr7Ec/TXul+3qWdkJRmHIZSJYmqD
	G0bcBELA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txohJ-0000000BHj5-1kmI;
	Thu, 27 Mar 2025 14:59:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txoWK-0000000BFoq-24nZ
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 14:47:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWJ-0006Jg-80; Thu, 27 Mar 2025 15:47:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWJ-001wi2-07;
	Thu, 27 Mar 2025 15:47:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-007jNu-32;
	Thu, 27 Mar 2025 15:47:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 15:47:42 +0100
Message-Id: <20250327144742.1841423-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
References: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_074748_536371_93AD5C67 
X-CRM114-Status: UNSURE (   9.42  )
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
Subject: [PATCH 4/4] ci: pytest: enable console and libc allocator for allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These two option are already set in the pytest YAML, but we build and
run tests in two separate stages and thus they are never applied.

Combining build and test into one doesn't play nicely with our
structure, because we build e.g. multi_v7_defconfig once and then run
multiple tests on it.

Let's workaround this in the build stage for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index bfb022dc7778..315868779bee 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -67,11 +67,14 @@ jobs:
       run: |
         export KBUILD_OUTPUT=build-${{matrix.arch}}-${{matrix.defconfig}}
         export ARCH=${{matrix.arch}}
+        export KCONFIG_ADD="common/boards/configs/enable_self_test.config \
+                            common/boards/configs/disable_target_tools.config"
 
-        ./MAKEALL -O ${KBUILD_OUTPUT} -l "" -v 0 \
-                -k common/boards/configs/enable_self_test.config \
-                -k common/boards/configs/disable_target_tools.config \
-                ${{matrix.defconfig}}
+        if [ ${{matrix.arch}} = sandbox ] && [ ${{matrix.defconfig}} = allyesconfig ]; then
+          KCONFIG_ADD="${KCONFIG_ADD} CONFIG_CONSOLE_DISABLE_INPUT=n CONFIG_MALLOC_LIBC=y"
+        fi
+
+        ./MAKEALL -O ${KBUILD_OUTPUT} -l "" -v 0 ${{matrix.defconfig}}
 
         if [ ${{matrix.arch}} = "riscv" ]; then
           cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin ${KBUILD_OUTPUT}/
-- 
2.39.5



