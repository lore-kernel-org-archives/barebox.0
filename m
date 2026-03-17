Delivery-date: Tue, 17 Mar 2026 16:20:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDp-001qdG-2N
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDo-0007Y4-Je
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QDGDg1bK86JvKaNiVslFagJ/2TQ4uTdVO+H4LSnE5EU=; b=CLD1CdYPpwrb4rTXfH1ZXoMsE4
	cp2O7WyZ2sUS0l6aLRQwyhkUaymdZhkzq0Skg6Lhop81Bh92wrO2nt+NWW8sIXQlotUnN5AmyZLOA
	CvSPsVlugkzxVmBoNEi2lZtDAPCdZ9TblNGQMBRO8rnAFdynVMUZYfHWcreynjo1XLBaAbb08sGv0
	+Yabn1FHH5oo70XMxM6NZAWhR+bWGhvx3V9qdfDEayyMcKY9WxvUr7j2dp3QlBPww/caoaCC6/4Xs
	1GFxmSy6gRbXmK9JRBKOSQrso9uTEtPHSuHCtDXpSvw1QYsn1f5qQopIZncZKEW4kZPS5PQigpgEt
	JPTc2wbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDG-00000006ifu-1Eqz;
	Tue, 17 Mar 2026 15:20:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000006ieg-0xBt
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:05 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-9h; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-2-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=3215; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=IeTWfQ2tRwQQHE8miaL8hI1ceVkE5FvZuomn1W8bsuo=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWSgf9vabYp5c95oCt6u7uZfuCChZlqO+Ok9WUqQ/o
 vVsZL5ERykLgxgXg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCKTNzH8z3gq0f17/oGNfxWe
 PFurPnHi+f2r4mM2W5yJE1Rh3feX+S4jw4e6C9s/GfZlGolHv70u7xTIwaBQ8vqJ5qT7b2O5Nr1
 6yQsA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_082004_278340_99A71F30 
X-CRM114-Status: GOOD (  11.74  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 2/8] crypto: keytoc: Improve readability
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation to a bigger change in the handling of the arguments list,
update variable names, function names and comments to improve
readability.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/keytoc.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 77ada3af45..135a396d34 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -6,9 +6,10 @@
  * URI to a C struct suitable to compile with barebox.
  *
  * TODO: Find a better way for reimport_key()
- *
  */
-#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
+
+#pragma GCC diagnostic ignored "-Wdeprecated-declarations" /* ENGINE deprecated in OpenSSL 3.0 */
+
 #include <stdio.h>
 #include <string.h>
 #include <time.h>
@@ -784,7 +785,7 @@ static bool parse_info(char *p, struct keyinfo *out)
 	}
 }
 
-static bool get_name_path(const char *keyspec, struct keyinfo *out)
+static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
 {
 	char *sep, *spec;
 
@@ -814,7 +815,7 @@ static bool get_name_path(const char *keyspec, struct keyinfo *out)
 
 int main(int argc, char *argv[])
 {
-	int i, opt, ret;
+	int keys_idx, opt, ret;
 	char *outfile = NULL;
 	int keycount;
 	struct keyinfo *keylist;
@@ -855,9 +856,9 @@ int main(int argc, char *argv[])
 	keycount = argc - optind;
 	keylist = calloc(sizeof(struct keyinfo), keycount);
 
-	for (i = 0; i < keycount; i++) {
-		const char *keyspec = try_resolve_env(argv[optind + i]);
-		struct keyinfo *info = &keylist[i];
+	for (keys_idx = 0; keys_idx < keycount; keys_idx++) {
+		const char *keyspec = try_resolve_env(argv[optind + keys_idx]);
+		struct keyinfo *info = &keylist[keys_idx];
 
 		if (!keyspec)
 			exit(1);
@@ -865,7 +866,7 @@ int main(int argc, char *argv[])
 		if (!strncmp(keyspec, "pkcs11:", 7)) { // legacy format of pkcs11 URI
 			info->path = strdup(keyspec);
 		} else {
-			if (!get_name_path(keyspec, info)) {
+			if (!parse_keyspec(keyspec, info)) {
 				fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
 				exit(1);
 			}
@@ -885,14 +886,14 @@ int main(int argc, char *argv[])
 	}
 
 
-	for (i = 0; i < keycount; i++) {
-		struct keyinfo *info = &keylist[i];
+	for (keys_idx = 0; keys_idx < keycount; keys_idx++) {
+		struct keyinfo *info = &keylist[keys_idx];
 
 		/* resolve __ENV__ for name_hint and path */
 		info->name_hint = try_resolve_env(info->name_hint);
 		info->path = try_resolve_env(info->path);
 
-		if (asprintf(&info->name_c, "key_%i", i + 1) < 0)
+		if (asprintf(&info->name_c, "key_%i", keys_idx + 1) < 0)
 			enomem_exit("asprintf");
 
 		/* unfortunately, the fit name hint is mandatory in the barebox codebase */
@@ -901,7 +902,7 @@ int main(int argc, char *argv[])
 
 		if (!info->keyring) {
 			info->keyring = strdup("fit");
-			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + i]);
+			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + keys_idx]);
 		}
 
 		ret = gen_key(info);

-- 
2.53.0.308.g50d063e335



