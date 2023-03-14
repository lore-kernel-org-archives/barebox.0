Delivery-date: Tue, 14 Mar 2023 14:19:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc4YR-00EOi6-TA
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 14:19:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc4YR-0007xf-Nn
	for lore@pengutronix.de; Tue, 14 Mar 2023 14:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Resent-Message-ID:Resent-Date:Resent-To:Resent-From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Sender:Resent-Cc:List-Owner;
	bh=YtpRXazuD5m+6ZcQ9ekKFcfSkCpruvD3dDez/HoxjfI=; b=VBwCxgeLLL5Xz+CmgQePGTLNjs
	IwGqc2MS8zkep1EUKsSYnR05JW3PoWE1UIx4lmObemwqm+fG1Xt8ZduhOrjqJdP9/wOQR5BxbNJxj
	sG9UzXAbnSLaFkRXkox1EC9HDyjU5/dnI/j3l3IwLXN59lchGo8aRUVqgfD71GA0tGWO5Fg/H1aYX
	SkQqsRgajD48n/STmYlpry6fJbpmU3jWpu/n5TAsbvMfPHUZ1OfBTfZmA1fvHJeGcAcGweIOBonlZ
	U82sUOiT55QxoBpIfxBCLtle/gIcID2/LEk+Eq8y2Iw+s+5ELn1/HAOGkVyzCYw/u2zs2z0v5v9Pi
	MeoHj4yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc4XT-00AGfI-2Y;
	Tue, 14 Mar 2023 13:18:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc4XR-00AGeZ-0Q
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 13:18:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pc4XN-0007rF-Ns
	for barebox@lists.infradead.org; Tue, 14 Mar 2023 14:17:57 +0100
Resent-From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Resent-To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Resent-Date: Tue, 14 Mar 2023 14:17:57 +0100
Resent-Message-ID: <59077226-09eb-80a8-7381-f2c98b108d08@pengutronix.de>
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pc0Tv-0000k3-Ao; Tue, 14 Mar 2023 09:58:07 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pc0Tu-0042Q9-Mb; Tue, 14 Mar 2023 09:58:06 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pc0Tt-007o8m-Vs; Tue, 14 Mar 2023 09:58:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 14 Mar 2023 09:58:05 +0100
Message-Id: <20230314085805.1860986-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230314085805.1860986-1-a.fatoum@pengutronix.de>
References: <20230314085805.1860986-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_061801_167886_B93005C8 
X-CRM114-Status: UNSURE (   9.93  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] commands: stat: fix UUID print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

cdev->uuid is an already formatted string, not a binary UUID.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 4837c4b701bc..65e4c661b9ce 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -69,8 +69,6 @@ EXPORT_SYMBOL(mkmodestr);
 
 void cdev_print(const struct cdev *cdev)
 {
-	bool uuid_set;
-
 	if (cdev->dev || cdev->master || cdev->partname) {
 		printf("Origin: %s", dev_name(cdev->dev) ?: "None");
 		if (cdev->master)
@@ -98,14 +96,13 @@ void cdev_print(const struct cdev *cdev)
 	}
 	printf("\n");
 
-	uuid_set = memchr_inv(cdev->uuid, 0x00 ,sizeof(cdev->uuid));
-	if (cdev->filetype || cdev->dos_partition_type || uuid_set) {
+	if (cdev->filetype || cdev->dos_partition_type || *cdev->uuid) {
 		if (cdev->filetype)
 			printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
 		if (cdev->dos_partition_type)
 			printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
-		if (uuid_set)
-			printf("UUID: %pUl", cdev->uuid);
+		if (*cdev->uuid)
+			printf("UUID: %s", cdev->uuid);
 		printf("\n");
 	}
 }
-- 
2.30.2




