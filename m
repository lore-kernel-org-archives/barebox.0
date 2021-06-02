Delivery-date: Wed, 02 Jun 2021 10:04:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loLrB-0007yp-Ct
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 10:04:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loLr6-0000n6-Fc
	for lore@pengutronix.de; Wed, 02 Jun 2021 10:04:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ugb1U9gH+9qotP/1/pjsBFHcBFRwKyo0b+LfS1NyEjM=; b=rcW5fdtt6X3MMr
	zLRnfNr9HhVDg7L2q/Gu7uGCIVXUGqXSVgeJohIly567coZs8BuWuI/GEhfxDnOmoSUyTSL+0J2mm
	wXVhPvD1OKD7VOB7UkOMbA+BiEAAHWRUYWfipYDFPNu+PTAXM1NZjLuAMEl+g1YCAvb+kfjA3Br4/
	FQnnq1zjcxtNCxhkZIQe+pkkRoJ6fzhOGvNa8TkzMLKqSufR6qujbyJN8MSO0KQgpRiQ0+3pphhOW
	HwhrKsI1bEa7Xu6vmjNGNRiNpW392SZx7H10WDlsVI6eNLcFoCFCzLZF8ZL0B0lCar0HFFbAYyjd4
	UKFrU9eDBNY7FLgitQBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loLpG-002T6O-04; Wed, 02 Jun 2021 08:02:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loL6G-002F4z-1m
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 07:15:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loL6E-0003ul-Kb; Wed, 02 Jun 2021 09:15:34 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loL6E-0002ju-C6; Wed, 02 Jun 2021 09:15:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 09:15:32 +0200
Message-Id: <20210602071533.10093-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_001536_122669_5354BC39 
X-CRM114-Status: GOOD (  12.89  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] partitions: Increase MAX_PARTITION to 128
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Having MAX_PARTITION defined to 8 is enough for a DOS partition table,
but not for GPT. Increase it to the maximum GPT supports. It might be
even better to allocate the partitions dynamically, but for nor take the
easy way out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/parser.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 8ad134a9aa..69508932b3 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -11,7 +11,7 @@
 #include <filetype.h>
 #include <linux/list.h>
 
-#define MAX_PARTITION		8
+#define MAX_PARTITION		128
 #define MAX_PARTITION_NAME	38
 
 struct partition {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

