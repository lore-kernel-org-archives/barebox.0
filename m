Delivery-date: Sat, 19 Mar 2022 08:28:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTVj-00GW1D-M2
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 08:28:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTVj-0002HU-Qs
	for lore@pengutronix.de; Sat, 19 Mar 2022 08:28:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DHCVLmGuSldKOejHsyTMNKsgEDWJrb41OIsN6q26w8M=; b=nGVCk+zN63BkfR
	IU6PSpRHayZNwXbr8IqegGC8tvx77C7bJZM6CFDRLVYFgw14hj/g2F+He3eod+jxTHx38uceGfA8l
	QXYVjt7DxZaNuqo8SKALmT8xmInvbl2bGO7rn3k5kxTWxtekIFZu9ZOkXppRwsNyL/hxHD9zZiPu2
	98C+E6ktyC6zQ0e3yUG75C+PqSrr9ZaDjC1pZ5azMEzr4iRjWjsOWk1yYCf/irT3BpAspiRIalwlk
	7EOmnTE5lWOI6HEuThoB1E4NN8ncfUptbIfBFsWGn/f22MFE6e7V9bPwZmABO2xGVBFeqKZhHhput
	pIvyxYjtOOxP5AG7kKjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVTS7-003NF3-2f; Sat, 19 Mar 2022 07:24:43 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVTRy-003ND5-TG
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 07:24:39 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 5DB29200002;
 Sat, 19 Mar 2022 07:24:31 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Mar 2022 08:24:27 +0100
Message-Id: <20220319072427.1310855-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_002435_111976_9F406B95 
X-CRM114-Status: GOOD (  10.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] partitions: efi: print GPT offset in debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This debug message is printed for the alternative GPT header as well,
which may not exist at that location, because the medium has a different
length than what's in the GPT header. Make it easier to differentiate,
whether the message refers to the primary or alternate GPT header by
printing the LBA the header was expected at.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/partitions/efi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 0787b93f120b..848bed22610f 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -154,8 +154,8 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 
 	/* Check the GPT header signature */
 	if (le64_to_cpu((*gpt)->signature) != GPT_HEADER_SIGNATURE) {
-		dev_dbg(blk->dev, "GUID Partition Table Header signature is wrong:"
-			"0x%llX != 0x%llX\n",
+		dev_dbg(blk->dev, "GUID Partition Table Header signature at LBA"
+			"%llu is wrong: 0x%llX != 0x%llX\n", lba,
 			(unsigned long long)le64_to_cpu((*gpt)->signature),
 			(unsigned long long)GPT_HEADER_SIGNATURE);
 		goto fail;
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

