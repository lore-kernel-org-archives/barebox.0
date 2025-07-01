Delivery-date: Tue, 01 Jul 2025 12:19:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWY5P-00Cvjm-2C
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 12:19:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWY5P-0003m4-5d
	for lore@pengutronix.de; Tue, 01 Jul 2025 12:19:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6o3Rz3lw10VNFdlQYGD7e9Yq/c/i7fnqJ68wAJwEyFY=; b=oNutZ76+NO1ZKDOEq7nYWCE2T6
	jvwNuXgp03HkUL1UqSSalJ1cOeaaxk4urzZNIoU8OAB6Vo0dvkeEM/dlAicueVSr9FEQAATBmzM8l
	Aw8dL9n2NaTLFgvhSU8mQGeyQS7lS8q0J7J4H+QQsJ5QSyv3JqP6FTB/1gd45jlASYkHPzFo8XRnB
	pdCRGLisWVEjz8fcMglY9Lf3n9S66OflU3EH9MhX7RTu9KgQcyw9OFILL7pu+YORrTobg2Rm6KZea
	kD5ZrMppVfgRhQkrEXO7D9664o1fKr8AAxI0RZvSARuT278i3Rnjes9S43H9tVtClTkKq3Pa4oazo
	Rl5khzcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWY4w-00000004jLE-0Cxv;
	Tue, 01 Jul 2025 10:19:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWY2e-00000004iz7-2PGh
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 10:16:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWY2c-00013h-R7; Tue, 01 Jul 2025 12:16:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWY2c-006Fo1-27;
	Tue, 01 Jul 2025 12:16:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWY2c-002IxL-1j;
	Tue, 01 Jul 2025 12:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Jul 2025 12:16:41 +0200
Message-Id: <20250701101641.549515-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_031644_608770_BF19C031 
X-CRM114-Status: GOOD (  11.85  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: ARM32: Fix FIT image booting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit 8f71bf6146acc3 ("bootm: create generic FIT image handler")
introduced a generic FIT image handler. With this ARM32 FIT images can
no longer be booted. The ARM32 FIT image handler used to call
do_bootm_linux(), but with the generic FIT image handler we select the
boot handler based on the filetype of the Kernel image which is a zImage
and consequently we call do_bootz_linux(). do_bootz_linux() operates on
data->os_file which points to the original FIT image, so booting fails
with:

invalid magic 0x28341b01

As a workaround check if we are booting a FIT image in do_bootz_linux()
and call do_bootm_linux() in that case.

Fixes: 8f71bf6146ac ("bootm: create generic FIT image handler")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 5849b55cc3..69ca6d31d6 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -462,6 +462,9 @@ static int do_bootz_linux(struct image_data *data)
 	unsigned long mem_free;
 	void *fdt = NULL;
 
+	if (data->os_fit)
+		return do_bootm_linux(data);
+
 	fd = open(data->os_file, O_RDONLY);
 	if (fd < 0) {
 		perror("open");
-- 
2.39.5



