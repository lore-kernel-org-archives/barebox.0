Delivery-date: Wed, 06 Sep 2023 17:10:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qduAu-00662Y-4E
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 17:10:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qduAs-000865-2d
	for lore@pengutronix.de; Wed, 06 Sep 2023 17:10:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7T37vo/JbDw5qtDvOzR5TO1XzjSOD6Tj1tanOTPj/Ok=; b=O4z0zC25mF8Hg2t7Lo6m+8xpxO
	muxzs3bB75uKJVm9cbgTdlQ5OuN02W91BQZR+9c7ZbNbW+Y/98Xvu2XYRn/Kz7qVyKjRPjJoskqFj
	uCIFXznym5p9ftEofywjNS4czNSpRY5d/yz6vV4XzIPdDxbcc227s5zjU/4YME+MSPFqv/Mzd9xKT
	BcJWvYPiyjYH49SEpYZ4mXRbZtG1CvaQ5rBks1WBRQ/csyJef8blT9N6f0rmpIK2eFV2ZnBliq+D3
	YlFu4Lj6AnxhUk9e2eeSsIzYNFcTVvBW0Nu+TsB1mL3g93pP3Mw2bCjkfSRzqP8UOVmmWl/ORVbxN
	E3rSgnVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdu9j-00AMey-0l;
	Wed, 06 Sep 2023 15:09:23 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdu9f-00AMdq-2X
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 15:09:21 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 139BF1C0003;
	Wed,  6 Sep 2023 15:09:17 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Wed,  6 Sep 2023 17:08:57 +0200
Message-ID: <20230906150857.32035-3-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906150857.32035-1-jmaselbas@zdiv.net>
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_080919_994073_4959A1B1 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] kbuild: remove duplicated xz compressions target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both cmd_xzkern and cmd_xzmisc where already defined in the same file

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 scripts/Makefile.lib | 28 ----------------------------
 1 file changed, 28 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f04c09f9e2..6baa618f15 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -470,34 +470,6 @@ cmd_lzo = (cat $(filter-out FORCE,$^) | \
 %.lzo: %
 	$(call if_changed,lzo)
 
-# XZ
-# ---------------------------------------------------------------------------
-# Use xzkern to compress the kernel image and xzmisc to compress other things.
-#
-# xzkern uses a big LZMA2 dictionary since it doesn't increase memory usage
-# of the kernel decompressor. A BCJ filter is used if it is available for
-# the target architecture. xzkern also appends uncompressed size of the data
-# using size_append. The .xz format has the size information available at
-# the end of the file too, but it's in more complex format and it's good to
-# avoid changing the part of the boot code that reads the uncompressed size.
-# Note that the bytes added by size_append will make the xz tool think that
-# the file is corrupt. This is expected.
-#
-# xzmisc doesn't use size_append, so it can be used to create normal .xz
-# files. xzmisc uses smaller LZMA2 dictionary than xzkern, because a very
-# big dictionary would increase the memory usage too much in the multi-call
-# decompression mode. A BCJ filter isn't used either.
-quiet_cmd_xzkern = XZKERN  $@
-cmd_xzkern = (cat $(filter-out FORCE,$^) | \
-	sh $(srctree)/scripts/xz_wrap.sh && \
-	$(call size_append, $(filter-out FORCE,$^))) > $@ || \
-	(rm -f $@ ; false)
-
-quiet_cmd_xzmisc = XZMISC  $@
-cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
-	xz --check=crc32 --lzma2=dict=1MiB) > $@ || \
-	(rm -f $@ ; false)
-
 # lz4
 # ---------------------------------------------------------------------------
 
-- 
2.41.0



