Delivery-date: Tue, 17 Mar 2026 16:20:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDp-001qcu-0B
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDo-0007Xz-Bp
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dVpEowpU9TfT3mlzOQTz6MAMv6T+kr/MHhicMd0auFM=; b=zffTuxhDn2SMHxk8zFFZbVXise
	cwG/1r3T7qEaQ5sbv3++YDYqFO33JACJGuEBmOYrdsPjCoqoguzvIJqjf89x98wm2TBhny7WFdJp6
	77A5oRzPoNr9YjH7uj53mIDaGB1XFQBMiesnNG4ktij4gBo09Oe0/ZCBsH7lFt13RZLkYQ7zPoARb
	8VJiedZomYZ40agS+DGUp4Ex059z30VD5wr1pNzgQfFkzBb5WTBqi7mKZPRp50ZmTUvyPJ8L9VuD7
	w71cs7FZBj86Cx6tmJoLlmBaRcTWZmL2TwTgs99xFl+EkfgaYh77irxO+/ByHk6Ex3Ax3jPxYvKvk
	SyQmwg+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDJ-00000006ihx-3sZj;
	Tue, 17 Mar 2026 15:20:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDH-00000006igG-478q
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=dVpEowpU9TfT3mlzOQTz6MAMv6T+kr/MHhicMd0auFM=; b=BE9zcNOohp60UpgCMiOlBviAJ8
	1A5KOqRRTGb1R1NzfKbuujET0byZWbhZWKQZ+Uz/1+UCR4otqR5NBBv+Qm095XITrqMZnof/Mp9ta
	K+MrB4DqgNoFThC/j7VJtmsOkQvmw8BclerzeWWsqOAiO/OtjrfIhbm/IR/kzQnFTPqOxGu6EN1XW
	t9wbbdYV+RrxlWitLxK/65q+eyICkxkvZnXPgiMj1OwArD1OzJKfhL2AoYdTL+6Vf/naigqWTnRJw
	jmOpwfq7SQpkQSTwzKI640SSmaKTY7qyA5QStSIkX0Lf/gy6W3fv1rUmsU1UICdwDYBE/HO2RFk4/
	dXR12XWA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000009MX3-20FL
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:06 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-Dw; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-5-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=4192; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=r+r2vmNfeBs1JsR8wchqAVPbYp2GyKmwCZO+kZGoUu4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWaiwtfxfTH/TxYtRwdrvU8/cfXvQiX9laVezfLO10
 P4y/Y41HaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgInMtWH4K9nkWqvdztNm6qyQ
 VZWkkHP981zGfdtSZWebOn0oacl6wPBX5OtOv3WRXpFLJruosP0uYdjGsrfy4nwP2bnitg8rkvu
 5AA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152004_752867_FC1D111A 
X-CRM114-Status: GOOD (  15.75  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 5/8] crypto: keytoc: Split env-provided full keyspec on
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

Try to expand and validate input as much as possible before starting to
output any generated C code.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/keytoc.c | 60 ++++++++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 48 insertions(+), 12 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 8c3c7d7c3f..aca6547136 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -10,6 +10,8 @@
 
 #pragma GCC diagnostic ignored "-Wdeprecated-declarations" /* ENGINE deprecated in OpenSSL 3.0 */
 
+#include "include/string_util.h"
+
 #include <stdio.h>
 #include <string.h>
 #include <time.h>
@@ -30,6 +32,7 @@
 #include <ctype.h>
 
 struct keyinfo {
+	char *spec;
 	char *name_hint;
 	char *keyring;
 	char *path;
@@ -785,8 +788,10 @@ static bool parse_info(char *p, struct keyinfo *out)
 	}
 }
 
-static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
+static bool parse_keyspec(struct keyinfo *out)
 {
+	const char *keyspec = out->spec;
+
 	if (!strncmp(keyspec, "pkcs11:", 7)) { /* legacy format of pkcs11 URI */
 		out->path = strdup(keyspec);
 		return true;
@@ -820,9 +825,9 @@ static bool parse_keyspec(const char *keyspec, struct keyinfo *out)
 
 int main(int argc, char *argv[])
 {
-	int keys_idx, opt, ret;
+	int keys_idx, arg_idx, opt, ret;
 	char *outfile = NULL;
-	int keycount;
+	size_t keycount, num_positionals;
 	struct keyinfo *keylist;
 
 	outfilep = stdout;
@@ -858,22 +863,53 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	keycount = argc - optind;
+
+	num_positionals = argc - optind;
+	keycount = num_positionals;
+
 	keylist = calloc(keycount, sizeof(*keylist));
 
 	if (!keylist)
 		enomem_exit("keylist");
 
+	keys_idx = 0;
+	/* expand arguments given as environment variables into one or multiple keyspecs */
+	for (arg_idx = 0; arg_idx < num_positionals; arg_idx++) {
+		char *arg = argv[optind + arg_idx];
+		const char *resolved = try_resolve_env(arg);
+
+		if (!resolved)
+			exit(1);
+
+		if (arg == resolved) {
+			keylist[keys_idx].spec = strdup(arg);
+			keys_idx++;
+		} else {
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
+				keylist[keys_idx].spec = keyspec;
+				keys_idx++;
+			}
+		}
+	}
+
 	/* parse each keyspec */
 	for (keys_idx = 0; keys_idx < keycount; keys_idx++) {
 		struct keyinfo *info = &keylist[keys_idx];
-		const char *keyspec = try_resolve_env(argv[optind + keys_idx]);
-
-		if (!keyspec)
-			exit(1);
-
-		if (!parse_keyspec(keyspec, info)) {
-			fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
+		if (!parse_keyspec(info)) {
+			fprintf(stderr, "invalid keyspec %i: %s\n", optind,
+				info->spec);
 			exit(1);
 		}
 
@@ -890,7 +926,7 @@ int main(int argc, char *argv[])
 
 		if (!info->keyring) {
 			info->keyring = strdup("fit");
-			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + keys_idx]);
+			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", info->path);
 		}
 	}
 

-- 
2.53.0.308.g50d063e335



