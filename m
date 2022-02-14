Delivery-date: Mon, 14 Feb 2022 12:29:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nJZXa-00G5ui-7u
	for lore@lore.pengutronix.de; Mon, 14 Feb 2022 12:29:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nJZXY-0005NM-PT
	for lore@pengutronix.de; Mon, 14 Feb 2022 12:29:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0KheQusYqYldGofmIUHFqiHgtLVvIShD45OJ1Qd/DIs=; b=tEkv59Y+SrRvOh
	vCKbY0HNEvXJ9RhUsqH+bw+Rp3oY6F54gj3HJYX2+ke7uxkzy+An+cy6II+yejfYDMJcORxUOXW6c
	Sc/yAiDLIOBttRfHlrkUqqZ2PwrRs1LPCgAlxSMPofgu7VB09W+ktBS4I503X+R2jHJ7vZ7b7xOds
	7KgpgbCLwf4LCseUEbuwnbD3Gsfqwd6SYhj3txa7BSPER5IB9pnRz2SZqAaT4xjuk1QmXkC5zqknR
	AE8HK9hwuSYvriFXeBRsQ1cvdhYRDthi8D1rfy+SR1wH7i0xCWC/uUekNRRRAeBvzwuZ3FM2VODtP
	2TQY6jj3AVC/HKv/HS9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJZVq-00EoPg-0y; Mon, 14 Feb 2022 11:27:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJYL2-00EQww-Td
 for barebox@lists.infradead.org; Mon, 14 Feb 2022 10:12:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nJYKv-0003k8-QH; Mon, 14 Feb 2022 11:12:01 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nJYKu-006gLb-Up; Mon, 14 Feb 2022 11:12:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 14 Feb 2022 11:12:00 +0100
Message-Id: <20220214101200.1592706-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_021208_989214_A1929E97 
X-CRM114-Status: UNSURE (   9.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] compressed dtb: Make sure they are only available when
 supported
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A board has to select CONFIG_USE_COMPRESSED_DTB either directly or
through arch specific options when it uses compressed dtbs. This is
easily forgotten. barebox compiles fine, but during runtime the
decompression code is missing and barebox won't start. As this happens
in the PBL possibly without output this may be unnecessarily hard to
debug.

Make sure compilation fails when a board uses compressed dtbs but
didn't select CONFIG_USE_COMPRESSED_DTB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/gen-dtb-s | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 4f8c62a0b8..1027db2804 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -58,6 +58,7 @@ fi
 compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.lzo)
 uncompressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb)
 
+echo "#ifdef CONFIG_USE_COMPRESSED_DTB"
 echo ".section .dtbz.rodata.${name},\"a\""
 echo ".balign STRUCT_ALIGNMENT"
 echo ".global __dtb_z_${name}_start"
@@ -69,3 +70,4 @@ echo ".incbin \"$dtb.lzo\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
+echo "#endif"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

