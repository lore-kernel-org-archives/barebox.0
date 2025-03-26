Delivery-date: Wed, 26 Mar 2025 13:37:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0G-004QvG-1Z
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 13:37:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0F-0000Hz-BG
	for lore@pengutronix.de; Wed, 26 Mar 2025 13:37:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JssRB/kE+xKcSL4TAmVXyI9qmxxOinH17qD+5hL3NeY=; b=yNg2uQ7L5YxxeTRL4dS6WqZ7Fk
	4lkuNG1N/lzj0rm6Nxzx3jWDM4+g/Nl7ZjAHFKeGjU2u4WX7YorXIBG5zHchOchDAMXzyy8KRauq2
	Q4oHcd0DsryWkIiXMtjs32hLXt4kebGdjC2jv/PyvnBvt3y+DLH62cc/kdPL93evCbICIBWsY9a1M
	0tuUWuixKUgF+cxgmr99+TwOBRIslV3xHQrcZNJOG6yYL71Or6gZ+9Tu6h5p3bZNe8chZdIisPREY
	us6YtzG7hOI9UPvl7SNbneCA87QeZnhChDXTdD9eNSnB6uLMmrhR1C1KhH2ha/FW9GCLc6W3SM3Gb
	tGEAfs8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPzh-00000008TP7-49gr;
	Wed, 26 Mar 2025 12:36:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPza-00000008TKg-0SRz
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 12:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-0008Ip-My; Wed, 26 Mar 2025 13:36:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001kYT-0G;
	Wed, 26 Mar 2025 13:36:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001Caf-1L;
	Wed, 26 Mar 2025 13:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 13:36:14 +0100
Message-Id: <20250326123619.282897-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326123619.282897-1-a.fatoum@pengutronix.de>
References: <20250326123619.282897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_053622_181284_9E975DE1 
X-CRM114-Status: GOOD (  10.70  )
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
Subject: [PATCH 2/7] ci: container: download and delete kvx.tgz in the same layer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The results of each RUN instruction are saved to layer in the resulting
container. Having a separate RUN instruction to delete temporary files
thus only hides them at runtime, but the files are still there eating
up space.

The common wisdom is thus to combine creation, usage and deletion of
temporary files into a single RUN instruction.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index 94b3f618261c..246f50d5b648 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -65,12 +65,10 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
-RUN wget -nv -O kvx.tgz https://github.com/kalray/build-scripts/releases/download/v5.0.0/gcc-kalray-kvx-ubuntu-22.04-v5.0.0.tar.gz
-
-RUN echo "d27b3d6e6246f5debffee0bb01e77eb133bd32c658782a68a779cf9fb4c436bc kvx.tgz" | \
-    sha256sum --check --status
-
-RUN tar -C /opt -xzf kvx.tgz && rm kvx.tgz
+RUN tgz_checksum_dl() { set -e; wget -nv -O archive.tgz "$1"; \
+                        echo "$2 archive.tgz" | sha256sum --check --status; tar -C /opt -xzf archive.tgz; rm archive.tgz; } && \
+    tgz_checksum_dl https://github.com/kalray/build-scripts/releases/download/v5.0.0/gcc-kalray-kvx-ubuntu-22.04-v5.0.0.tar.gz \
+                    d27b3d6e6246f5debffee0bb01e77eb133bd32c658782a68a779cf9fb4c436bc
 
 RUN wget -nv "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
 
-- 
2.39.5



