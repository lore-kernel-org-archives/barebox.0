Delivery-date: Thu, 25 May 2023 20:14:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2FUF-00E5zv-PT
	for lore@lore.pengutronix.de; Thu, 25 May 2023 20:14:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2FUD-0002j8-Av
	for lore@pengutronix.de; Thu, 25 May 2023 20:14:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RnIyOgCz2CGjP3Hqk47xeKsVEjekG4Dp9rloX7iJgLQ=; b=E+BZ75b+npe9bfR5F6FsfQHGfl
	IUncUXtPyRkevLisJwpxebSZAxBgKgV142vRxfI9czdUXI5Krp1AEV2DGdJmzwRetBawwlKpK/U6n
	nHWcoO9NPFL+w3vVF9aHvS6pOEeZknfYwLDH3es4KUitLmHJxush1s7ear6KiPdct0QTRU3wxdhDW
	2lIiIgGRRPnunrsDW4vNMvXErLbkZSaV8PedHLQ+j0OV7pC0E84w8D+G2iw/5QHeWIRz+Ct/wRiRA
	VkvfF9HBTuTPfeGDlfQVygzHvzL8WSG+EEYZkFMbmKbeZm5Sahzj8bGlmvyK/D0rGTykb4ModYYCB
	4xstaYVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2FT2-00HLsN-1x;
	Thu, 25 May 2023 18:13:40 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2FSz-00HLqe-2q
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 18:13:39 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id EAAF11BF206;
	Thu, 25 May 2023 18:13:32 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 25 May 2023 20:13:19 +0200
Message-Id: <20230525181320.2277320-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230525181320.2277320-1-ahmad@a3f.at>
References: <20230525181320.2277320-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_111338_050789_9480E85F 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/4] scripts: kwbimage: check return value of asprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some newer toolchains defines asprintf with a must_check attribute,
leading to warnings when compiling kwbimage. Let's handle OOM gracefully
to get rid of the warnings.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 scripts/kwbimage.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index f9d052752d79..370c54c983b5 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -1006,6 +1006,7 @@ static int image_create_config_parse_oneline(char *line,
 					     char *configpath)
 {
 	char *keyword, *saveptr;
+	int ret;
 
 	keyword = strtok_r(line, " ", &saveptr);
 	if (!strcmp(keyword, "VERSION")) {
@@ -1056,10 +1057,16 @@ static int image_create_config_parse_oneline(char *line,
 		int argi = 0;
 
 		el->type = IMAGE_CFG_BINARY;
-		if (*value == '/')
+		if (*value == '/') {
 			el->binary.file = strdup(value);
-		else
-			asprintf(&el->binary.file, "%s/%s", configpath, value);
+		} else {
+			ret = asprintf(&el->binary.file, "%s/%s", configpath, value);
+			if (ret < 0) {
+				fprintf(stderr, "Cannot allocate memory\n");
+				return -1;
+			}
+		}
+
 		while (1) {
 			value = strtok_r(NULL, " ", &saveptr);
 			if (!value)
-- 
2.38.4



