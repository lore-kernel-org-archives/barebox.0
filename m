Delivery-date: Mon, 11 Jul 2022 15:17:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAtIE-002bZv-PF
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 15:17:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAtIC-00068R-Th
	for lore@pengutronix.de; Mon, 11 Jul 2022 15:17:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WbwBkhPrClr+/IcoQLEvyUcknLOq0iOrhBKdyobhAo=; b=hVoYDgUJKSjtFQ
	NkKp8IB0IK3TbCsP1VBQGWPtSJ6KsJrPYVMjmVAeJFaEyKjedDHNXvk6+DPfDzMBwZsUk9ugrXGl0
	3wsVjCqYkyBMG1txldIcPCfNVqrtDwY2NDxWb5B1MyyPEIPT4xNWoZg/OviJdekl4z9zl/trrkiB3
	5NhpUr0oM5Yr5bsR+vAtfg+/EMZ9WyudDcl4604pOBivHHTUZbbrL5642j/4wGq+5pUs+GQL33Lxc
	OK9CKgK0V8wRLZ/TbRHmV8UXjblTYW+m11s4w66paJixU/8uKqzCHUgEkGi+dt7dFl04g65p+KhA+
	C5JuEVOCuyVUw4Lu1ZpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtGl-001q8z-Lr; Mon, 11 Jul 2022 13:16:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtGd-001q4V-73
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 13:16:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oAtGZ-0005kh-Sl; Mon, 11 Jul 2022 15:15:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oAtGZ-000Jr8-5e; Mon, 11 Jul 2022 15:15:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oAtGY-008u4j-9s; Mon, 11 Jul 2022 15:15:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Jul 2022 15:15:55 +0200
Message-Id: <20220711131556.2122028-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220711131556.2122028-1-a.fatoum@pengutronix.de>
References: <20220711131556.2122028-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_061603_281386_40440B78 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] scripts: gen-dtb-s: fallback to LZ4 if lzop is unavailable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

lzop hasn't seen any activity since 2017 and has been recently removed
from OpenEmbedded, which is unfortunate as we unconditonally use LZO for
compressing device trees that are referenced via __dtb_z_.

As a fallback, use LZ4 as compression if lzop is not available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig    | 7 ++++++-
 scripts/gen-dtb-s | 6 ++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 076fe455f8ac..f1f0b4fab91c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+source "scripts/Kconfig.include"
 source "common/boards/Kconfig"
 
 config GREGORIAN_CALENDER
@@ -46,10 +47,14 @@ config USE_COMPRESSED_DTB
 	depends on ARM || RISCV
 	select UNCOMPRESS
 	select LZO_DECOMPRESS if DTB_COMPRESSION = "lzo"
+	select LZ4_DECOMPRESS if DTB_COMPRESSION = "lz4"
 
 config DTB_COMPRESSION
 	string
-	default "lzo"
+	default "none" if !USE_COMPRESSED_DTB
+	default "lzo" if $(success,lzop -V)
+	default "lz4" if $(success,lz4c -V)
+	default "none"
 
 config FILETYPE
 	bool
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index da0b593da4eb..1d70f260f677 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -59,6 +59,12 @@ case $compression in
 	lzo)
 		lzop -f -9 $dtb -o $dtb.$compression
 		;;
+	lz4)
+		lz4c -fql $dtb $dtb.$compression
+		# LZ4 decompressor strips away last 4 bytes, but doesn't
+		# consume them, so increase size accordingly
+		printf '\0\0\0\0' >>$dtb.$compression
+		;;
 	*)
 		echo Unsupported compression algorithm: $compression >&2
 		exit 1
-- 
2.30.2



