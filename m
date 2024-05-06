Delivery-date: Mon, 06 May 2024 16:48:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zdZ-0069HV-1K
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 16:48:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zdY-0003Bk-JD
	for lore@pengutronix.de; Mon, 06 May 2024 16:48:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5J/p5A9m1qHDLdpKpJNPIVHZAffAn9BRYjr2LJQIu+U=; b=3w+duLMZ9XAmJ3WPBpqDt5w+zB
	qt1SpL4y3Iw8y90k1O57w62Ex3qwJSBcKEt0iEgu8eMFkyfiyl4OoyowBdcKYkBeWWI1ppnP+rldf
	MlNJzmyGrrfyliQZ/pdkq/8Zt8XzRcuVBvHrRdurzeFr2HkEyRfdAy0jqd0Tz/rOCs2EL3n1iwnyq
	IPnSK3veJuu9llGDsdPgxNIOSFduN6y3fPHy+Ctey90gUqhTNzkMSFm71lgMV/efILv0vNsedigCG
	CJ7u9ng9fj0w2H4khLoQQO5HGB6wppqNJtxVK6LzK89za0HH4YfI37+e/VjnN41Tm9Nbmu84rn1mx
	l8WTiPvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zd0-00000007jlU-3n6l;
	Mon, 06 May 2024 14:47:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zct-00000007jg6-2HOf
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 14:47:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-0002rx-Ng; Mon, 06 May 2024 16:47:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GHbb-BD; Mon, 06 May 2024 16:47:32 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GqIS-0s;
	Mon, 06 May 2024 16:47:32 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 May 2024 16:46:10 +0200
Message-ID: <20240506144606.1562643-9-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
References: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=842; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=jVcSlfppaSPKbVA4UL2KMO4XsS7rHJ8mvxKQZPYwm3M=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmOO0yvWofaHYZNmP617dguld3RA0LPDP/hhTu9 QZqVAMQioSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjjtMgAKCRCPgPtYfRL+ Ts8pCACTASgk6dF5N1qDeT9Urw2gVLGnv8S70BqOAua5Yv7OMz/TyjhaKJ4B8pIPDW1FQSKrFyS Wytn0ZeKzqdWsn2B9ZaZWRdD+aw4nEiDlztzFe+Gg4RWGwvTLBwCsK9PJkupOR3AyeBph4SZ7C0 UHkvbuIe3c0YHmp/alE4UUgZ8jCnm1+tryhHZIG8zqTMdt8HuYyBmAZ5so6KK+qJD1y1h7cPFqH EneaHCOiKcMwfCD1bk4D4bw9K9TOS3tkAhzdVHyrkAbx7zRw3Z+gHf5hqRCphSMFkj8cb7hMSkB Y5LgNbpfcrKg0nj0Y215y2P/ZHDLznM2ce7V73u1xiWGI+NJ
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_074735_687624_6C068ECE 
X-CRM114-Status: GOOD (  12.94  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] mtd: nand: mxc_nand: Add error message if BBT creation fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Then reading from the chip and thus aborting creation of a bad block
table, at inform the user about that with an error message.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 8e564fa76a33..faea1c95f95e 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1569,8 +1569,11 @@ static int checkbad(struct mtd_info *mtd, loff_t ofs)
 	};
 
 	ret = mtd_read_oob(mtd, ofs, &ops);
-	if (ret < 0)
+	if (ret < 0) {
+		dev_err(mtd->dev.parent, "Failed to read page at 0x%08x\n",
+			(unsigned int)ofs);
 		return ret;
+	}
 
 	if (buf[2000] != 0xff)
 		/* block considered bad */
-- 
2.43.0



