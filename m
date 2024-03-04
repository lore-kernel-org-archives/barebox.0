Delivery-date: Mon, 04 Mar 2024 20:03:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbB-008d0N-2L
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:03:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbA-0007DK-Ho
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:03:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KyBIKg3YRE4x4pRWSaFLe2dw5Dv+ulSVr7hMgEAgP94=; b=0++leDwGflIDgAXmcHmC/gU3P0
	0OiPDdZe6GblBmWsxU12yxklkTssdDjjkMQeSBQZM2T3phtu/vDtO4zFwijfHZ2jEtjyV2PtiXAdI
	EE5tdcsESJ+mMFnvIczdzEaFG3e1K6zNxoe6oMAfqzQmpKzBJpQO0/Chc3j8YnrIH407Y+se2b0Hn
	HIgOoDKGnj4YS6F/U34xZxi6hgPNZizxEH8/E6ckndk+rAFE8BP2uWruB64DnLqlSb2NuBK+ACsMH
	8FJYxB653Vp/xLNdl/3dH33WM6paWxBKFEFS5/Wn1KwNIGRJoh7D1p3fO33+hnE7Nb5utpOYYhK6I
	4SMTR8ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaf-0000000AIey-2wai;
	Mon, 04 Mar 2024 19:03:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaL-0000000AINd-08X8
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KyBIKg3YRE4x4pRWSaFLe2dw5Dv+ulSVr7hMgEAgP94=; b=dCZ4+aOKx6sefAg934d6KwS1S3
	MKzLZuBqqG5AkQvQYIdZf/ZLfayFyYzGg/0AQDN9oY5zqRNTJX7FwlLdh2cGgaxpqYy3tYDgxbZhp
	V0Uab4rICloF911KqBaxor6LoGsuuin9KpN/mtmtkCxZpxXsh6l2Jox0Tig+/bKb9XTIA2NGoiAu3
	KHNNXMu9nQZlzjsXR7ltv65tIjVe2dx1txRqWn10Rvt3p1ZnFhJY1NYEOI/cZ8Hxa54umPxf0x8IS
	vaOGKUEjsPZ5SbpBTEEIYskAEWSEm1/iig2kwMbQxd28rzjEeOFuvbvKxznKD6QeZhJ2s2KyG4tPM
	t9vYZaOA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaF-000000051vd-2Ojv
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00060h-1o; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PH8-IO; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-37;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:05 +0100
Message-Id: <20240304190038.3486881-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190243_940329_0A9C1CC1 
X-CRM114-Status: UNSURE (   9.76  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 020/113] commands: stat: print DT node for cdevs if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It may not be directly apparent, what device a cdev spawned from.
Have stat report this information for debugging purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 1e357872f6ae..a7097dd3946e 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -69,6 +69,7 @@ EXPORT_SYMBOL(mkmodestr);
 
 void cdev_print(const struct cdev *cdev)
 {
+	struct device_node *np;
 	int nbytes;
 
 	if (cdev->dev || cdev->master || cdev->partname) {
@@ -118,6 +119,10 @@ void cdev_print(const struct cdev *cdev)
 
 	if (nbytes)
 		printf("\n");
+
+	np = cdev_of_node(cdev);
+	if (np)
+		printf("DT node: %pOF\n", np);
 }
 EXPORT_SYMBOL(cdev_print);
 
-- 
2.39.2



