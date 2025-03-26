Delivery-date: Wed, 26 Mar 2025 13:37:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0G-004Qv0-00
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 13:37:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0E-0000HH-OU
	for lore@pengutronix.de; Wed, 26 Mar 2025 13:37:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJx0mZTVrGGEa/5ZWUViJYKhnegLvJ0e9K5CKjO8Hw0=; b=uWWa20kpXOE5A9lZ42+i77RUme
	0VWpOsnIeKkrsSl0UDztwdRHZYi34ODOzImf2Wgt8G11Hu06ngwLbONUuTWtsF/V5TphtKaB03aLi
	bdtzMI8GftT3yvLaEPIJxi5rkSbveHCJLqaYh4SW91SHwsKJsLulFwK+cEFe+CDijbd/j07petJHP
	Cjx3bQNH29227xBC3brgLOQLLKzY1DpdPRO6ViDScfiD3Nf59697XQScMCzRFjBS0vz0BtOfW+Xtw
	FIwP3RTqADAi1MNoWhvmrt1E/GF3t/oRfU1+coLCTWSeV2BFbptJTPn6WtbN2rXFw69XzWaswpqLW
	18ci/hpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPzi-00000008TPV-2I3O;
	Wed, 26 Mar 2025 12:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPza-00000008TKi-0mrQ
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 12:36:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-0008JH-UO; Wed, 26 Mar 2025 13:36:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001kYk-11;
	Wed, 26 Mar 2025 13:36:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001Caf-25;
	Wed, 26 Mar 2025 13:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 13:36:19 +0100
Message-Id: <20250326123619.282897-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326123619.282897-1-a.fatoum@pengutronix.de>
References: <20250326123619.282897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_053622_234090_E4E469F9 
X-CRM114-Status: UNSURE (   8.56  )
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
Subject: [PATCH 7/7] ci: container: install LLVM/clang
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be used later for clang-analyzer and libfuzzer.
We intentionally use the LLVM project apt repositories for greater
flexibility in the versions we want to use, e.g. LLVM 20 is not yet
available on Debian Bookworm.

kernel.org also hosts more barebones LLVM toolchains, but we are
interested in more than that.

The LLVM layer added to the container sits at 1.04GiB, which is about
200MiB less than what we are using for the GCC toolchains.
It contains support for cross-compiling 47 different targets.

Cc: Jules Maselbas <jmaselbas@zdiv.net>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/test/Containerfile b/test/Containerfile
index e9b044c87ab7..20402c384b6f 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -58,6 +58,16 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	&& rm -rf /var/lib/apt/lists/*
 
 ENV GCC_VERSION=14.2.0
+ENV LLVM_VERSION=20
+
+RUN apt-get update && apt-get install -y --no-install-recommends \
+	lsb-release software-properties-common gnupg \
+	&& wget https://apt.llvm.org/llvm.sh \
+	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
+	&& apt-get remove -y lsb-release software-properties-common gnupg \
+	&& apt-get autoremove -y --purge \
+	&& apt-get clean \
+	&& rm -rf llvm.sh /var/lib/apt/lists/*
 
 # Manually install the kernel.org Crosstool based toolchains
 RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
@@ -92,4 +102,9 @@ ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/power
 ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
 ENV CROSS_COMPILE_kvx=/opt/gcc-kalray-kvx-v5.0.0/bin/kvx-elf-
 
+ENV CROSS_COMPILE_llvm=-${LLVM_VERSION}
+# Workaround for https://github.com/llvm/llvm-project/issues/112458
+RUN ln -Ts /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/linux/ \
+           /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/x86_64-pc-linux-gnu
+
 USER barebox:barebox
-- 
2.39.5



