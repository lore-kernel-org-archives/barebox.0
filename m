Delivery-date: Fri, 15 Jul 2022 17:58:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oCNiT-0098x6-Pw
	for lore@lore.pengutronix.de; Fri, 15 Jul 2022 17:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oCNiR-0004is-Ac
	for lore@pengutronix.de; Fri, 15 Jul 2022 17:58:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smqDWWNaZbBELzExd10vYfQamCYWnMo0sCkV2NQbGdw=; b=w5DUmkdeJ80gmf
	5jHUm7DpdmRG49+jy+6la6pHTXWd8UavJAguj4gt4GYKTGZFzEVuxXz9VEWYK9H8X8nR78fxogIX0
	TqWRuJ3c0PC9Sbnqym2oYZw7O6K8hyTuidxLJ1MNZcog6MZiak3d+C2vQYCT2s3Aku3kqxrI/SOeH
	3OrC5RFDkinnz3hITjUgZjyTEAHtngByDqWVmCUpIJNpAa2lGYFveYwJixM5kk+zNbDiYKDpY2Nw6
	rhBi/yk8XS5mwdKisP/JPGlxdUo5RRhJVZBcs2Cw1eH7Lu0/i0jDAkDMVYJ39cQG2Nj7J3JmsGKsH
	1OkcbMuJ7sOiqYPgTzfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCNgr-008Z6j-0L; Fri, 15 Jul 2022 15:57:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCNgm-008Z1V-7x
	for barebox@lists.infradead.org; Fri, 15 Jul 2022 15:57:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oCNgf-0004Qq-Gq; Fri, 15 Jul 2022 17:57:05 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oCNge-0018n0-Qq; Fri, 15 Jul 2022 17:57:04 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oCNgd-00547q-VE; Fri, 15 Jul 2022 17:57:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Jul 2022 17:57:01 +0200
Message-Id: <20220715155701.1204769-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220715105318.GO2387@pengutronix.de>
References: <20220715105318.GO2387@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_085712_296418_89476BF0 
X-CRM114-Status: UNSURE (   8.61  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! kbuild: pbl: use same compression algo for both barebox and DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

scripts: Makefile.lib: fix build for non-PBL DT-enabled boards

CONFIG_IMAGE_COMPRESSION_NONE is unset for non-PBL builds, leading to a
build failure for non-PBL boards that reference device trees.
Fix this by having comp_copy as default.

Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile.lib | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index a648835b1bfb..9295f22e9fef 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -275,6 +275,7 @@ cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
 # Decompressor for barebox proper binary when using PBL
 # ---------------------------------------------------------------------------
 
+suffix_y = comp_copy
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)  = lzo
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
-- 
2.30.2



