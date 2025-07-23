Delivery-date: Wed, 23 Jul 2025 17:56:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uebpY-002wxi-28
	for lore@lore.pengutronix.de;
	Wed, 23 Jul 2025 17:56:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uebpY-0002QY-4j
	for lore@pengutronix.de; Wed, 23 Jul 2025 17:56:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J5GZ7UMUeBteBUiRSPLt1MoyARzo4ZIA1AzFphuwD6A=; b=BnT3oxdohGveTAbwt8UilY9ysZ
	i0fXxlS0l9GVgMC3O2QvSHqtdUGZ5OldCFfzK/X8f6iSxy10uyiws90FiqWDENh3WFFzTqiFrbke3
	0z7zd9zoFWOfSxEIN+KNY3aPlJRo7xiSTkvexOKqPutGQKl8+WHak99beSuqUOFkrK2UNcqYC+CD+
	R5/LIcqMGGPRGRECUt42sY8BDUXrmtqbLqLdbXhoclwpRIA0/aEUApBlgH+pWvWpcodkl1jKaPEVd
	wAXPLsSIb+RYQe4tllxOUdYyxccxyDOU2NUoM6ebfdCuK2g5nL5SCUjK4A30vMzG2f9Sj0czFhxsy
	PnKwWttQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uebp0-00000005Rdd-3llZ;
	Wed, 23 Jul 2025 15:55:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueboq-00000005Rd0-1BkL
	for barebox@lists.infradead.org;
	Wed, 23 Jul 2025 15:55:49 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uebop-0002Ko-17
	for barebox@lists.infradead.org; Wed, 23 Jul 2025 17:55:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 23 Jul 2025 17:55:45 +0200
Message-Id: <20250723155545.682170-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_085548_324211_69C4C234 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] block: follow links before check if cdev_is_block_partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_is_block_partition() fails if a cdev is passed which is a
parition-link. Most of our barebox code is link-aware by resolving the
links first.

Make it more user-friendly and resolve the possible cdev parttion link
first before performing the actual check.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/block.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/block.h b/include/block.h
index 5ce3eb7d7838..a5a2dcf58995 100644
--- a/include/block.h
+++ b/include/block.h
@@ -107,6 +107,7 @@ static inline bool cdev_is_block_device(const struct cdev *cdev)
 
 static inline bool cdev_is_block_partition(const struct cdev *cdev)
 {
+	cdev = cdev_readlink(cdev);
 	return cdev_is_block_device(cdev) && cdev_is_partition(cdev);
 }
 
-- 
2.39.5



