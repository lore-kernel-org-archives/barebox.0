Delivery-date: Mon, 16 Mar 2026 17:01:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANf-001U4j-2p
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 17:01:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANf-0002gl-61
	for lore@pengutronix.de; Mon, 16 Mar 2026 17:01:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=plw/8brlie9uD5GRVohqCbMhwfN8SP6t0voZFjvNp4Q=; b=H/KrGUS67YfuIitb8cYDCI3yPL
	NA8QKFiljvWx8yR5E2bYgRqRJ8r+F9LV2lnMQ4zu1kNst+Q2mj7aXrKJ8XX95UayW5G3fMjdRNau0
	ASPjXuWssBrZsA8rILlLqPcbf1Ak9EEDfYG0cP9dXcclVgtPF7ayPlc2WBLEWdY/NuRhGWLPUMse6
	fftSPL5PaSh4frM5dLQKc0j9bY/SA/W7CxaeM5mcEurVK4d9M+l4qaVGqBSZxP6ktvVIyXDhn30II
	Jgu/iQlvdDxo32tZkpF6Vv1OhT50HTHUzV/6Vu/wpfJrTmhW9QAU4LXIvNxW0PHvUPLEbhMtCz6xY
	ipnyhQuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMz-00000004OdW-2rIr;
	Mon, 16 Mar 2026 16:00:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMx-00000004Oco-31SB
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 16:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=plw/8brlie9uD5GRVohqCbMhwfN8SP6t0voZFjvNp4Q=; b=FLq5TWMbaS8DUHMg7645x1Ql9d
	Omclam1HemVOX14mlPyRdkr8Jf9c9bUYEEoVRz9vUZOQK/Ct4sfgiEf/RegZXYyVrDnFwWTyTTrwG
	2qwZog2/iVwth33yEU8rlCHaz79ULSzBissyNy42x9DcmkwuU0+K097ztpdQV8TbnxW3wfkOOq9K6
	bJOj/qoSdP1fIxHerpxjL8xPI5LdRYOo3fdQI1CVLFsCRngRlkhssqoATJx7piBe3ZjN35bbv95wv
	bf8A+3njgD+3DBzqhQxZVWVbVHzR7HDAmB7jQht1mPKrcOczuA5eQKI1/HtuQL+ZAxdAy+Rww9D4v
	56yqlNFA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMu-000000079AD-2L3V
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 16:00:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2AMs-0002LF-Hx; Mon, 16 Mar 2026 17:00:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 16 Mar 2026 17:00:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-keytoc-multi-env-v3-2-433591ef3198@pengutronix.de>
References: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
In-Reply-To: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=3167; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=aN8lQi+hzLXzEkwIWJn2QCW5UXgdBkdZGU/40BqXqYk=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcoan47nbMIpbs8DjPNSGHJuyM+cMgJ+NcemzZoe//W
 d4z8+5J7yhlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzk4QRGhk2Zx66J9B1Yt/vf
 s0Q3q8MbGf8vE7j6+lCUV+Sdiz03/v5n+B9zrFWAZ2H89sRb6nsPqQq7RWv1//c6+XrNh2a5TZp
 vV7ACAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_160036_700209_A5243000 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH v3 2/4] crypto: keytoc: Improve readability
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
index 77ada3af45..1b99393fdc 100644
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
+	int argi, opt, ret;
 	char *outfile = NULL;
 	int keycount;
 	struct keyinfo *keylist;
@@ -855,9 +856,9 @@ int main(int argc, char *argv[])
 	keycount = argc - optind;
 	keylist = calloc(sizeof(struct keyinfo), keycount);
 
-	for (i = 0; i < keycount; i++) {
-		const char *keyspec = try_resolve_env(argv[optind + i]);
-		struct keyinfo *info = &keylist[i];
+	for (argi = 0; argi < keycount; argi++) {
+		const char *keyspec = try_resolve_env(argv[optind + argi]);
+		struct keyinfo *info = &keylist[argi];
 
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
+	for (argi = 0; argi < keycount; argi++) {
+		struct keyinfo *info = &keylist[argi];
 
 		/* resolve __ENV__ for name_hint and path */
 		info->name_hint = try_resolve_env(info->name_hint);
 		info->path = try_resolve_env(info->path);
 
-		if (asprintf(&info->name_c, "key_%i", i + 1) < 0)
+		if (asprintf(&info->name_c, "key_%i", argi + 1) < 0)
 			enomem_exit("asprintf");
 
 		/* unfortunately, the fit name hint is mandatory in the barebox codebase */
@@ -901,7 +902,7 @@ int main(int argc, char *argv[])
 
 		if (!info->keyring) {
 			info->keyring = strdup("fit");
-			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + i]);
+			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + argi]);
 		}
 
 		ret = gen_key(info);

-- 
2.53.0.308.g50d063e335



