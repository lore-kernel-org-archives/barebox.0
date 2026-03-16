Delivery-date: Mon, 16 Mar 2026 17:01:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANd-001U3g-0D
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 17:01:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANc-0002f9-4n
	for lore@pengutronix.de; Mon, 16 Mar 2026 17:01:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AQDt0Eu7p/Ohi7B95XN/sCHU10V/Zsp59q1R8Grf5c0=; b=niMDudFSDyeEnIPQFl8OqiGvpm
	ctsvyphLM8vjGrY5sxkTQ2v9/htaE1ioVGUN4lsAJxs5IX7I10LDSRYrWK6khrXyL8zlv6XprNPbo
	Eoxnvmpo6GKE9Sgrvh5dBcQW/XK+BDlJA2iwxxaJwmabICRS+yjy4ToPc6ZMtGum44MJhkamwxm4O
	A4qCzyyNFavacpDqfXQW+CtBlvLMaLSVVG247qwWJEc7a+eM7XvfImoz1l22KT77MKjVJSbZ7OGTq
	UrVMpccCfVxOuI3Sg/Jz6K0aEthwj6ppQJscokeaquBQiUdGgAEaNFSmi/6g2jnrK3Qc5fdPd+AP6
	/F2L8FDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMy-00000004Od7-06NQ;
	Mon, 16 Mar 2026 16:00:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMv-00000004OcU-2XiC
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 16:00:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2AMs-0002LF-J0; Mon, 16 Mar 2026 17:00:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 16 Mar 2026 17:00:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-keytoc-multi-env-v3-3-433591ef3198@pengutronix.de>
References: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
In-Reply-To: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=3392; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=kr/DVlEetlsAFDYLV2F1dlGtYIt/S5jqpO462LClUjI=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcoan4pkaVa26tKndvXl/fh6pZ/qKT096avveTcEn9f
 t/g8wTRjlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwES6KxkZ2lfNmXFBQtGjs95U
 TWpO7bHJB3WP1l/UTYtuuRcw60bTckaG24nmJ6YWr0lqfvxBRUvZ/ekbNlW3mcslp59r2+K1f/s
 mBgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_090037_654632_4F737E87 
X-CRM114-Status: GOOD (  15.49  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/4] crypto: keytoc: Split env-provided full keyspec on
 spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

keytoc/CONFIG_CRYPTO_PUBLIC_KEYS can work with a complete keyspec
provided by an environment variable as opposed to providing single URIs.
This would be a very useful feature if it could also provide any number
of keys. Kconfig however provides keytoc with regular keyspecs already
split at spaces so without furhter measures, the env variable can only
be expanded into a single key.

If a complete argument is provided via __ENV, split it at any space
character that is not escaped with a backslash in front of it.  An
actual backslash in a path needs to be escape with another backslash.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/keytoc.c | 55 ++++++++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 42 insertions(+), 13 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 1b99393fdc..c451ee081a 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -10,6 +10,8 @@
 
 #pragma GCC diagnostic ignored "-Wdeprecated-declarations" /* ENGINE deprecated in OpenSSL 3.0 */
 
+#include "include/string_util.h"
+
 #include <stdio.h>
 #include <string.h>
 #include <time.h>
@@ -787,6 +789,11 @@ static bool parse_info(char *p, struct keyinfo *out)
 
 static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
 {
+	if (!strncmp(keyspec, "pkcs11:", 7)) { /* legacy format of pkcs11 URI */
+		out->path = strdup(keyspec);
+		return true;
+	}
+
 	char *sep, *spec;
 
 	spec = strdup(keyspec);
@@ -817,7 +824,7 @@ int main(int argc, char *argv[])
 {
 	int argi, opt, ret;
 	char *outfile = NULL;
-	int keycount;
+	size_t keycount, num_positionals;
 	struct keyinfo *keylist;
 
 	outfilep = stdout;
@@ -853,22 +860,44 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	keycount = argc - optind;
-	keylist = calloc(sizeof(struct keyinfo), keycount);
 
-	for (argi = 0; argi < keycount; argi++) {
-		const char *keyspec = try_resolve_env(argv[optind + argi]);
-		struct keyinfo *info = &keylist[argi];
+	num_positionals = argc - optind;
+	keycount = num_positionals;
 
-		if (!keyspec)
-			exit(1);
+	keylist = calloc(keycount, sizeof(*keylist));
+
+	if (!keylist)
+		enomem_exit("push");
+
+	int listi = 0;
+
+	for (argi = 0; argi < num_positionals; argi++) {
+		char *arg = strdup(argv[optind + argi]);
+		char *resolved = try_resolve_env(arg);
 
-		if (!strncmp(keyspec, "pkcs11:", 7)) { // legacy format of pkcs11 URI
-			info->path = strdup(keyspec);
+		if (arg == resolved) {
+			keylist[listi].path = arg;
+			listi++;
 		} else {
-			if (!parse_keyspec(keyspec, info)) {
-				fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
-				exit(1);
+			char *keyspecs = strdup(resolved);
+			char *keyspec;
+
+			/* Keyspec given as env Variable,
+			 * remove it and add an arbitrary number of keyspecs from its contents
+			 */
+			keycount--;
+			while ((keyspec = strsep_unescaped(&keyspecs, " ", NULL))) {
+				keycount++;
+				keylist = reallocarray(keylist, keycount, sizeof(*keylist));
+				if (!keylist)
+					enomem_exit("realloc keylist");
+				bzero(keylist + (keycount - 1), sizeof(*keylist));
+				if (!parse_keyspec(keyspec, &keylist[listi])) {
+					fprintf(stderr, "invalid keyspec %i: %s\n", optind,
+						keyspec);
+					exit(1);
+				}
+				listi++;
 			}
 		}
 	}

-- 
2.53.0.308.g50d063e335



