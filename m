Delivery-date: Fri, 12 Dec 2025 17:15:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nO-00Aj8p-31
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 17:15:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nM-00029r-A2
	for lore@pengutronix.de; Fri, 12 Dec 2025 17:15:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cShIAN+WQCzuVF8G7ycZ3Nw5AVqrj5HZoKbXU3pAxKY=; b=41GTyoWVRUrn2x
	g3HrYEKHkcODXneZ8GtozupUjrojZ7m3v9FHvQyXF71d5t0MhLHU2EhfmaWmPoU2ne66KdxF5G0W1
	j8YNZkXPPnT8/jSMUI8AJA/14c0ht5AOFtbSkgI4/MkoVy2LKuCWZIfxNuV0Jak3LVtdfB0kcAxMo
	NJctCDmsXntfFo0OpAPO8dIc/sTJdMfEk5ycTPlIveMpkE6kAfG7eLM7kmDoH1lHx7/mJP00q+FRw
	r5i+gas4MLkIGfM0xc47tPhLKsVU1GIFKPg8ZOv8h9ijjv+G1FjVJlHX02m5LaIAjkPB2PL7MfIcI
	tmk7oa9jU8epxzhSevuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5mv-00000000ogD-3q2V;
	Fri, 12 Dec 2025 16:14:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5mt-00000000oeL-2FdA
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 16:14:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-0001t8-Rz; Fri, 12 Dec 2025 17:14:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-005K5y-2A;
	Fri, 12 Dec 2025 17:14:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-000000072e4-2Mdq;
	Fri, 12 Dec 2025 17:14:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 12 Dec 2025 17:12:49 +0100
Message-ID: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_081435_570184_B913FFCA 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH v2 1/5] cdev-alias: support referencing diskuuid without child partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is already the case with other cdev aliases, so support this for
symmetry.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add Sascha's R-b
---
 common/cdev-alias.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index e5a059ad7f4d..1878553615d2 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -57,9 +57,11 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
 		if (strcasecmp(cdev->diskuuid, uuid))
 			continue;
 
-		cdev = cdev_find_partition(cdev, arg);
-		if (!cdev)
-			return -ENODEV;
+		if (arg) {
+			cdev = cdev_find_partition(cdev, arg);
+			if (!cdev)
+				return -ENODEV;
+		}
 
 		return fn(cdev, data);
 	}
-- 
2.47.3



