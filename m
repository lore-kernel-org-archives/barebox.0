Delivery-date: Thu, 22 May 2025 21:00:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIB9G-001cqR-2K
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 21:00:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIB9G-0000QF-7A
	for lore@pengutronix.de; Thu, 22 May 2025 21:00:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RABppnZ8ZO4iBYEnoC84Uqrv/3T3yDChF9tEMKiyV+8=; b=CEnhWu7cZe1tAxEW+IKaIxMsbV
	JWrrZgHqdRGRU//k5iVeCXvYASNpHgJywfZPS3OXfxhcs2u6p72Gke3TCLxJ5/T1cM9rUe765ZztO
	7kHi2C7ztsPObL88DaW1XPW75OidOt8dMO8FjQehEe0DH/b+cBL+wcGPuitVGpb70Eyr0BFuPGkQ9
	yFhIJWDaHdpdaG3SGedXnQGscCulOMvsNb6T90PP97ahkJPnRfJq+9Rnj6DoKbzxzsSGnt1MFTa++
	Rf6kVSbfCFsDlGnArsIGaZHO4fNqwuHggVphsmh5cLSUB2iX3NLfyq3Es5zU+vMyxpg1qu66b+80l
	IJ4meEzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIB8f-00000001vYl-2gz9;
	Thu, 22 May 2025 18:59:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIB8P-00000001vWK-1a8w
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 18:59:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8G-0008Gy-6z; Thu, 22 May 2025 20:59:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8F-000mMW-3D;
	Thu, 22 May 2025 20:59:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uIB8F-002Agr-2x;
	Thu, 22 May 2025 20:59:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2025 20:59:03 +0200
Message-Id: <20250522-uncompress-fixes-v1-0-18e796fa5e45@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPdzL2gC/x3LMQqAMAxA0auUzBY0WEGvIg61jZrBKg2KIL27w
 fHz+C8IZSaBwbyQ6WbhI2k0lYGw+bSS5agNWKOrHaK9Ujj2M5OIXfghsbFv5651PngfQTe1H/Q
 ap1I+qPRp32IAAAA=
X-Change-ID: 20250522-uncompress-fixes-d94b645acaad
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747940347; l=828;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=n5/Qkt8wXCZKUy/5aRW9Be1r/ekHxPJsvVOsH6Wf5Rc=;
 b=KIhQ7zGkcQWh+EKIpXKhUJA1o4TI+UkCq4iie8q8gWRmsWXUFA/rnlR57EnrkCmTcLc+twnQa
 CDE3bot6xkNDDnJfokMhmeVtDKr2j3bG1vFIu7TbR39ePkxGn132ubL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_115917_420298_7A27CFF0 
X-CRM114-Status: UNSURE (   8.88  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] uncompress: lz4 fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This fixes two bugs in LZ4 decompression. The first is a bug we derived
from Linux and was fixed there back in 2014. The second is a general bug
in uncompress_fd_to_fd() but seems to hit only in the LZ4 case. Both
bugs are relevant only for the uncompress command, but not when LZ4 is
used for compiled in binaries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      initrd: fix lz4 decompress with initrd
      uncompress: fix prebuffering

 lib/decompress_unlz4.c | 65 +++++++++++++++++++++++++++++++++-----------------
 lib/uncompress.c       |  7 +++---
 2 files changed, 47 insertions(+), 25 deletions(-)
---
base-commit: dbc28aa3aad573f6ed0199c4fb85295b95e3bd11
change-id: 20250522-uncompress-fixes-d94b645acaad

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



