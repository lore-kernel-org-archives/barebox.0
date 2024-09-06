Delivery-date: Fri, 06 Sep 2024 12:41:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWPI-001qqQ-2r
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:41:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWPH-0002qo-CD
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:41:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UWifL/f92ynoMmvfy4HPuHgpW8L7VS9fDyToX0OAQbQ=; b=MgO5iH5HoMKxciMtLw6BPSesB6
	dVsLbVnAUvPZjKZzDUMA32SureIQtObxn+6W3GH6TfhBRjMdtxKwbmYuniFPSukhhi207bfT8QomP
	qS6CiSlPsbxhH7NVG1cSU7bzTwYhkdjBDPrcX0wKoWFgI1kQL8BMC/LF9ZIZ0YDL6eFfF+luyTjLg
	3K7eJ7J1M9czbfofk4sAfGN4zp6m+RzDEiMsS+HozXYhirZAQvU3oRcVtjlFuBvagJJp3H9wBGgxW
	JC+7QqnzqgIuEdSM1xx3Ffp9y2vfw66SOkrUdYXAjF8/pqcDzaqScthj7DCNESFwet6uSp5SdJb8r
	QliTNq0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOo-0000000BoK8-1B9l;
	Fri, 06 Sep 2024 10:41:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOg-0000000BoFf-3vSZ
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:41:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOH-000254-KG; Fri, 06 Sep 2024 12:40:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-005vJY-Vp; Fri, 06 Sep 2024 12:40:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOE-009BBJ-2r;
	Fri, 06 Sep 2024 12:40:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:19 +0200
Message-Id: <20240906104028.2187872-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034059_073818_82D0BED0 
X-CRM114-Status: GOOD (  13.74  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 06/15] keytoc: make key name hint optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The key name hint is used in barebox to find a key without iterating
over all keys, but it's not required. Make the key name hint optional
to keytoc.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/keytoc.c | 31 ++++++++++++++++++++++---------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index ecb33cbe47..85a7cd7319 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -9,6 +9,7 @@
  *
  */
 #pragma GCC diagnostic ignored "-Wdeprecated-declarations"
+#define _GNU_SOURCE
 #include <stdio.h>
 #include <string.h>
 #include <time.h>
@@ -602,9 +603,9 @@ static int gen_key(const char *keyname, const char *path)
 
 int main(int argc, char *argv[])
 {
-	char *path, *keyname;
 	int i, opt, ret;
 	char *outfile = NULL;
+	int keynum = 1;
 
 	outfilep = stdout;
 
@@ -652,21 +653,33 @@ int main(int argc, char *argv[])
 	}
 
 	for (i = optind; i < argc; i++) {
-		keyname = argv[i];
+		char *keyspec = argv[i];
+		char *keyname = NULL;
+		char *path, *freep = NULL;
 
-		path = strchr(keyname, ':');
-		if (!path) {
-			fprintf(stderr,
-				"keys must be given as <key_name_hint>:<crt>\n");
-			exit(1);
+		if (!strncmp(keyspec, "pkcs11:", 7)) {
+			path = keyspec;
+		} else {
+			path = strchr(keyspec, ':');
+			if (path) {
+				*path = 0;
+				path++;
+				keyname = keyspec;
+			} else {
+				path = keyspec;
+			}
 		}
 
-		*path = 0;
-		path++;
+		if (!keyname) {
+			asprintf(&freep, "key_%d", keynum++);
+			keyname = freep;
+		}
 
 		ret = gen_key(keyname, path);
 		if (ret)
 			exit(1);
+
+		free(freep);
 	}
 
 	if (dts) {
-- 
2.39.2



