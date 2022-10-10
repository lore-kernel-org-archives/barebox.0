Delivery-date: Mon, 10 Oct 2022 08:12:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm1z-0033dt-EO
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:12:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm1x-000174-Dv
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:12:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VSJ9XeXydNXoeikLEmnVplxkHrjW2SU7ch5s5Jcx19Y=; b=40yGan3nnwyxcS+NkKT9j49fdj
	3eDrGzUabx/mIfPF0QgQK9DJD3tfXyoPk//aVNWzBCdWQBMoBe5CkYh64hDvGy6ta/MWHGQObRukZ
	LzFSkBkJ9EdJFORyovEzcaZPrQj6QUzXY4IDd9qlL1G0PmKpQAZ9OB6ZWmFoJe7h3UD6ojfdtGAet
	kS5+vB1bBE1amGq8zHtgc/1VVAPT+Nub5Pmnd7eRPjur8V136sSF4FKZGe5BOezIgI6gC9r99zl5q
	/xqaWa5j8rt37xhDyy4lpJ5wLHNidXRQ1xjkga5Uq6GmxtEclJl2NzH1VgYocgscGqE6ojs0N4lA0
	W+5ujzYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0m-00HAaR-4u; Mon, 10 Oct 2022 06:11:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0d-00HAWc-FC
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-0000Xr-7x; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0b-000d9l-G5; Mon, 10 Oct 2022 08:11:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kB8-7A; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:22 +0200
Message-Id: <20221010061122.2084009-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231127_530248_3C711A7E 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/10] common: bootm: use switch-case
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The switch statement is more readable and lends itself to be easily
extended for future file types, e.g. PE/COFF for EFI loading.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 47 +++++++++++++++++++++++------------------------
 1 file changed, 23 insertions(+), 24 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index f507aece8c18..fb1ed36a26dc 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -577,16 +577,19 @@ static int bootm_open_fit(struct image_data *data)
 
 static int bootm_open_elf(struct image_data *data)
 {
+	struct elf_image *elf;
+
 	if (!IS_ENABLED(CONFIG_ELF))
 		return -ENOSYS;
 
-	data->elf = elf_open(data->os_file);
-	if (IS_ERR(data->elf))
-		return PTR_ERR(data->elf);
+	elf = elf_open(data->os_file);
+	if (IS_ERR(elf))
+		return PTR_ERR(elf);
 
-	pr_info("Entry Point:  %08llx\n", data->elf->entry);
+	pr_info("Entry Point:  %08llx\n", elf->entry);
 
-	data->os_address = data->elf->entry;
+	data->os_address = elf->entry;
+	data->elf = elf;
 
 	return 0;
 }
@@ -689,29 +692,25 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
-	if (os_type == filetype_oftree) {
+	switch (os_type) {
+	case filetype_oftree:
 		ret = bootm_open_fit(data);
-		if (ret)
-			return ret;
-	}
-
-	if (os_type == filetype_uimage) {
+		break;
+	case filetype_uimage:
 		ret = bootm_open_os_uimage(data);
-		if (ret) {
-			pr_err("Loading OS image failed with: %s\n",
-			       strerror(-ret));
-			goto err_out;
-		}
+		break;
+	case filetype_elf:
+		ret = bootm_open_elf(data);
+		break;
+	default:
+		ret = 0;
+		break;
 	}
 
-	if (os_type == filetype_elf) {
-		ret = bootm_open_elf(data);
-		if (ret) {
-			pr_err("Loading ELF image failed with: %s\n",
-			       strerror(-ret));
-			data->elf = NULL;
-			goto err_out;
-		}
+	if (ret) {
+		pr_err("Loading %s image failed with: %pe\n",
+		       file_type_to_short_string(os_type), ERR_PTR(ret));
+		goto err_out;
 	}
 
 	if (bootm_data->appendroot) {
-- 
2.30.2



