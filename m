Delivery-date: Thu, 27 Jul 2023 12:11:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOxyF-00Bzb8-E1
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 12:11:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOxyC-0002E7-Oz
	for lore@pengutronix.de; Thu, 27 Jul 2023 12:11:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GZXSdkvHp9wOu2qgRELwK2VolDUM2y3oqN7L9WOjMJU=; b=2Y3ibO7UMwn6w2
	ufrsQqaY0+9xhZNNI4L6KkeLSWK2b+8F5VWNEqQJMh1BPephFNYxOIC/9Y2urNmMRFTx5SaANSzDS
	lpCjBTz0oq91jFjel6D2lQAW7eN4Kht1BLtz0QW8HAGn66v5rHi6z+Y/no3iBSiYtVyGOpnW1LTeN
	QFp45a3Wwox9cMP/ED6Sq1L3cEDtREd0EKDj640v9ks3MmDqgKsXwdiG6Y4IZWvd7Mz/3+QGc/6LB
	9UTwyGsbAB2vqJ3ROSQ885/mBuocib6jCzDTiB2HBAPd/RX8nGrvofkeySmBkQUtpJRMvxXlqMlpv
	MDURDVxxflqx4vQfqfdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOxx5-00CwOX-2X;
	Thu, 27 Jul 2023 10:10:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOxx1-00CwKk-1I
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 10:10:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOxww-0001w1-9h; Thu, 27 Jul 2023 12:10:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qOxwv-002S6F-Jm; Thu, 27 Jul 2023 12:10:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qOxwu-00E4gl-Tg; Thu, 27 Jul 2023 12:10:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Jul 2023 12:10:07 +0200
Message-Id: <20230727101008.3350548-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_031031_457037_55BD1FD3 
X-CRM114-Status: GOOD (  12.64  )
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
Cc: Oliver Fendt <ofendt@googlemail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] Add SPDX License identifier for files originating from LiMon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The header of some LiMon imported files reference a License file which
does not exist in barebox.
These files were originally licensed under GPLv2 as can be seen in this
U-Boot commit:

| commit 2ea9103924048637d28baf0f7b1dd410f6704c32
| Author: Wolfgang Denk <wd@denx.de>
| Date:   Tue Sep 30 10:44:01 2014 +0200
|
|     SPDX License cleanup for LiMon imported files
|
|     A number of network related files were imported from the LiMon
|     project; these contain a somewhat unclear license statement:
|
|             Copyright 1994 - 2000 Neil Russell.
|             (See License)
|
|     I analyzed the source code of LiMon v1.4.2 which was used for this
|     import.  It does not contain any "License" file, but the top level
|     directory contains a file "COPYING", which turns out to be GPL v2
|     of June 1991.  So it is legitimate to conclude that the LiMon derived
|     files are also to be released under GPLv2.  Mark them as such.

Based on this commit add the correct SPDX License identifier. While at it
drop the reference to the non-existing License file and also remove the
long unmaintained file history.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Oliver Fendt <ofendt@googlemail.com>
---
 include/net.h | 11 ++++-------
 net/dhcp.c    | 13 +++++++------
 2 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/include/net.h b/include/net.h
index b7cbab7d72..b5a5e1b616 100644
--- a/include/net.h
+++ b/include/net.h
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-FileCopyrightText: 1994-2000 Neil Russell
 /*
- *	LiMon Monitor (LiMon) - Network.
+ * net.h - barebox networking support
  *
- *	Copyright 1994 - 2000 Neil Russell.
- *	(See License)
- *
- *
- * History
- *	9/16/00	  bor  adapted to TQM823L/STK8xxL board, RARP/TFTP boot added
+ * based on U-Boot (LiMon) code
  */
 
 #ifndef __NET_H__
diff --git a/net/dhcp.c b/net/dhcp.c
index d28c37c693..93738e5a6b 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -1,11 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-FileCopyrightText: 1994, 1995, 2000 Neil Russell
+// SPDX-FileCopyrightText: 2000 Roland Borde
+// SPDX-FileCopyrightText: 2000 Paolo Scaffardi
+// SPDX-FileCopyrightText: 2000-2004 Wolfgang Denk, wd@denx.de
 /*
- *	Based on LiMon - BOOTP.
+ * dhcp.c - barebox dhcp support
  *
- *	Copyright 1994, 1995, 2000 Neil Russell.
- *	(See License)
- *	Copyright 2000 Roland Borde
- *	Copyright 2000 Paolo Scaffardi
- *	Copyright 2000-2004 Wolfgang Denk, wd@denx.de
+ * based on U-Boot (LiMon) code
  */
 
 #include <common.h>
-- 
2.39.2



