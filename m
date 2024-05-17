Delivery-date: Fri, 17 May 2024 09:49:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sLC-0014Hq-0A
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:49:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sLB-0008Cw-6G
	for lore@pengutronix.de; Fri, 17 May 2024 09:49:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S/5V2y3qD8UwYi9aP4YYWWOEltDi0xbjwFz1imVkAvs=; b=WNuJ1F6JiqKo+v0Z0kHI9+A7+l
	U4doPkAU/Qsj89vmrbmRj0XAWc66pCdSTV/fni6PU/lvNkblv9Wxmoy7JWADtGR1OYwxH56D5YjaU
	Js2AlXK7BXpBY0C+h+AqyuPL++EerGQZ6zDq5LOxYb70K+UomBHJxyVsvdlpmwDXRZFTxprGtx4m/
	vE/sQd28M3F7JoC+6hpftG4T1ncM3GRgciIva1q7VKQJMftGtgkNGYloBgM73ftQiVrtaCeCHs5M9
	csfJ5P8bZdKfSX0dSkLXhb5kYf35mg1MSPR5jSLFYkyu1WnrVekWcieC5nur0loPSqirEpl7S/PPT
	Hjb7KoJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKm-0000000775n-3obA;
	Fri, 17 May 2024 07:48:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKU-000000076rS-49Sr
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:48:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKT-0007X3-86; Fri, 17 May 2024 09:48:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKS-001q0z-Rq; Fri, 17 May 2024 09:48:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKS-003DpY-2V;
	Fri, 17 May 2024 09:48:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:48:34 +0200
Message-Id: <20240517074835.768112-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004839_753652_7A84F074 
X-CRM114-Status: GOOD (  11.14  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] FIT: fix build with sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As FIT is built only for ARM so far, this sandbox-related code has
bitrotted. To prepare allowing it to build for other platforms, adjust
the API to the current state.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 251fda97b3fc..4a69049abcdf 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -945,21 +945,22 @@ void fit_close(struct fit_handle *handle)
 	free(handle);
 }
 
-#ifdef CONFIG_SANDBOX
 static int do_bootm_sandbox_fit(struct image_data *data)
 {
 	struct fit_handle *handle;
+	void *config;
 	int ret;
-	void *kernel;
-	unsigned long kernel_size;
 
-	handle = fit_open(data->os_file, data->verbose);
+	handle = fit_open(data->os_file, data->verbose, BOOTM_VERIFY_NONE,
+			  FILESIZE_MAX);
 	if (IS_ERR(handle))
 		return PTR_ERR(handle);
 
-	ret = fit_open_configuration(handle, data->os_part);
-	if (ret)
+	config = fit_open_configuration(handle, data->os_part);
+	if (IS_ERR(config)) {
+		ret = PTR_ERR(config);
 		goto out;
+	}
 
 	ret = 0;
 out:
@@ -974,9 +975,10 @@ static struct image_handler sandbox_fit_handler = {
 	.filetype = filetype_oftree,
 };
 
-static int sandbox_fit_register(void)
+static __maybe_unused int sandbox_fit_register(void)
 {
 	return register_image_handler(&sandbox_fit_handler);
 }
+#ifdef CONFIG_SANDBOX
 late_initcall(sandbox_fit_register);
 #endif
-- 
2.39.2



