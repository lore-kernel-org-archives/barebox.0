Delivery-date: Tue, 10 Jan 2023 20:34:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFKOb-0086nt-Fq
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 20:34:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFKOZ-0004Dm-Fq
	for lore@pengutronix.de; Tue, 10 Jan 2023 20:34:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xERRe7VXASL5OuU1o7HPhaVO8Itz4svVogqA7Rq8at0=; b=ycZ34cySNeg9Oj4HXEnlisDP4o
	iHyQ9xDIMllXHmyrqfMrSTy0TDUUdyBfhWqOm0CpjM11I4eU8ofwRp9kXmi8rERYSnhV2PHy6F5/G
	5/yivFHhAHtGspj61UQHBHgZs4Y5yJicsE2dwLKaQ+0FKF2x4Lep/ty1ykLbRGgbTVoOYS4+HhrJS
	buwfPjCRgWi5ZrBynMxD77r+zYZKNDGxa8krL7mgNDe06RaPCiVKhmc//Ar+7FHJp4JA98VcoKQgH
	1sFIIeOi9xTcMtD/kJ1eLa0Q/zGiDIL9sosC9FbSqNiWTxds6+e284+GEvK5s0wNMgAZ5hTFJi4iT
	NYZzEl0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKN8-008JMr-Gx; Tue, 10 Jan 2023 19:33:22 +0000
Received: from mail.grinn-global.com ([77.55.128.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKN2-008JKY-OF
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 19:33:18 +0000
X-Virus-Scanned: by amavisd-new using ClamAV (16)
Received: from zm.lan (pub-52.182.29.194.multiplay.pl [194.29.182.52])
	by server220076.nazwa.pl (Postfix) with ESMTP id 08C091BC42D;
	Tue, 10 Jan 2023 20:33:09 +0100 (CET)
From: Marcin Niestroj <m.niestroj@grinn-global.com>
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@emb.dev>
Date: Tue, 10 Jan 2023 20:32:51 +0100
Message-Id: <20230110193251.2821638-1-m.niestroj@grinn-global.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_113317_003098_304989F7 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rpi: parse memory from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marcin Niestroj <m.niestroj@emb.dev>

Currently for RaspberryPi platform there is only one memory bank
created, based on information fetched over mailbox. This is fine for
booting Barebox, but unfortunately all the other memory banks are not
propagated to Linux during boot, thus cannot be utilized. In fact, even
when using /vc.dtb as device-tree for Linux, all memory nodes in FDT are
deleted and new ones are created by Barebox by memory fixup mechanism,
using exising RAM information. As a result RaspberryPi 4 boots Linux
with 1GB RAM available, instead of 2GB (2 banks, each 1GB).

At the end of VideoCore FDT parsing, do the same as of_probe_memory() in
mem_initcall does, but for VideoCore provided devicetree/memory
information. During Linux boot this information is used for memory fixup
mechanism and in case of RaspberryPi 4 this results in 2 memory banks
being propagated:

  # ls /proc/device-tree/memory*
  /proc/device-tree/memory@0:
  device_type  name         reg

  /proc/device-tree/memory@40000000:
  device_type  name         reg

Signed-off-by: Marcin Niestroj <m.niestroj@emb.dev>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 77935e5c88..0855eee872 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -258,7 +258,7 @@ static u32 rpi_boot_mode, rpi_boot_part;
 static void rpi_vc_fdt_parse(void *fdt)
 {
 	int ret;
-	struct device_node *root, *chosen, *bootloader;
+	struct device_node *root, *chosen, *bootloader, *memory;
 	char *str;
 
 	root = of_unflatten_dtb(fdt, INT_MAX);
@@ -324,6 +324,20 @@ static void rpi_vc_fdt_parse(void *fdt)
 	if (IS_ENABLED(CONFIG_RESET_SOURCE))
 		reset_source_set(rpi_decode_pm_rsts(chosen, bootloader));
 
+	/* Parse all available nodes with "memory" device_type */
+	memory = root;
+	while (1) {
+		int err;
+
+		memory = of_find_node_by_type(memory, "memory");
+		if (!memory)
+			break;
+
+		err = of_add_memory(memory, false);
+		if (err)
+			ret = err;
+	}
+
 out:
 	if (root)
 		of_delete_node(root);
-- 
2.39.0



