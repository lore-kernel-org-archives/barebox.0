Delivery-date: Thu, 02 Feb 2023 14:29:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZeD-00BQbw-2Y
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 14:29:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZeA-00035M-DN
	for lore@pengutronix.de; Thu, 02 Feb 2023 14:29:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dsQIobMsnwbp2PHirj2yTYaVxNbS4OklFnd9gp8n/48=; b=lkhQHM54OASVCkjOL57v24Lc6g
	dd6Z5vYWHd6ZgPBUwoaAjPAukdKWflpeJqy7JW//Up949bjtuORA73ov00dcIK8650uSsuE6djiUh
	EdKgosdMqtDS+as8Om/78rPGhnX88mPnrROXCmU7XEenN5kyvEr7TWdkkMdqqwiDiMliozPHlCqj0
	pllLh6lqTTwp34pmIco7PRIp4B6dimSxuKFX+Xsm+RGADOKcmnXLU6Ju4Qx6YwWFX5yMRer9FXeJ+
	fJaDunpR5kO+eqHJRQoUQTclGcwJnTpUfUgqaOi4yiCi9RNkQt6HdOpF8njErDAEJytbQMVAzNYD9
	djy6ZKZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZd0-00G0pE-UX; Thu, 02 Feb 2023 13:27:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZcv-00G0nl-JI
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 13:27:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZcu-0002wV-6S; Thu, 02 Feb 2023 14:27:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZcs-002BTY-At; Thu, 02 Feb 2023 14:27:43 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZcs-001JkD-TR; Thu, 02 Feb 2023 14:27:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Feb 2023 14:27:34 +0100
Message-Id: <20230202132734.314110-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052745_650031_B8F4756A 
X-CRM114-Status: GOOD (  12.20  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] fs: align write return codes with POSIX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Writing past end of a file results in a cryptic error code:

  barebox@board:/ cp /dev/zero /dev/mmc0.part
  write: Operation not permitted
  cp: Operation not permitted

Because the cdev's truncate is not implemented and as such partition
can't be increased in size. POSIX specifies EPERM as the correct return
code for truncate(2) in such a situation, but for write(2) it is ENOSPC.
Thus most truncate callbacks in barebox instead return ENOSPC, when
according to POSIX, EPERM would have been the correct error code to
propagate.

Switching all truncate drivers is a bit more involved, so for now let's
treat EPERM and ENOSPC instead when truncate fails to enlarge a file.

Reported-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix commit message title (s/truncate/write/)
  - added Marco's Reviewed-by
---
 fs/fs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 752688b574a0..c463466e1be0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -441,6 +441,8 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
 		ret = fsdev_truncate(&f->fsdev->dev, f, f->pos + count);
 		if (ret) {
+			if (ret == -EPERM)
+				ret = -ENOSPC;
 			if (ret != -ENOSPC)
 				goto out;
 			count = f->size - f->pos;
-- 
2.30.2



