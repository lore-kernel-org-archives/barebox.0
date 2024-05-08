Delivery-date: Wed, 08 May 2024 13:19:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4fKV-002sq0-2m
	for lore@lore.pengutronix.de;
	Wed, 08 May 2024 13:19:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4fKV-000403-9w
	for lore@pengutronix.de; Wed, 08 May 2024 13:19:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fHcA9QlyS2Cm9zsO9XotMzL+YiDGhA+u9CpLdXfo3VY=; b=lQ/eFJBYBIlnWPccYZXTpFI11e
	5I6YacOq9nWpR4yb+yhZHu7pkFewHK+sPFKAQc9vHdTVBWr91fkeWu9yr+OQ70pP51Bzn/TRVzp5s
	GAxgp/a4ssrncMfUHmXGe79smAeX0MB7lgBs64A/VEhnLT+KxMf1WlCt4aSHJC6g8husvfhvnM7NN
	oCRFsEkGfMK+2g9YNZ7OBnLKgECcwAbPITpkS0LG7iJi21f5lClGABTCEP6Xf2kfoeUpZEjv5jSwX
	ptO4vqeB0bZqCmRZZkj9Pwyegt4+2YBJlL4xY2H6IUOIsi79/lXnhPI/4LFpdNsdavpMiH5ClKUb/
	fhMY3r/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fJt-0000000FAYn-1RF2;
	Wed, 08 May 2024 11:18:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fJp-0000000FAW5-0BGn
	for barebox@lists.infradead.org;
	Wed, 08 May 2024 11:18:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s4fJl-0003l5-Vd; Wed, 08 May 2024 13:18:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s4fJl-000GPZ-Iw; Wed, 08 May 2024 13:18:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s4fJl-001JMd-1a;
	Wed, 08 May 2024 13:18:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 May 2024 13:18:35 +0200
Message-Id: <20240508111836.307806-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_041841_132144_7FB7AE59 
X-CRM114-Status: GOOD (  11.18  )
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
Subject: [PATCH 1/2] pstore: move slash handling into common function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both open and stat receive a file path and manually skip over the slash
before calling pstore_get_by_name. Follow-up commit adds one more user
of pstore_get_by_name, so instead of duplicating the flash skip a third
time, move it into pstore_get_by_name.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/fs.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 238a316e9157..f2ffc0ac6251 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -130,6 +130,9 @@ static struct pstore_private *pstore_get_by_name(struct list_head *head,
 	if (!name)
 		return NULL;
 
+	if (name[0] == '/')
+		name++;
+
 	list_for_each_entry(d, head, list) {
 		if (strcmp(d->name, name) == 0)
 			return d;
@@ -143,9 +146,6 @@ static int pstore_open(struct device *dev, FILE *file, const char *filename)
 	struct list_head *head = dev->priv;
 	struct pstore_private *d;
 
-	if (filename[0] == '/')
-		filename++;
-
 	d = pstore_get_by_name(head, filename);
 	if (!d)
 		return -ENOENT;
@@ -221,9 +221,6 @@ static int pstore_stat(struct device *dev, const char *filename,
 {
 	struct pstore_private *d;
 
-	if (filename[0] == '/')
-		filename++;
-
 	d = pstore_get_by_name(&allpstore, filename);
 	if (!d)
 		return -ENOENT;
-- 
2.39.2



