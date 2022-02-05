Delivery-date: Sun, 06 Feb 2022 00:21:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGUMx-006qTT-6x
	for lore@lore.pengutronix.de; Sun, 06 Feb 2022 00:21:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGUMv-0001sq-Vi
	for lore@pengutronix.de; Sun, 06 Feb 2022 00:21:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l1GcySSi0wEJPdkTJM7EnBBTlG0rbz+8sND2iw8VyLU=; b=hyiYBD5evufSD2
	90LFYI3nxg8U8ti9vx7b4N5mRPtA3urCsj7EAQYbcq4r00VWuOsjzU8v+xAjg74jpmTYbex+xxJGm
	4ALoazMGmqND4duJSz9G9cV4z1x06xORrfadD3PLFMhUKw0A4YX5NDgYmfJ7WCIAgiFktapARVjG8
	JXv9NFqKy+4Y6QDVjgpdH0HrD7KnqriIB2ScR3jW5DMX+RGNpg0n3n/sCeaG/XM060y9qb5cT0r5k
	s9zO02yExApo9J3Pi016ytQAPBSs2m3VFQPxu0uGaKlE7pjeLawOk+goLKYEL6AoOipT3CydwGOHr
	rwWzs/B9Fu0wqTOSXxgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGULM-007dj3-Ug; Sat, 05 Feb 2022 23:19:49 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGULI-007dhi-Iv
 for barebox@lists.infradead.org; Sat, 05 Feb 2022 23:19:46 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 749D1C0005;
 Sat,  5 Feb 2022 23:19:38 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Sun,  6 Feb 2022 00:19:29 +0100
Message-Id: <20220205231930.2948516-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_151944_819211_49707060 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] Documentation: remove some references to zbarebox.bin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At least ARM doesn't generate zbarebox.bin anymore. Remove some of the
left-over references.

Reported-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/boards/mips/qemu-malta.rst | 2 +-
 Documentation/user/barebox.rst           | 7 ++++---
 Documentation/user/pbl.rst               | 3 +--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
index fd37d5edb229..44f671638d9d 100644
--- a/Documentation/boards/mips/qemu-malta.rst
+++ b/Documentation/boards/mips/qemu-malta.rst
@@ -35,7 +35,7 @@ Using GXemul
 GXemul supports MIPS Malta except PCI stuff.
 You can use GXemul to run little-endian barebox (use gxemul-malta_defconfig).
 
-N.B. There is no need to swap words in ``zbarebox.bin`` for little-endian GXemul!
+N.B. There is no need to swap words in the barebox binary for little-endian GXemul!
 
 GXemul run string:
 
diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index b6b7a57af300..8634d8e48eef 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -220,10 +220,11 @@ another barebox. For instance, if you mounted a TFTP server to ``/mnt/tftp``
 
   bootm /mnt/tftp/barebox.bin
 
-At least ``barebox.bin`` (with :ref:`pbl` support enabled ``arch/$ARCH/pbl/zbarebox.bin``)
-should be startable second stage. The flash binary (``barebox-flash-image``) may or may not
+At least ``barebox.bin`` (with :ref:`pbl` support enabled ``images/*.pblb``)
+should be startable second stage. The final binaries (``images/*.img``) may or may not
 be startable second stage as it may have SoC specific headers which prevent running second
-stage.
+stage. barebox will usually have handlers in-place to skip these headers, so
+it can chainload itself regardless.
 
 First Steps
 -----------
diff --git a/Documentation/user/pbl.rst b/Documentation/user/pbl.rst
index f9b2d2030559..b0acd1a4f24d 100644
--- a/Documentation/user/pbl.rst
+++ b/Documentation/user/pbl.rst
@@ -13,8 +13,7 @@ PBL is available for ARM and MIPS. It can be enabled in ``make menuconfig`` with
 the ``[*] Pre-Bootloader image`` option.
 
 The user visible difference is that with PBL support ``barebox.bin`` is no longer
-the final binary image, but instead ``arch/$ARCH/pbl/zbarebox.bin``. Use the
-``barebox-flash-image`` link which always points to the correct image.
+the final binary image, but instead the images are placed in ``images/``.
 
 Technical background
 --------------------
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

