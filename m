Delivery-date: Thu, 11 Aug 2022 16:00:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oM8jG-001tQl-Sn
	for lore@lore.pengutronix.de; Thu, 11 Aug 2022 16:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oM8jH-0002M0-93
	for lore@pengutronix.de; Thu, 11 Aug 2022 16:00:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CJNxQALpThUzyogitEzl7A+DA3knh21hhCUJeT8+dgA=; b=O8LiBc6G3/rqoS4d9DiRtUoONF
	yHywjXl0KrE2hmopkiP4GQdONBWwGblAXyW0Dx5FqyC2mRRXBTHbkdrNQNDm8cdBBUNFkzf7X3llw
	rQ7/M8htxQSTvy2mT0aJ+zBFLW35SQPcp2rgFvCBEm2mnoYdQTs6JLjgmnTQdE9LECxQahMXfbM4S
	kaLiy5qZ+jLPYJmXdp1YYvYroq9Sc8l/lYhPNcNq70Lkk6vnYOP2jczQFpxT+Hei6tVCyrGcPJ8lJ
	AtXluPceB4GAGHiP4UyKPFtXsG8+9xBuDOYEZU+WwEmWF9D7PWSFvi5niABQ13LW3Sp9JcFxTL02Y
	ukapzCQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oM8hV-00CxUb-87; Thu, 11 Aug 2022 13:58:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oM8hP-00CxNt-DP
	for barebox@lists.infradead.org; Thu, 11 Aug 2022 13:58:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oM8hK-0002Cc-FH; Thu, 11 Aug 2022 15:58:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oM8hH-0037dF-GH; Thu, 11 Aug 2022 15:58:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oM8hJ-0018Wx-6Q; Thu, 11 Aug 2022 15:58:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Aug 2022 15:58:04 +0200
Message-Id: <20220811135804.271071-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220811_065811_469405_1A461C5A 
X-CRM114-Status: UNSURE (   9.20  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fs: ubifs: remove always-false check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GCC correctly warns that two bit wide compr_type can't
exceed or be equal to UBIFS_COMPR_TYPES_CNT (== 4).

Remove the check. The check is there in the kernel as well,
but the warning is disabled there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ubifs/super.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index b48e21fae636..6a0074bd1a5c 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -86,11 +86,6 @@ static int validate_inode(struct ubifs_info *c, const struct inode *inode)
 		return 1;
 	}
 
-	if (ui->compr_type >= UBIFS_COMPR_TYPES_CNT) {
-		ubifs_err(c, "unknown compression type %d", ui->compr_type);
-		return 2;
-	}
-
 	if (ui->xattr_names + ui->xattr_cnt > XATTR_LIST_MAX)
 		return 3;
 
-- 
2.30.2



