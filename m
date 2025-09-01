Delivery-date: Mon, 01 Sep 2025 21:51:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utAYU-0071J3-1X
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 21:51:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utAYT-0004qQ-9g
	for lore@pengutronix.de; Mon, 01 Sep 2025 21:51:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4bcRrvVtuZi4e2B5zpxfjtCLrNTuTr4mYulAAqECpyQ=; b=icAA214kUDrcuLOTQsgQh7wA5T
	KWVurW/R5LPXx2KmLTd0hjsyw/c/LJSZtR5Wb6wfFoaGvlpLIdtxeO1JfqyjGUSU0AD77/rCkiQCG
	7k5uRqhVsnEDIoMEW1iV8X52ve0FWiMd9J3Yg5j9VSL0A/kUdzk3SGzBLBO3geOvXerAabNtkyO4g
	fbziGvmY4DREchPXKs2DilYd3+v6J8mE5I0AIvu6Edg3ibP7u4gC6ev2zOwgiLBPhl5UiQDeDG9Ak
	EydjsgBSefAasdJaFLE9ZzopRkDWcvjMSpaMuRRPLnqWGeO1oSAz2bQHIO5yxg2U8/i+uViQVhtxY
	wsHZcQLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utAXp-0000000Dh1Z-21kC;
	Mon, 01 Sep 2025 19:50:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut6cS-0000000D8jc-2uf4
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 15:39:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0006YV-Ci; Mon, 01 Sep 2025 17:38:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-003FNk-0e;
	Mon, 01 Sep 2025 17:38:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut6cQ-0000000AlDQ-0Qjb;
	Mon, 01 Sep 2025 17:38:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 17:38:03 +0200
Message-ID: <20250901153852.2554758-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
References: <20250901153852.2554758-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_083856_728256_0C91E726 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ci: container: update components installed on top to newest versions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All of GCC, LLVM, the Kalray GCC, Labgrid and QEMU have had newer
releases in the mean time, so let's update them all to the newest
version in preparation for updating the Debian container as a whole.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index fb9bb25bbfc5..9a1df8efb99c 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -58,8 +58,8 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
 	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/*
 
-ENV GCC_VERSION=14.2.0
-ENV LLVM_VERSION=20
+ENV GCC_VERSION=15.2.0
+ENV LLVM_VERSION=21
 
 RUN apt-get update && apt-get install -y --no-install-recommends \
 	lsb-release software-properties-common gnupg \
@@ -81,10 +81,10 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
 
 RUN tgz_checksum_dl() { set -e; wget -nv -O archive.tgz "$1"; \
                         echo "$2 archive.tgz" | sha256sum --check --status; tar -C /opt -xzf archive.tgz; rm archive.tgz; } && \
-    tgz_checksum_dl https://github.com/kalray/build-scripts/releases/download/v5.0.0/gcc-kalray-kvx-ubuntu-22.04-v5.0.0.tar.gz \
-                    d27b3d6e6246f5debffee0bb01e77eb133bd32c658782a68a779cf9fb4c436bc
+    tgz_checksum_dl https://github.com/kalray/build-scripts/releases/download/v5.2.0/gcc-kalray-kvx-ubuntu-22.04-v5.2.0.tar.gz \
+		    f59964cac188f1e5a8f628d0abef68e3b6ceebdae18dff51625472329fe6ec40
 
-RUN wget -nv "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
+RUN wget -nv "https://github.com/qemu/qemu/blob/v10.1.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
 
 # Create our user/group
 RUN useradd -m -U barebox
@@ -92,7 +92,7 @@ RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
 
 # install labgrid
 RUN pip3 install -q --no-cache-dir --break-system-packages \
-    git+https://github.com/labgrid-project/labgrid.git@v25.0 && \
+    git+https://github.com/labgrid-project/labgrid.git@v25.0.1 && \
     ln -s $(which pytest) /usr/local/bin/labgrid-pytest
 
 ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
-- 
2.47.2



