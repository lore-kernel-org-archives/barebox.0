Delivery-date: Tue, 16 Mar 2021 13:45:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM94s-0002gp-2j
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 13:45:38 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM94r-0003nR-FS
	for lore@pengutronix.de; Tue, 16 Mar 2021 13:45:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cZOFkIg+p5C+2FmENPVI/AsXICqnEpZt0A4k3cv3g64=; b=QRHDwhdlExw/aX1foEFKlQ+87j
	A770aFENmQeFdu75vDIpWEhNIWN1szXkrzaqVJs2OZxA8IDTZD994Z2TpBqohUXi10BA94q6Bk5BM
	nWNSCy09VqRzlG2qEN7JyAKVqr8r6cY7mT211lT0XLHMQRbmd8+CER21UjOnjzu4+1evkv1/WCtE1
	AXJKjo7D30qVF9DfSKdQpr+rZWdueP0JE3Cx8+w8Aa1WMtS1aKMOultRGBjk6VZmBXCe/ipsBiNfc
	TfemoGI7kdQHv3A8ZVBteMwi9zPVfZBORfVEAKEjRSlBNlSwNjz2YDE4Q7E4Sog4QirMpmyDHbLEA
	gF5lxrXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM93m-000j8J-FF; Tue, 16 Mar 2021 12:44:30 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM93e-000j7k-Uv
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 12:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1615898662; x=1618490662;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jKB0wx9sYExjEUvSxMfSwO95wBKR1nBimJBnxw2DHts=;
 b=fp1r6SnHMRgiKwLYOadLH3IMGdK7qRp5LxqeqjjlGOes4Lw00kDEClICk2BiOr0Y
 6M+tthMh8gHfRK4keneO01t6xynS19R4/106kyrpF2uajNtGlh7DFVRQay+eKqJN
 m1G0Opi4JsKGBvesyTDFoE5HHIB+kY/c7GmEp5PLy+U=;
X-AuditID: c39127d2-0c7b670000001c86-99-6050a826a798
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 76.22.07302.628A0506;
 Tue, 16 Mar 2021 13:44:22 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021031613453606-157680 ;
 Tue, 16 Mar 2021 13:45:36 +0100 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 16 Mar 2021 13:44:20 +0100
Message-Id: <20210316124420.26239-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 16.03.2021 13:45:36,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 16.03.2021 13:45:36
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGJMWRmVeSWpSXmKPExsWyRoCBS1dtRUCCwZanQhYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJVx88wV1oLFbBVv5zWzNzD+Yeli5OSQEDCR+DntPlMXIxeHkMBW
 RomNW5axQjjXGCVWPtzLDFLFJmAksWBaIxOILSIgLzF3fxsriM0sYCBxvWE1WFxYIECidX8r
 mM0ioCqxfvVDsF5eARuJtq3LmSC2yUvMvPSdHSIuKHFy5hMWkGUSAlcYJQ6s+cMOUSQkcXrx
 WWaIBdoSyxa+Zp7AyDcLSc8sJKkFjEyrGIVyM5OzU4sys/UKMipLUpP1UlI3MQLD5vBE9Us7
 GPvmeBxiZOJgPMQowcGsJMJrmheQIMSbklhZlVqUH19UmpNafIhRmoNFSZx3A29JmJBAemJJ
 anZqakFqEUyWiYNTqoFx7dNbzczbt5vnMQdZ5xtkx8vPUzY90dV9IfpNmmZxgVJsalLIvI+m
 GW/2rIhWvltXGWezJ7UuP+rVvS+L9h/pWLLl46MvXIuM1h8Ud5vGxVZSeS90yiTb1584cxot
 HP5d8vk4dR6vyfQltQd4Yt7G7Dunuzczi/tEWk5B2MWuZc8f1kr5LzytxFKckWioxVxUnAgA
 lJyYcAkCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_124423_220036_38F9E8B5 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: Notify user when erasure of a block failed during erase
 op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Give the user information about the faulty block when an erase
operation fails with error.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/mtd/core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index af33ad665c5a..22eb2a056c4e 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -222,8 +222,11 @@ static int mtd_op_erase(struct cdev *cdev, loff_t count, loff_t offset)
 			printf("Skipping bad block at 0x%08llx\n", addr);
 		} else {
 			ret = mtd_erase(mtd, &erase);
-			if (ret)
+			if (ret) {
+				printf("%s: failed to erase block at 0x%08llx\n",
+					__func__, addr);
 				return ret;
+			}
 		}
 
 		addr += mtd->erasesize;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

