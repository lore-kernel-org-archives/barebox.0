Delivery-date: Fri, 09 Jun 2023 16:00:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7ceq-00HHD7-8m
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 16:00:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7cen-0003Mm-OB
	for lore@pengutronix.de; Fri, 09 Jun 2023 16:00:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lDfZc+yiGF/wlQXfc5UcoVwuxjBwBFhE1qYKTcR2eQQ=; b=BPhbIry6tkgi1dslVP4wTCLwSz
	QvB05La7saPurKTQWgM+KYvYvwXEh7lEBdqcRJ5ujTRZkHRAlEEBzl1xZnIBhCq10C7SEbcy7U/I3
	Gix5I9YKk1WnGNoiHNiWd/fgKqF8qn+OszfTe1hlaXU6tJPEgiCVgIx7iTxUAcrGuzD01mT3MNMzk
	75XubY0Xm9eH1dekeoYqAsBoGaSaBDQa4aT/xraPS7YqtqECIO5Ob2gKLFwVGUOrya1p74ZKoYrPR
	DXbpKBfUPn85coZqxlVsdwaM4ESgWjU566JUFvJvSYc9XJEsLhS87HcB06bkPLWbrRLGs8dFgNJvg
	mE99BYFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7cdO-00DBSE-0M;
	Fri, 09 Jun 2023 13:58:34 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7cdK-00DBRH-0K
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 13:58:32 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 28957E000F;
	Fri,  9 Jun 2023 13:58:20 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  9 Jun 2023 15:58:11 +0200
Message-Id: <20230609135811.1989167-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_065830_295727_DC924953 
X-CRM114-Status: UNSURE (   7.21  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ci: fix build on master with newer container image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The workflow yaml references the newest container, which now has GCC
v13.1 after the updates merged to next.

The work flow yaml on master still hardcodes GCC 12.2 though, leading
to build breakage. As the container now defines all CROSS_COMPILE_*
variables by default, we can just drop them from master to fix the
build.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 .github/workflows/test-defconfigs.yml     | 6 ------
 .github/workflows/test-labgrid-pytest.yml | 6 ------
 2 files changed, 12 deletions(-)

diff --git a/.github/workflows/test-defconfigs.yml b/.github/workflows/test-defconfigs.yml
index 108e54d289a0..71e440793ce5 100644
--- a/.github/workflows/test-defconfigs.yml
+++ b/.github/workflows/test-defconfigs.yml
@@ -32,12 +32,6 @@ jobs:
       run: |
         export ARCH=${{matrix.arch}}
 
-        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
-        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
-        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
-        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
-        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
-
         ./test/generate-dummy-fw.sh
 
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 2c741500663e..399de6dc077a 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -42,12 +42,6 @@ jobs:
       run: |
         export ARCH=${{matrix.arch}}
 
-        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
-        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
-        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
-        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
-        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
-
         ./test/generate-dummy-fw.sh
 
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/enable_self_test.kconf \
-- 
2.38.5



