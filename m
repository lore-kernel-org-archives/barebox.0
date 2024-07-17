Delivery-date: Wed, 17 Jul 2024 09:29:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6e-0006TR-1c
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 09:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6d-0007UR-Uc
	for lore@pengutronix.de; Wed, 17 Jul 2024 09:29:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e5BUgF6ejGKH7iJitmDVYHhJoFR9q2FqjxNJiVb5g78=; b=HL0wT4ukNWHP8dmcS2maCAFOz6
	ZiKrDZgsMYCB1BufVMDfwt1e1y4lZds1UpHPUDGWFbTIkZtXYHrhQVCRg58r+nc9PmINiqAWmXf5/
	XOzFaLpQ+HpprFO6XyGE0T/tB6Z2smQ5DsRT2MQqSh7WC6NXoTk5UrlCDatyzd5B0NqUmMizUZ3U6
	VjCmzra7b7OgWYQNxc61i8u1Fb6WdFhnpjpQTJygbWTm+64xaYpjfsvJxOv+f9IpcSdn9LnyzwgAN
	lLmUi3v9+EgDnZkmu84IAPK1cAzR6aIBhzUXnW8fa4t0kBUH2HDMc7JwJh19FUz6cBNd8uBRdjZkv
	qg/qZ+ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz6E-0000000Cynw-2znH;
	Wed, 17 Jul 2024 07:29:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz6B-0000000CymG-3cYj
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 07:29:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-0007Io-Jm; Wed, 17 Jul 2024 09:29:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-000A1m-6V; Wed, 17 Jul 2024 09:29:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-00BsTV-0L;
	Wed, 17 Jul 2024 09:29:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 09:29:12 +0200
Message-Id: <20240717072913.2830995-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717072913.2830995-1-a.fatoum@pengutronix.de>
References: <20240717072913.2830995-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_002915_920581_331F6CBD 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] partition: fix use of uninitialized variable in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The error message reports the partition number using the variable i, but
that's never initialized, as clang notices. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/partitions.c b/common/partitions.c
index 0b10377e7327..d46ed4080597 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -241,7 +241,7 @@ void partition_desc_init(struct partition_desc *pd, struct block_device *blk)
  */
 int parse_partition_table(struct block_device *blk)
 {
-	int i;
+	int i = 0;
 	int rc = 0;
 	struct partition *part;
 	struct partition_desc *pdesc;
@@ -259,6 +259,8 @@ int parse_partition_table(struct block_device *blk)
 				i, blk->cdev.name, rc);
 		if (rc != -ENODEV)
 			rc = 0;
+
+		i++;
 	}
 
 	partition_table_free(pdesc);
-- 
2.39.2



