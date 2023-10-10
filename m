Delivery-date: Tue, 10 Oct 2023 16:35:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpK-003BNd-Kb
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpH-0000BU-6t
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O6k3IbLBF/xtqtHjBRyCXYiesfW1nL2y+3iG1Oh4u3c=; b=EHQVpi4FfqxFOMbIe+GBEd2994
	cHp2gZ/jY4xPMYrUIu9oZs7ikRHH6bziY6dfWwPhSeTGLtzfXzUsrQSZKT90ijej2nIwkLpaHkS7/
	HBIbOfKEfAMB7KG8cE/iBDZpmWASEYO6BDB4z5N63p/dJ8s20x8INZhJsIRV1DF8W+5gNqD5CS6ex
	TL8C3Juy4k6vp+8GN/eUHRWUPHFGOtbBOU2GWuojgUXWx6N1l8C/3+iYgjF2OTTR2h+6lOW+sJHrc
	MrIR7OGCJ7Zdp/HxaCdPVEnOwi4U+e821dJVCmjdzXnfy1kk8YrWEQ1vCFZykEJUnshztbJOFggLF
	Dhc5TXEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnu-00DZpK-2p;
	Tue, 10 Oct 2023 14:33:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnq-00DZjO-1z
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=O6k3IbLBF/xtqtHjBRyCXYiesfW1nL2y+3iG1Oh4u3c=; b=LMjIJsEt6ORO/cK48V4xnYTmrS
	8SqEl9pnPKOOaVnueW3JySRtz+UjtNpg1D5+0MDkO7n8naKJlBH7KfhClTuIjCPLZLoHSjqKdvYrr
	oh3F7fOuvrs9L7qV4velRQnLDIwNUYxBg6Irm2oGj55pQBuO+aT3tAJ96antGo5A63tuH61hukI2Z
	P1ruVS4ZRcclnFcnXdlezokjUIxHNLvArjs8kc17hzkO9SK/2h8qguBraovlt+kwaRuxRU6whWRD3
	S9MROJ1w/xr2XuIijojw5nycU5jLC4NTndDNAweF4LqRR+vOSp6DQlxSk2ZdPpCQtRWzwZ0GuA72K
	SEzo+YAQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnh-00GvG4-12
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Q3
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:12 +0200
Message-Id: <20231010143314.2031253-25-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_943143_256F032F 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 24/26] scripts: imx-image: add support for CST_EXTRA_CMDLINE_OPTIONS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add CST_EXTRA_CMDLINE_OPTIONS environment variable to allow build tools
like PTXdist or Yocto to pass additional cst command line options. This
becomes important for newer cst versions (> 3.3.1) since they support
multiple backends: ssl (default) and pkcs11.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 4a0a44b3a9b3..8a5768ca8b62 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -670,7 +670,7 @@ static int hab_sign(struct config_data *data, const char *csfcmds,
 	int fd, outfd, ret, lockfd;
 	char *csffile, *command;
 	struct stat s;
-	char *cst;
+	char *cst, *cstopts;
 	void *buf;
 	size_t csf_space = CSF_LEN;
 	unsigned int offset = 0;
@@ -679,6 +679,10 @@ static int hab_sign(struct config_data *data, const char *csfcmds,
 	if (!cst)
 		cst = "cst";
 
+	cstopts = getenv("CST_EXTRA_CMDLINE_OPTIONS");
+	if (!cstopts)
+		cstopts = "";
+
 	ret = asprintf(&csffile, "%s.slot%u.csfbin", data->outfile, csf_slot);
 	if (ret < 0)
 		exit(1);
@@ -716,11 +720,11 @@ static int hab_sign(struct config_data *data, const char *csfcmds,
 	if (ret == -1)
 		return -EINVAL;
 	else if (ret == 0)
-		ret = asprintf(&command, "%s -o %s -i /dev/stdin",
-			       cst, csffile);
+		ret = asprintf(&command, "%s -o %s -i /dev/stdin %s",
+			       cst, csffile, cstopts);
 	else
-		ret = asprintf(&command, "%s -o %s;",
-			       cst, csffile);
+		ret = asprintf(&command, "%s -o %s %s;",
+			       cst, csffile, cstopts);
 	if (ret < 0)
 		return -ENOMEM;
 
-- 
2.39.2



