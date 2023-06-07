Delivery-date: Wed, 07 Jun 2023 14:09:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryb-00EJaC-PR
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:09:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryX-0004Pz-EO
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:09:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6t5mormdVL6mDtETVAKez+lkYtBJIhJ25hAJMtYEkdM=; b=FB3q0IQ5PeTTo/iQPi6XyNVGtg
	zrSPHniBAUzvsx1Acvins8A/fApx/1GtCU42k7Sl4+D0r5ojTyuI0TSnbwJnvJxDEQbXUS8O1iRxJ
	fwe9boWs5xmBAfz40yKBfcaAKvd/9P4EnU11VVU1l3QWIu897Cv3BKR9OR18k1llMtj/p7Q6/8Oxo
	UfTrQwM21vd4bal+4YdAjSoi5LnEit5dwiTUuq1o2iLLbo6XE5hp0WUmy4nKp2Ou/L1BRGcfcopKe
	rtQ2ZVnmjJyF5BDkv3U7HZyjMvxsWOoqdHP6qQqZyF5pLM/gJAwp68wTz7GjVmEgktv/YoVpc9jyO
	xgGByDNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rx5-005l5J-1q;
	Wed, 07 Jun 2023 12:07:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwu-005kth-1O
	for barebox@bombadil.infradead.org;
	Wed, 07 Jun 2023 12:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6t5mormdVL6mDtETVAKez+lkYtBJIhJ25hAJMtYEkdM=; b=JLi2jg8JWBMHOO8EI1G8kpHpUn
	cj392b3Ra4acvjH/PcqjuK9uDmgC2JqWynm9haWsrrgL3dzq6jaojwaVEXywVu9mSrK3Es+91I0Cw
	8BSu87aLvw+357hWEiU/lUHF1J6R1SJ5fPrjJ3SqP/yZvYZCCQjWX9YfbYtr203BFvCCeaD5SJV39
	+RA5tyjtFc/35Ve5HYKfVgFHF3rn57bcW/V30KOD9M8mwiUgOejQEAmKJuv0lC8+LLzBK9Pc9CW9/
	eugdqA9iS/TfGOx+wIULdqxrDIqH+PzEOygJKlgLLIqq6D/2roRbJOefcJMFOsMsOsouLAvU4Dvuo
	gvB4UAcw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwn-0058p3-24
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwj-00035A-9I; Wed, 07 Jun 2023 14:07:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-005jku-MO; Wed, 07 Jun 2023 14:07:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyMo-11; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:03 +0200
Message-Id: <20230607120714.3083182-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_130730_029849_774816DE 
X-CRM114-Status: GOOD (  10.84  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/19] commands: stat: remove code duplication for type info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

stat prints a line with partitioning/type info for cdevs, but not all
cdevs have these, so we want to skip printing when it's empty.
Instead of duplicating the check, just utilize printf returning the
number of characters written.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Add Marco's Reviewed-by
---
 fs/fs.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 68e6bf5735f0..82d6c98ffe86 100644
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



