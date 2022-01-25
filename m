Delivery-date: Tue, 25 Jan 2022 11:43:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCJIK-00ClpM-WD
	for lore@lore.pengutronix.de; Tue, 25 Jan 2022 11:43:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCJIJ-00040o-PG
	for lore@pengutronix.de; Tue, 25 Jan 2022 11:43:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X4P33OGeSMkj7x7R9105rnyYSUZhAbVxMwsA/W9HerY=; b=XOSfXwpeuJG4kS
	dWFx/9kajzkY5XVJ42jQUqVnV1Hu1UQlnvhb6+t7UkkDnAEg0NZ2Zf1cS8oAfl+cYyUNZIWYz7dhM
	hOuhjYF/GxBai/Zun77eixrt2MgMC37YuoH6VuZBQDr6k2hX2RzysCHF6XbicefV/xQpGjzTnGKtv
	Hcp/XhplZWEDrByFmX9TkGkIAIckobE3wC+fjmWz6O+ujTZPY9AF1W6po9Rpzir3UfiCwaiPkJAGG
	0J5kVz3CRuQCgxNc99bv9V7pnC5wA5GCd331kwbrSfqcNxypT3V+kqBeYxEMOmKp/BH8GXkdz0xIb
	Ar1VpqOdN9H+ecPKmqOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCJGo-007UeW-6q; Tue, 25 Jan 2022 10:41:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCJGj-007Udd-58
 for barebox@lists.infradead.org; Tue, 25 Jan 2022 10:41:46 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCJGf-0003pu-NA; Tue, 25 Jan 2022 11:41:41 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCJGf-00Cp6d-7x; Tue, 25 Jan 2022 11:41:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 25 Jan 2022 11:41:40 +0100
Message-Id: <20220125104140.3056337-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_024145_231426_1AF3E7AB 
X-CRM114-Status: GOOD (  11.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] dos-partitions: Fix extended partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

extended partitions are currently registered with their full size which
means they overlap with the logical partitions therein. Since 7f9f45b9bf
("devfs: Do not create overlapping partitions") we no longer register
overlapping partitions, so the logical partitions are no longer
accessible. Fix this by reducing the size of the extended partition to
two blocks (1kiB) which is the same as Linux does.

Fixes: 7f9f45b9bf ("devfs: Do not create overlapping partitions")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/dos.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 6c76aac371..597d7bf9bc 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -200,6 +200,8 @@ static void dos_partition(void *buf, struct block_device *blk,
 			pd->used_entries++;
 
 			if (is_extended_partition(&pentry)) {
+				pd->parts[n].size = 2;
+
 				if (!extended_partition)
 					extended_partition = &pd->parts[n];
 				else
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

