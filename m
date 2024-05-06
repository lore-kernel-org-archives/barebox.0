Delivery-date: Mon, 06 May 2024 18:06:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s40rF-006DLd-2V
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 18:06:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s40rF-0004tg-6t
	for lore@pengutronix.de; Mon, 06 May 2024 18:06:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oFBk7Aa+4DNcMPHj2i6tjz5GCThckbJIyYgTqt761i8=; b=h1sls4VAS42LWRFFrB0HdtaF1Z
	d5xLwfuAIugf1fM+y7V2NvZtjqWrEolMXYol1LXIcn9PKyVShG35BnCJ256s5+sy4VipI1vWlNup0
	QMqJ6QE9PJIvgF6JkBbdv6KpcnvlLkPXISspJtwmdQkJLTSg9Q4tjRfS5pg908B8pK7TZgyb8CFgr
	SPI5vHgRbp7SO41BA/e9kPl1e6B09TSFi4MjlZ4Ka/qV7A47mvHN8B9a37wk+SYJLnG1pDEtfsDY0
	JtwqBPkfLEqKheteDhxYWqlOMBopdtsTb1NhNgECaxREuCROtTvtLJ7gcuHZU9q/TrwVsAVN5r6Kv
	XXcvOp+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40qi-00000007z0L-0rZs;
	Mon, 06 May 2024 16:05:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40qf-00000007yzR-05hR
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 16:05:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40nh-0003yw-6m; Mon, 06 May 2024 18:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40ng-00GIQU-Qn; Mon, 06 May 2024 18:02:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40ng-009E6k-2N;
	Mon, 06 May 2024 18:02:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 May 2024 18:02:46 +0200
Message-Id: <20240506160246.2198975-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240506160246.2198975-1-a.fatoum@pengutronix.de>
References: <20240506160246.2198975-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_090553_150418_29AE67A0 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] pstore: return -ENOENT when file is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The expectation with stat(2) and open(2) is that they report -ENOENT if
a file name doesn't exist. Return this instead of the unexpected -EINVAL
error code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/fs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 777e2448cc62..238a316e9157 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -148,7 +148,7 @@ static int pstore_open(struct device *dev, FILE *file, const char *filename)
 
 	d = pstore_get_by_name(head, filename);
 	if (!d)
-		return -EINVAL;
+		return -ENOENT;
 
 	file->size = d->size;
 	file->priv = d;
@@ -226,7 +226,7 @@ static int pstore_stat(struct device *dev, const char *filename,
 
 	d = pstore_get_by_name(&allpstore, filename);
 	if (!d)
-		return -EINVAL;
+		return -ENOENT;
 
 	s->st_size = d->size;
 	s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
-- 
2.39.2



