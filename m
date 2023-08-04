Delivery-date: Fri, 04 Aug 2023 11:48:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRrQ5-00738Z-Pu
	for lore@lore.pengutronix.de; Fri, 04 Aug 2023 11:48:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRrQ3-00029Y-Op
	for lore@pengutronix.de; Fri, 04 Aug 2023 11:48:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YbmRrZF1J55B4gh7kn7v5AyC0x9CoiADSqT0YmXzOwE=; b=JprNTbjv4FQ/jO1GBg1Pn68qV/
	4Jih1Kfb1Ygo9mtn5/+ebRpLat2CXpkZW9FdZlEfPh5UrUQf0DUHmRfN+wOKPvhgoDQbPoWiUpbDI
	gNo5Ht9vd1wqFMZov9cyseAJyQxbvR6VS09GzONt4ylQ24FfZLPs97o7XtygyeHxO62V7fK6l4VG8
	ecU3qiFc3g2gdCojUbVxU/0bWnpObkqoJ3upDUPf3Rz030tsONaD/7YVmCGgHmN7DCwcuhc/KXyt8
	J1sUeoNke4KZPP3cB+kkUyw3dDVSsxSDwanzBZG5A71iPaYemSn2QTrR/XOqwKJ5VyXDJfj5QjG/K
	UrLYhWzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRrOj-00C3Vo-0Q;
	Fri, 04 Aug 2023 09:47:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRrOf-00C3V5-2a
	for barebox@lists.infradead.org;
	Fri, 04 Aug 2023 09:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1qRrOc-00022R-U5; Fri, 04 Aug 2023 11:46:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1qRrOc-0012Z7-AI; Fri, 04 Aug 2023 11:46:58 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1qRrOc-008ml9-0Q;
	Fri, 04 Aug 2023 11:46:58 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Fri,  4 Aug 2023 11:46:51 +0200
Message-Id: <20230804094650.2094025-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_024701_838329_2C85BA89 
X-CRM114-Status: GOOD (  10.56  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Convert License Identifiers to SPDX 3.0 for files originating from LiMon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The respective U-Boot commit was ported to Barebox in commit
0b5d36d77b6022bd1f40 (2023-07-27, Sascha Hauer: "Add SPDX License
identifier for files originating from LiMon"), but the U-Boot change was
already made in 2014, and the SPDX specification was updated since then
and deprecated the "GPL-2.0" identifier in favour of "GPL-2.0-only".
Update the license identifiers to SPDX 3.0 specification, which we also
use everywhere else in the Barebox code.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 include/net.h | 2 +-
 net/dhcp.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/net.h b/include/net.h
index b5a5e1b6168d..5e029c71f29e 100644
--- a/include/net.h
+++ b/include/net.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: 1994-2000 Neil Russell
 /*
  * net.h - barebox networking support
diff --git a/net/dhcp.c b/net/dhcp.c
index 93738e5a6ba6..e1025bf91b02 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: 1994, 1995, 2000 Neil Russell
 // SPDX-FileCopyrightText: 2000 Roland Borde
 // SPDX-FileCopyrightText: 2000 Paolo Scaffardi
-- 
2.39.2



