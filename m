Delivery-date: Tue, 23 Jan 2024 13:19:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSFk9-00DNie-2B
	for lore@lore.pengutronix.de;
	Tue, 23 Jan 2024 13:19:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSFkA-0005dN-Cg
	for lore@pengutronix.de; Tue, 23 Jan 2024 13:19:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z7PCBGzNPwz4XtYMDb+vnuEK/cJJ7eBxfmmh0nz+oag=; b=N9iTPx7Pt/zWqEEX9nFrtfhI5N
	xtdPNqi/2dfq1TqWRTIs7VV+14YeXNpXinoH06uDic+l6gv+KBRWzY9z1G8q06MiJU4wX2KNaiOb9
	PthR6gSO8kUI6QpqQHX7uUI5ZzD+oFIfTJk7zSAk1nkBmj0bIrWoj2qepfxnZLyxyKBLxR4y+/Hx5
	5Inxhvv4OVHDN68jwUclQu/sQBJxk+oizU7IZfhOFDGCzAmbq2II2W0JV+N7j8CtUMDbFfBlr5ORD
	SFJMzEdHmZE0QKyy+r1gZ+BmIanLRi6aTEJuVhAVsla3x85uEVUcqAghnm1RcvVF/xG5aMNqVxhSa
	K7ovMUSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSFjD-00GNjK-0E;
	Tue, 23 Jan 2024 12:18:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSFj9-00GNhG-17
	for barebox@lists.infradead.org;
	Tue, 23 Jan 2024 12:18:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1rSFj6-0005Yk-Qt; Tue, 23 Jan 2024 13:18:00 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ejo@pengutronix.de>)
	id 1rSFj6-001pDY-EX; Tue, 23 Jan 2024 13:18:00 +0100
Received: from ejo by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1rSFj6-00FzxJ-1I;
	Tue, 23 Jan 2024 13:18:00 +0100
From: Enrico Jorns <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>
Date: Tue, 23 Jan 2024 13:17:41 +0100
Message-Id: <20240123121741.3813041-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_041803_385992_1ED123B1 
X-CRM114-Status: UNSURE (   8.67  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: user: usb: fix duplicate literal block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have an explicit code-block below that is erroneously interpreted as
code itself otherwise.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/usb.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 95d6dd7e36..f78d3e39fd 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -233,7 +233,7 @@ and initrd:
 USB Mass storage gadget
 ^^^^^^^^^^^^^^^^^^^^^^^
 
-Example exporting barebox block devices to a USB host::
+Example exporting barebox block devices to a USB host:
 
 .. code-block:: sh
 
-- 
2.39.2



