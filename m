Delivery-date: Wed, 14 Jan 2026 11:13:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxsl-001CP5-1s
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 11:13:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxsk-0000sz-KX
	for lore@pengutronix.de; Wed, 14 Jan 2026 11:13:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C/8iaXx+KMfDSco73Xg9EGG6QdT3wW1GzcqXrDAs32k=; b=RPC9iDnvHc9+QBAq4VB8iNLVcb
	3UUdQqZuFOJ+dyWZ3ntDGBqAFsNaCJKcQfkCU1Y8rTLLeAXemiuDypQTNQS7DRkEWFFEWmGmPAWRo
	oYPoMY0DcdNdnlrHFMLuCgnvyX3Jx9owjobq+2pDzJEDNj8vi7srst/VK/1I6KvjqNqaM9vrkQDrA
	UUP6jfnoETrJkdZggag1xTk0/y66WpnP8Dnb1UIKd8TVEV8Grmux+bRBJ/xxQyYuvNmCnoIlo44Dr
	/WMtcRSvnHYSlwVNOdLn6/YTxGpklQszKMx0ukHq6mv9dQ8TJXqhAkXBrDQeGmTi8ho4BtawpPrIx
	Aza3l8nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxsI-00000008jAn-2jdZ;
	Wed, 14 Jan 2026 10:13:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxsB-00000008j8x-0PMS
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 10:13:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxs9-0000fx-Aw; Wed, 14 Jan 2026 11:13:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxs9-000ZWw-2W;
	Wed, 14 Jan 2026 11:13:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxs9-00000000TYG-2x72;
	Wed, 14 Jan 2026 11:13:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jan 2026 11:13:01 +0100
Message-ID: <20260114101304.113538-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_021307_131837_CDB9FC8E 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] commands: delpart: return success when no error occurred
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the introduction of cdevs, this command returns 1 unconditionally.
Fix that up to return 0 on success and a more descriptive code
otherwise.

Fixes: a2b7cd183bad ("introduce cdev")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/partition.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index 7dd2fa629b6f..9444edac9e59 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -91,11 +91,11 @@ static int do_delpart(int argc, char *argv[])
 		err = devfs_del_partition(kbasename(argv[i]));
 		if (err) {
 			printf("cannot delete %s: %pe\n", argv[i], ERR_PTR(err));
-			break;
+			return err;
 		}
 	}
 
-	return 1;
+	return 0;
 }
 
 BAREBOX_CMD_HELP_START(delpart)
-- 
2.47.3



