Delivery-date: Thu, 11 Dec 2025 22:01:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn5-00AQo8-0l
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 22:01:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn4-0004NM-IZ
	for lore@pengutronix.de; Thu, 11 Dec 2025 22:01:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L85RmoeOjadZVrBUx9jWobV45AKSyaan8BC+5k96Ung=; b=ZT90U14t888n27Dj7MdgNQjpt+
	jrviPSPbg+YHeZBApib29GrM1724AZkuLP0ar+9FcpodqVRK6AR7l4GwOpfyxje5x/QMHqt+e0ogo
	KJoWlgcgiLS3bNITHD0yRRd/gawq3trIHE7ok4BuWdeRMFHIN2/raPY9IQq/TxWL2P+JNNUbzZOa9
	fkiula2Ng4T88ovg6YyspVveVeeWzMr/aRH4DB2JGjEUM8FYjNTLkRl2mUfIR9wAoBIawJ4HAqYqe
	1PbQMC8DXO+QuK+aOmBhOUrS2iJSiKmrkLYcym1mgLN0jj4VxGvvMzpXplRrkwWKhv/b8kCSj0uTt
	1aSWJX1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmR-0000000HIwA-2NEI;
	Thu, 11 Dec 2025 21:00:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmO-0000000HIu1-0Rqh
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 21:00:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-0003vE-BB; Thu, 11 Dec 2025 22:00:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-005BZt-0S;
	Thu, 11 Dec 2025 22:00:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-0000000DJ5q-0AlV;
	Thu, 11 Dec 2025 22:00:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 22:00:44 +0100
Message-ID: <20251211210049.3170349-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
References: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_130052_167580_3C93CF95 
X-CRM114-Status: GOOD (  11.96  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] cdev-alias: fix memory leak in diskuuid handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

uuid was duplicated but not free'd in error cases. Fix that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



