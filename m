Delivery-date: Mon, 05 Jan 2026 09:07:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcx-001S2t-15
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcw-0008BD-99
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KmJSitRTmEC1dVQtuEDOFUTBPiuSh2TOJjSW7wNYv4E=; b=f4zEU7nvumdGupVPqY3z1oIqFy
	LiUlvctqyqFmr0hc0hwh+n/eGYBw/SI/CtUg1NcELmOrEZkEjpDhcUQU3H/EeLXUJxY8BE019Nayx
	ooLWTEwhd56fVF0q8ourH0iWXwdlx8ApraHEt+pDyqg5QibJ/xtotzrqsQ8mVGoEDdIH5/9B6iMh9
	rIOxbKJK0qmAMIom1Ylb6yG2qHKIa/pHWyWDF2d9YDHIb59FkVEMbjUTSfoCy/afC9MzWsCuF2oPC
	JgIbILvqLBKjujqi1uJSzzwvx/Oh4cBtENQIyBBCZhAsrbBhk8Fot7/VGFxwJbd1EXlDn2F1cdBzK
	2uilV8yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcE-0000000Ax22-3CAa;
	Mon, 05 Jan 2026 08:07:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzH-19pq
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc7-0007f0-3o; Mon, 05 Jan 2026 09:06:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:33 +0100
Message-ID: <20260105080653.3240497-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_315004_B01E581D 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] bootm: set image_data::initrd_res at a single place
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are going to substantially rework this function, so make it easier to
reason about by setting the externally visible image_data->initrd_res
only at the end.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootm.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 4e4d940d9198..e60c81a9021e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -339,6 +339,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 const struct resource *
 bootm_load_initrd(struct image_data *data, unsigned long load_address)
 {
+	struct resource *res;
 	enum filetype type;
 	int ret;
 
@@ -362,10 +363,9 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 					ERR_PTR(ret));
 			return ERR_PTR(ret);
 		}
-		data->initrd_res = request_sdram_region("initrd",
-				load_address, initrd_size,
-				MEMTYPE_LOADER_DATA, MEMATTRS_RW);
-		if (!data->initrd_res) {
+		res = request_sdram_region("initrd", load_address, initrd_size,
+					   MEMTYPE_LOADER_DATA, MEMATTRS_RW);
+		if (!res) {
 			pr_err("unable to request SDRAM region for initrd at"
 					" 0x%08llx-0x%08llx\n",
 				(unsigned long long)load_address,
@@ -397,16 +397,15 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 
 		num = uimage_part_num(data->initrd_part);
 
-		data->initrd_res = uimage_load_to_sdram(data->initrd,
-			num, load_address);
-		if (!data->initrd_res)
+		res = uimage_load_to_sdram(data->initrd, num, load_address);
+		if (!res)
 			return ERR_PTR(-ENOMEM);
 
 		goto done;
 	}
 
-	data->initrd_res = file_to_sdram(data->initrd_file, load_address, MEMTYPE_LOADER_DATA);
-	if (!data->initrd_res)
+	res = file_to_sdram(data->initrd_file, load_address, MEMTYPE_LOADER_DATA);
+	if (!res)
 		return ERR_PTR(-ENOMEM);
 
 done:
@@ -417,10 +416,9 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		pr_info(", multifile image %s", data->initrd_part);
 	pr_info("\n");
 done1:
-	pr_info("initrd is at %pa-%pa\n",
-		&data->initrd_res->start,
-		&data->initrd_res->end);
+	pr_info("initrd is at %pa-%pa\n", &res->start, &res->end);
 
+	data->initrd_res = res;
 	return data->initrd_res;
 }
 
-- 
2.47.3



