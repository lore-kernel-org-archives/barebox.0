Delivery-date: Fri, 26 Jun 2026 10:51:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HW-00A19d-36
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HW-000205-8w
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jk0Jv2lqN/FORhPUxGfSLQ2QZxkfPTZqlGVd1NQ4cfw=; b=Le26hixlRP8t+2HVjKjgE0qLQ3
	22NHLJ+nEGhQAcwmpwm81ddDFmjvp44WOdkuU5LzkNiGo0a2iZM7++4z9scBs/t5GYAigkf/VduDn
	7T1QCUn176K1rzHanmjcrQl6eTF6tYsH5m+rfh2a176TUK7d9hhjWjZSOdvqH+AzpoxQYXBSuz295
	R+z8AGW7KjkPZU9DPcVOJLbixC9nxvUUuSfzn0DblIhld2etYGn9U9JNns1+iRsn44hsgS3QrrtK3
	mPTTshBnUogxGWprGGLedte4TUa/7cRiJrCWfHjWKxIfh5ZUw6JgmDEVnH5IvSyhq9b3GbqoLtS73
	9qNTs1lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtGV-1gCR;
	Fri, 26 Jun 2026 08:46:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CW-0000000At8H-1AxV
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CT-0003ZP-L6; Fri, 26 Jun 2026 10:46:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:20 +0200
Message-ID: <20260626084608.1388806-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_314244_09388E9D 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/26] block: use logical block size for reparse checks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A reparse of the partition table at close time is queued if the two
first sectors are written.

In preparation for allowing non-512-byte sectors, replace the hardcoded
512-byte sector size with the block size encoded into the block device.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/block.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/block.c b/common/block.c
index f4b2a692407a..20ec3665d900 100644
--- a/common/block.c
+++ b/common/block.c
@@ -326,7 +326,7 @@ static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
 	 * written to LBA1, so LBA1 must change as well when the partioning
 	 * is changed.
 	 */
-	if (offset < 2 * SECTOR_SIZE)
+	if (offset < 2 * BLOCKSIZE(blk))
 		blk->need_reparse = true;
 
 	if (offset & mask) {
-- 
2.47.3



