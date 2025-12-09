Delivery-date: Tue, 09 Dec 2025 14:06:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxPu-009Z2h-1A
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 14:06:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxPt-0003i1-Ob
	for lore@pengutronix.de; Tue, 09 Dec 2025 14:06:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O3zwvMCDIV4RToUFPBk3q9U6TEX0Er7hxFiQSvNF57Y=; b=qaJwRe7gI9Np0CRI0K5OQjpiNN
	OWqsYdTMvaDh1jRzjnZ1koqMeN/mNper04r/pSPuQrRza2yphMGdJU+7RkLZ0DMHK6c+dQqi/zSt4
	oQpRVlxv3LmtbPkIcHhYTnUa+hk/a+Dlx+Ytg03O++PuH8q0NWxMFXDUO3j//WGmIetrrF6UZwMoQ
	4MX5b7Y3lWUelB3frwdtSpqKqwz2byz8ABkvFqXaGSnOSNTVYwat89385UgkXofbHubjNzpi/hMnJ
	xT0+rereQcMvN1SyBYn+dmMjE1VxFLCKXs+fnIvw8CuZcXs6zJYDroOiCTZddwf99MUYR9nqB6fSp
	Ux8jfMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxPS-0000000EIcs-38Yx;
	Tue, 09 Dec 2025 13:05:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxPP-0000000EIb9-2O0j
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 13:05:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxPO-0003X5-5t; Tue, 09 Dec 2025 14:05:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxPN-004n1U-3C;
	Tue, 09 Dec 2025 14:05:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-05Vh;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-11-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=2059;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tKA2r5OnPsSlb7I0d30HyQjikRH711+7xTwlhdrBLIU=;
 b=0bwWWNUHYMnbv9Wsl7odOaDzn/flIn0Z6zXz54zJpjiwf6yZsDUPJVKqgeHEsG+m6wzn8TDmU
 Mft0x2BkRnyDjAIZ9Xszyai/bU1bfg4SkQzjfiZ1a6FBR66M0x9GtJX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_050539_608273_380E46D9 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/13] common: cdev-alias: rename struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll introduce a globally available struct cdev_alias in the next step,
so rename struct cdev_alias in common/cdev-alias.c to avoid name
conflicts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/cdev-alias.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index 329ba9e97c16fe7a90d09c0bb31ef3359b72b5d0..e5a059ad7f4d9bc447c44072c5c7744051d12a0e 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -11,13 +11,13 @@
 #include <driver.h>
 #include <init.h>
 
-struct cdev_alias {
+struct cdev_alias_res {
 	const char *name;
-	int (*resolve)(struct cdev_alias *, const char *arg,
+	int (*resolve)(struct cdev_alias_res *, const char *arg,
 		       cdev_alias_processor_t fn, void *data);
 };
 
-static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
+static int cdev_alias_resolve_bootsource(struct cdev_alias_res *cdev_alias_res,
 					 const char *partname,
 					 cdev_alias_processor_t fn,
 					 void *data)
@@ -37,7 +37,7 @@ static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
 	return fn(cdev, data);
 }
 
-static int cdev_alias_resolve_diskuuid(struct cdev_alias *cdev_alias,
+static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
 				       const char *uuid,
 				       cdev_alias_processor_t fn,
 				       void *data)
@@ -67,7 +67,7 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias *cdev_alias,
 	return 0;
 }
 
-static struct cdev_alias cdev_alias_aliases[] = {
+static struct cdev_alias_res cdev_alias_aliases[] = {
 	{ "bootsource", cdev_alias_resolve_bootsource },
 	{ "diskuuid", cdev_alias_resolve_diskuuid },
 	{ /* sentinel */}
@@ -76,7 +76,7 @@ static struct cdev_alias cdev_alias_aliases[] = {
 int cdev_alias_resolve_for_each(const char *name,
 				cdev_alias_processor_t fn, void *data)
 {
-	struct cdev_alias *alias;
+	struct cdev_alias_res *alias;
 	int ret = 0;
 	char *buf, *arg;
 

-- 
2.47.3



