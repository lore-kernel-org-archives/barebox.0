Delivery-date: Thu, 02 Jun 2022 11:03:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjw-000Ntj-P9
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:03:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgju-00077X-Vd
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:03:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7Axat0dYMfAy2EUfQw13Qnb2D01GL2POXgu9txK4yg=; b=w8ei54f1r/wAeB
	6Cc88Ld4xkFmmeUwUnpLbXCGya4ml8o/cc2onpjVGasDqfUB3R7A03kVQdIEBsbayytmE+P/47gU3
	aAUpdGrqEIvYlP/aad5LaNulHzdyonjR4W6sevkChIxPuvJdJCp3+itRh7NC/qJjMm+f5UeqgGQgA
	h1qDgxXn280sMHHo2wIPmlGI88oUMd+aXW1SAjBR/meAJTpxaHsbxCjq+fdmKdG4L/rbN9Et8ij/H
	lsEDP60LBImsB3t99em0JCMh/TWyB5nEjgrvQMOXrmYPw2B3vD4kchbMUFqhfwKdm8IJQC5outhlB
	axIa0tr6fSMU1Zl4ElhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgiZ-002KzJ-W4; Thu, 02 Jun 2022 09:02:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgi9-002KmC-7Y
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi6-0006bT-8Y; Thu, 02 Jun 2022 11:01:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi6-005zlD-TV; Thu, 02 Jun 2022 11:01:41 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi2-00DOLQ-VA; Thu, 02 Jun 2022 11:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 11:01:28 +0200
Message-Id: <20220602090133.3190450-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020145_320766_78E35502 
X-CRM114-Status: GOOD (  11.64  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] bbu: use free(NULL) to simplify function cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We will add a third allocated string in a follow up commit, so instead
of having a third label to selectively free it, just initialize all
the pointers to NULL and free them unconditionally to simplify the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 6a47b21a55b0..4d92d70ff9e3 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -310,9 +310,8 @@ int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
 {
 	struct bbu_data _data = *data;
 	int ret;
-	char *bootpartvar;
+	char *devicefile = NULL, *bootpartvar = NULL;
 	const char *bootpart;
-	char *devicefile;
 	const char *devname = devpath_to_name(data->devicefile);
 
 	ret = device_detect_by_name(devname);
@@ -328,7 +327,7 @@ int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
 	bootpart = getenv(bootpartvar);
 	if (!bootpart) {
 		ret = -ENOENT;
-		goto free_bootpartvar;
+		goto out;
 	}
 
 	if (!strcmp(bootpart, "boot0")) {
@@ -339,21 +338,19 @@ int bbu_mmcboot_handler(struct bbu_handler *handler, struct bbu_data *data,
 
 	ret = asprintf(&devicefile, "/dev/%s.%s", devname, bootpart);
 	if (ret < 0)
-		goto free_bootpartvar;
+		goto out;
 
 	_data.devicefile = devicefile;
 
 	ret = chained_handler(handler, &_data);
 	if (ret < 0)
-		goto free_devicefile;
+		goto out;
 
 	/* on success switch boot source */
 	ret = setenv(bootpartvar, bootpart);
 
-free_devicefile:
+out:
 	free(devicefile);
-
-free_bootpartvar:
 	free(bootpartvar);
 
 	return ret;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

