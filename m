Delivery-date: Mon, 24 Mar 2025 12:18:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twfp7-003Z9G-2F
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 12:18:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twfp6-0007CY-JM
	for lore@pengutronix.de; Mon, 24 Mar 2025 12:18:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K9lO2I+0ovHkSheCCoiS8W2wwDeQ8h03Z94a6i7lR3k=; b=1XsSjjTtejlW1unRS6vAiYkerS
	1hsWK7ED/0J+M5OX/etmqz0TE7kTmhTJuObqNchAZIBZ6u0RPK7G2ucqAPd4yqTbV4t8PMlb2kal7
	mJdxwjdXP8zZZlyKPpsA1MOVUhOTA3raxsA7BbgM7lvcPpWxSGLIllDwg1VEi7P6BJi+Z7yui171h
	VS4FpZrfbei8F9JCfJ6Lx5RPOWNmF6YaZmkOz0G1Q9F3UsmpPSwUfgA8kxNQ9VixXNNWELGIKlmyy
	97PET/9ki057qO0UKsewypOK2uk3QRhPp/8Xvd00CkKk+CHvyzksHqrdpmbP2rkVDzhCbIIPMul90
	h/EGXiew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twfoY-00000002vhy-0j5o;
	Mon, 24 Mar 2025 11:17:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twfoV-00000002vhc-48H7
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 11:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twfoT-00077T-Tf; Mon, 24 Mar 2025 12:17:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twfoT-001Oti-0y;
	Mon, 24 Mar 2025 12:17:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twfoT-00BUl4-1z;
	Mon, 24 Mar 2025 12:17:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 24 Mar 2025 12:17:49 +0100
Message-Id: <20250324111749.2739671-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_041752_022212_BEB6B5CF 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: fix data write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The dest and src fields in struct mci_data are a union, so we cannot not
set them both to different values. Only set one of them to make write
support operational again.

Fixes: 3854311954 ("mmc: merge block read/write functions")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5b892e8570..947fe44c08 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -360,8 +360,11 @@ static int mci_do_block_op(struct mci *mci, const void *src, void *dst, int bloc
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->read_bl_len,
 		MMC_RSP_R1);
 
-	data.src = src;
-	data.dest = dst;
+	if (dst)
+		data.dest = dst;
+	else
+		data.src = src;
+
 	data.blocks = blocks;
 	data.blocksize = mci->read_bl_len;
 	data.flags = flags;
-- 
2.39.5



