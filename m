Delivery-date: Sat, 29 May 2021 10:31:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmuNi-0004pz-VY
	for lore@lore.pengutronix.de; Sat, 29 May 2021 10:31:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmuNi-00038L-5n
	for lore@pengutronix.de; Sat, 29 May 2021 10:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AS3e/qT4GR6pJzsoKZ8Rtgf+rvBYnwjowfXIJMtYKPc=; b=pNMD8mK249GEka
	vYlPGXa+NziQchIHCB5FQSIKp7YI5TK4Ybvh4hAoSJtHp75yqxQmQSaeq6Ocg/MnXsD84g59MuSnl
	ZhXWLWGrP07W1GC/npEK05SSzZGZAvE0QBj6HlA7YH6V0/mO1+QpDaYmvB3pMn4EY4OwOAA42sOw2
	CwXkPuVRQPDwDQ2GL6xPdZAQhH1ltdB3UEwf956ZlveJaDTUs6iK0AFfSr+fYPSp3f+n9JTIJHOiX
	t8UBfUYAWJjGHfIPjxfo+vAgvMy1qIw5h2fGQ6JG/gwfmT2eeKAgg5Ac4XlR0poJHWrmYlnkWnBQr
	WSdKMBbsih1dZG3SdEDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmuMD-0048Yg-M0; Sat, 29 May 2021 08:30:09 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmuM8-0048Vd-B5
 for barebox@lists.infradead.org; Sat, 29 May 2021 08:30:05 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 165C5240006;
 Sat, 29 May 2021 08:29:57 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 29 May 2021 10:29:53 +0200
Message-Id: <20210529082953.2034104-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210529_013004_559648_B604169B 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: have dev_set_name() return 0 on success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Align the return code with Linux, where the function returns 0, not the
device name length on success. No functional change, as no one checks
the error code anyway.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/base/driver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index f60533c59eb1..1fa3f6c6fac0 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -480,9 +480,7 @@ int dev_set_name(struct device_d *dev, const char *fmt, ...)
 	 */
 	free(oldname);
 
-	WARN_ON(err < 0);
-
-	return err;
+	return WARN_ON(err < 0) ? err : 0;
 }
 EXPORT_SYMBOL_GPL(dev_set_name);
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

