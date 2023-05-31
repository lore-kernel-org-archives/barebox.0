Delivery-date: Wed, 31 May 2023 17:01:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK2-004O74-Ke
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJy-0000wQ-A7
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+E9cdk0401m5fJ4/znojez6TelzbTNG7pGNovaGK1ic=; b=Xa+oq/BGSP2ffufwz4wbhbo0gg
	KgDwaj0oLEpgK7qK1Y9zWglE7I8+XisxasfJl2fTKTnfuRf+cO/a1czOws2RaW0Ck8KFFOuOGLNSR
	cjeNSekOFaIwSWckvg7MLKfjTzpcTSlyi/Aa5MDbNvn/ekS5dQUqRi9rIabbww9VamtDT4SYOHEIm
	+fmUnYX3Xgo5egGmKBFRBC0zbFhqc1hD9DqMakVtcOqAdCYGdS4Vx2nXqmX8oSx0fjqpkUf2V5/9Q
	CuMvw5rVv8LQgEjsLbrrlZ5LS08m/dBwwDT3iA27L8E4mIJwRk4DEgAcDDnklbgZJ18B/CW4GiNKy
	PU43CEqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIq-000C4L-1k;
	Wed, 31 May 2023 14:59:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIb-000BsS-1g
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008EU-Ku; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIT-0048Hb-UZ; Wed, 31 May 2023 16:59:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sCs-7O; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:16 +0200
Message-Id: <20230531145927.1399282-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_075941_685557_1ECD411C 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/18] commands: stat: remove code duplication for type info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

stat prints a line with partitioning/type info for cdevs, but not all
cdevs have these, so we want to skip printing when it's empty.
Instead of duplicating the check, just utilize printf returning the
number of characters written.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 368458cc54f8..ba60766a065a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -69,6 +69,8 @@ EXPORT_SYMBOL(mkmodestr);
 
 void cdev_print(const struct cdev *cdev)
 {
+	int nbytes;
+
 	if (cdev->dev || cdev->master || cdev->partname) {
 		printf("Origin: %s", dev_name(cdev->dev) ?: "None");
 		if (cdev->master)
@@ -96,15 +98,17 @@ void cdev_print(const struct cdev *cdev)
 	}
 	printf("\n");
 
-	if (cdev->filetype || cdev->dos_partition_type || *cdev->uuid) {
-		if (cdev->filetype)
-			printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
-		if (cdev->dos_partition_type)
-			printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
-		if (*cdev->uuid)
-			printf("UUID: %s", cdev->uuid);
+	nbytes = 0;
+
+	if (cdev->filetype)
+		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
+	if (cdev->dos_partition_type)
+		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
+	if (*cdev->uuid)
+		nbytes += printf("UUID: %s", cdev->uuid);
+
+	if (nbytes)
 		printf("\n");
-	}
 }
 EXPORT_SYMBOL(cdev_print);
 
-- 
2.39.2



