Delivery-date: Wed, 31 May 2023 08:30:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLb-003sDK-TW
	for lore@lore.pengutronix.de; Wed, 31 May 2023 08:30:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLZ-0007Fi-Cw
	for lore@pengutronix.de; Wed, 31 May 2023 08:30:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+pLqHnoP9yDSnKvnn/0tBHZDe2pKh4e67tozc4qJ2s4=; b=P+2ZAGw+uKmy6P+pudBlFj7d59
	MBZU3d3rvlMuNja8SYRqR/S9HDXtXUSuHOE41NZSJmVFO+OnNhU+KrsejQN5IPCtVGwRuP1PZycdC
	f6uTvdp1vNfzPDaIEnYOvGPUuxPL2L2vitMpxDItVIriUvY45HZT/U0yxbsaqzGVan3JPPMsdqTUT
	131bHKAw2e3yPkS/zCDp3exsGju64jZ+WPbWolNgQdeBU1twJ/cgkstQC3YRO22MOqwLzVI9Xp3Gz
	btLVZbYPyxTRIZjANPFpWYZoeKQrjSdXa6GpJdMmbqezjbR2vnL7IiHmwbRc6hYRUaPdggrf9zW7/
	ZNtPiyAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKa-00GI3m-0J;
	Wed, 31 May 2023 06:29:12 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKW-00GI1k-1E
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 06:29:09 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 514BD60004;
	Wed, 31 May 2023 06:29:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 31 May 2023 08:28:50 +0200
Message-Id: <20230531062853.670751-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_232908_567434_8904D400 
X-CRM114-Status: UNSURE (   7.35  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] string: import strverscmp_improved from systemd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Boot Loader specification now references the UAPI group's version
format specification[1] on how blspec entries should be sorted.

In preparation of aligning barebox entry sorting with the specification,
import systemd's strverscmp_improved as strverscmp and add some tests
for it.

The changes to bootloader spec sorting need some more testing and will
follow separately.

Ahmad Fatoum (3):
  include: sync min/max definitions with Linux
  include: minmax.h: implement compare3 helper
  string: import strverscmp_improved from systemd

 include/linux/const.h  |   9 ++
 include/linux/kernel.h | 123 +--------------------------
 include/linux/minmax.h | 189 +++++++++++++++++++++++++++++++++++++++++
 include/string.h       |   2 +
 lib/Kconfig            |   9 +-
 lib/Makefile           |   1 +
 lib/strverscmp.c       | 165 +++++++++++++++++++++++++++++++++++
 test/self/Kconfig      |   6 ++
 test/self/Makefile     |   1 +
 test/self/string.c     | 175 ++++++++++++++++++++++++++++++++++++++
 10 files changed, 557 insertions(+), 123 deletions(-)
 create mode 100644 include/linux/minmax.h
 create mode 100644 lib/strverscmp.c
 create mode 100644 test/self/string.c

-- 
2.38.5



