Delivery-date: Fri, 12 Dec 2025 17:15:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nO-00Aj8U-0V
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 17:15:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nK-00027p-Hn
	for lore@pengutronix.de; Fri, 12 Dec 2025 17:15:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcC6T23FnfPRsWYv9SH8f3voQ7mLG9HnXce9SSY4l+c=; b=wm2VFg2Zn8d15L
	SiZ7YXm906rglLlOzaxyDOtz7opG06GmKTpW/2lGjGUf1gh6wN9VykyXgvArNNObap8FWBe4EkOql
	Dt1ILZtVIA3cZwXbmK5oFAfCqDPBQ4Z5U6eF6Nl0Hm7WS4UnyZ/pzGgt4jDZuG3ddtBHkAfZPSenW
	JFuh6IF5aYh1C6bVCRIas4kgNEJYuaM3/af5SHymJK9SJeiZBUVg7laaW9zTSZrPFJvFX3cbEC0fd
	bYqotzK1xvakbyb0BY2BhkMfYtCXS68ELaNORb8CZaVityu0DVTyxt+S2ZBKmmWgCPiBqq3Qsowof
	8Fae8Q+A9JSy1YdeNjSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5mo-00000000odA-3cMh;
	Fri, 12 Dec 2025 16:14:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5ml-00000000obn-3vdZ
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 16:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-0001t9-Tr; Fri, 12 Dec 2025 17:14:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-005K5z-2L;
	Fri, 12 Dec 2025 17:14:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-000000072e4-2Z1n;
	Fri, 12 Dec 2025 17:14:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 12 Dec 2025 17:12:50 +0100
Message-ID: <20251212161424.1627626-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
References: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_081428_233828_D7D5764A 
X-CRM114-Status: GOOD (  12.85  )
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
Subject: [PATCH v2 2/5] cdev-alias: fix memory leak in diskuuid handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

uuid was duplicated but not free'd in error cases. Fix that.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add Sascha's R-b
---
 common/cdev-alias.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index 1878553615d2..3732fd90525f 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -43,12 +43,15 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
 				       void *data)
 {
 	struct cdev *cdev;
-	char *arg;
+	char *str, *arg;
+	int ret = 0;
 
-	arg = xstrdup(uuid);
+	arg = str = xstrdup(uuid);
 	uuid = strsep(&arg, ".");
-	if (!uuid || !*uuid)
-		return -EINVAL;
+	if (!uuid || !*uuid) {
+		ret = -EINVAL;
+		goto out;
+	}
 
 	for_each_cdev(cdev) {
 		if (cdev_is_partition(cdev))
@@ -59,14 +62,19 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
 
 		if (arg) {
 			cdev = cdev_find_partition(cdev, arg);
-			if (!cdev)
-				return -ENODEV;
+			if (!cdev) {
+				ret = -ENODEV;
+				break;
+			}
 		}
 
-		return fn(cdev, data);
+		ret = fn(cdev, data);
+		break;
 	}
 
-	return 0;
+out:
+	free(str);
+	return ret;
 }
 
 static struct cdev_alias_res cdev_alias_aliases[] = {
-- 
2.47.3



