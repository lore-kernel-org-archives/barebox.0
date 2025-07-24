Delivery-date: Thu, 24 Jul 2025 15:55:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewQ9-003GPi-2y
	for lore@lore.pengutronix.de;
	Thu, 24 Jul 2025 15:55:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewQ9-0002Yx-BW
	for lore@pengutronix.de; Thu, 24 Jul 2025 15:55:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LJD5+sb9GSLNDcx11xIIDIVpB1qiWt01mqx0qstbnPg=; b=yoOHh5W6JpYShjhfe7rygJzgcd
	DPK3y8oKp++mvUTwnMqB/HNzT2aAf46E8W4n9kEdVguthFU0psoNlVVsQqKsAEvaHnhHm6vDPEyx6
	LhUC3k+3zPxHLgPoKXivHmcahQ1R+XMkTE3EYnh6epwqeczRQ9LeWQ39GFxcHsHzMsOwVMiuTHO/N
	p//KwT0s8suOULq2NeCjmPilur6W3qnyprj+ArOIAa4gGls9UidvesKmdY6/2/LyW3AbaQxjmbK5l
	YH36FL7jEkGJXSe0RqGFSBifalus0Oy/NeL0zqKE1pUUT1v+0Anw+LGC4IU4eltSjjGNvLpMgiarM
	8GQ3MJhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewPi-00000007dkj-0NOf;
	Thu, 24 Jul 2025 13:55:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewLc-00000007Xuw-2kGa
	for barebox@lists.infradead.org;
	Thu, 24 Jul 2025 13:51:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uewLZ-0000no-77
	for barebox@lists.infradead.org; Thu, 24 Jul 2025 15:50:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jul 2025 15:50:55 +0200
Message-Id: <20250724135056.1252995-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_065100_689303_210070CD 
X-CRM114-Status: GOOD (  13.05  )
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
Subject: [PATCH v2 1/2] keytoc: make keyspec a const char pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently the code is working on the keypsec directly, this has the
drawback of the already existing freep variable to handle optional
key-names accordingly.

Delcare the keyspec as const and never operate on in directly to keep it
as it is and instead always alloc path and keyname, so the freep
variable can be dropped. For the split operation a simple helper was
added.

This prepares the code to fix the keyspec env handling which is done by
the next commit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/keytoc.c | 54 +++++++++++++++++++++++++++++++++---------------
 1 file changed, 37 insertions(+), 17 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index c92465707f65..617317d6607e 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -653,6 +653,34 @@ static int gen_key(const char *keyname, const char *path)
 	return ret;
 }
 
+static void get_name_path(const char *keyspec, char **keyname, char **path)
+{
+	char *sep, *spec;
+
+	spec = strdup(keyspec);
+	if (!spec)
+		enomem_exit(__func__);
+
+	/* Split <key-hint>:<key-path> pair, <key-hint> is optional */
+	sep = strchr(spec, ':');
+	if (!sep) {
+		*path = spec;
+		return;
+	}
+
+	*sep = 0;
+	*keyname = strdup(spec);
+	if (!*keyname)
+		enomem_exit(__func__);
+
+	sep++;
+	*path = strdup(sep);
+	if (!*path)
+		enomem_exit(__func__);
+
+	free(spec);
+}
+
 int main(int argc, char *argv[])
 {
 	int i, opt, ret;
@@ -705,35 +733,27 @@ int main(int argc, char *argv[])
 	}
 
 	for (i = optind; i < argc; i++) {
-		char *keyspec = argv[i];
+		const char *keyspec = argv[i];
 		char *keyname = NULL;
-		char *path, *freep = NULL;
+		char *path = NULL;
 
-		if (!strncmp(keyspec, "pkcs11:", 7)) {
-			path = keyspec;
-		} else {
-			path = strchr(keyspec, ':');
-			if (path) {
-				*path = 0;
-				path++;
-				keyname = keyspec;
-			} else {
-				path = keyspec;
-			}
-		}
+		if (!strncmp(keyspec, "pkcs11:", 7))
+			path = strdup(keyspec);
+		else
+			get_name_path(keyspec, &keyname, &path);
 
 		if (!keyname) {
-			ret = asprintf(&freep, "key_%d", keynum++);
+			ret = asprintf(&keyname, "key_%d", keynum++);
 			if (ret < 0)
 				enomem_exit("asprintf");
-			keyname = freep;
 		}
 
 		ret = gen_key(keyname, path);
 		if (ret)
 			exit(1);
 
-		free(freep);
+		free(keyname);
+		free(path);
 	}
 
 	if (dts) {
-- 
2.39.5



