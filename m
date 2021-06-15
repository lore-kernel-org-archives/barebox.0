Delivery-date: Tue, 15 Jun 2021 15:58:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lt9aA-0008M0-Jj
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 15:58:22 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lt9a3-0005qI-RP
	for lore@pengutronix.de; Tue, 15 Jun 2021 15:58:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=whjptQAXy1ToXqb5r0E3HCrMFQqa4Evjfliu5r93eQM=; b=oAphc8S1TlATH9
	841sXAplNSteSKjSvFPLDM5S4WTTd/J6WNc8Oz4NdQ8sBUi7+F+y36nuE7ExNE4lilGySRLO+K3zI
	BVVN+rdaXxgmmbYkz9YzOD67EwfeDBhsbuFCm8drF+MOxb7yqFfD5TRyQOt7aDxDRDTOe6yrh/O6b
	NoSS6izEquoJuMRDIA6svQ+dwITCrtY1l9N7l+TBxkBqwELCAKi3JDsa7LfYqqqiXIT29NXLRaq/+
	FnWW6KZDVJNw1r32eoD4735L8dU4TLRGtvxE1yUzLv5Xkbyod/aPE9omXXuoaxS/tNRK/urVvJz1a
	Q38IQNzKqeZrn94jfAXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lt9ST-000Jtr-Vx; Tue, 15 Jun 2021 13:50:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Fm-000DDm-Vy
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=U5VFyGkS4yTUJG3ybfVaKdRjOKtMQBIT+eApJySIx/4=; b=fRACKgNxUEdnqZFDC6mWfw+Y/z
 8FSohYnpF/ltqotwX0SxHMUO2aKi6PVbO14NlR1hI+AuIonCidLqjEUc60/zrvzzB0X/9SmT/dbhU
 pRthNbI6HC4Czj9T/J9yNt1JcguiWGgd0nM5G09XX2pzTfUT35H1Bm7MB1ljTMqrqIQRTKHvROkk+
 ieAUsUuf0uHT/ZEB/SepZvvnJogr2SsV0mGRW2KOq51NToSjHKwTebDzmks3/zhqI6zX49Ry4tLFd
 2u6lP72+kXTwdq8ZTTUd1w0Y8rL8MJ0HDoUgR2egHlg1O06UhhL7Modhqoy32F/wr9yRAzy0l/dyU
 VYIpk2QA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt7Bs-007lvn-Eo
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 11:25:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lt7Bw-0003Zr-Ft
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 13:25:12 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lt7Bv-00013q-Nc
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 13:25:11 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 13:24:59 +0200
Message-Id: <20210615112508.5489-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_122515_611644_490D66E0 
X-CRM114-Status: UNSURE (   9.33  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/10] reset: add of_reset_control_get to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/reset/core.c  | 2 +-
 include/linux/reset.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 26a54f21dff0..1c9eeaec5491 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -147,7 +147,7 @@ EXPORT_SYMBOL_GPL(reset_control_deassert);
  *
  * Use of id names is optional.
  */
-static struct reset_control *of_reset_control_get(struct device_node *node,
+struct reset_control *of_reset_control_get(struct device_node *node,
 						  const char *id)
 {
 	struct reset_control *rstc;
diff --git a/include/linux/reset.h b/include/linux/reset.h
index a166fe1cfe04..726cb5c2057d 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -11,6 +11,8 @@ int reset_control_assert(struct reset_control *rstc);
 int reset_control_deassert(struct reset_control *rstc);
 
 struct reset_control *reset_control_get(struct device_d *dev, const char *id);
+struct reset_control *of_reset_control_get(struct device_node *node,
+					   const char *id);
 void reset_control_put(struct reset_control *rstc);
 
 int __must_check device_reset(struct device_d *dev);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

