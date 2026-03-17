Delivery-date: Tue, 17 Mar 2026 16:20:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDt-001qdd-2X
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDt-0007a2-4K
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e088ZgNrRbya5gjl59eW13fCQeb/PodosWGwcU1qvac=; b=of+z3V34DEQO9jUdfZSQwZ5qTa
	5607WBt64DvxCIuOdXADPceCtqs4JOhLJNP40f+jaAI42x82aGwicEh/MxXs5ORWlJ0oDseNuo3lr
	lW4M0+lN++uVaKUx+85jZ80GvNE/aDVIUIoj6n9z4wsvph5Atr1SrvKOYUAYPZzeAYWiakkTr/7pr
	b6dfcXMIROEpY9xdaim2XPba1cwmSCWnv0SU1dVWwgCzNhh/NsGRGCwvHeeJmQrm7QTjIdMoc5GyC
	bIDN0yVilkcVg+4zxqqm7t3pCbWcjDt4bK1Nd3OClV8Njqk/vcWLfJQIKYVD6lHUzE+56OHA7Nd23
	sBi8jLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDM-00000006ilR-3f5y;
	Tue, 17 Mar 2026 15:20:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDK-00000006ihG-0N0C
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=e088ZgNrRbya5gjl59eW13fCQeb/PodosWGwcU1qvac=; b=qa+kfw1XmL/IgdChLCkeLRaCUG
	3nIvZaWNZQzESJEWUEzqfLRgoPLOlvei5ZZjASdaXkeCT2nAS/fRAmiWV7TDenVl52UmMsRjsGWEc
	Vdk5BnimH2uHWf0asGHforWvYsePF1+a7njdEnrcZUkZrUG74mhvZKgmwjP5ZRIBH+/IuE5hXc8Yl
	L2UgviKnShgYAhiZt6e/cbHljQNKk3srWb4s7s2ZqpMvE2iFGIx4rP5p3Ge3Chv6U9GKU229CXPkv
	cQos6Gxq/aKsMQBpXUNFAzC1UvjFPAh98BsPYG3YIq8vr6WVqzvotNeIr9rp2P9OTq2WV5acAx6sz
	KORdQURA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000009MWy-20QU
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:08 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-Ch; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-4-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2626; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=oeJEwCrAVzLqACahaTp7UCTmGnNdEoLnTgjTVDB9J/s=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWSjPq+Ge2F4wKeNqzozpJ927eCeGKE7jFHuxfsWyu
 shv8aFzOkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABNZdYWRYVXe0xgZRuM9uxff
 WumSW6ln+dR350PmHdY8y7hV+c7KNDAy7FjAbVNR6Xnh7tmvIU95eGZET2EtfXlV8Skf3/rO5Sb
 v+AA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152004_788235_CCF825AE 
X-CRM114-Status: GOOD (  10.44  )
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
Subject: [PATCH v4 4/8] crypto: keytoc: Parse all keyspecs before writing
 to stdout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To catch errors before writing (partial) C code and for better overall
code structure, preprocess and convert to C key data in two different
loops.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/keytoc.c | 42 ++++++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 6d680422a6..8c3c7d7c3f 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -859,11 +859,15 @@ int main(int argc, char *argv[])
 	}
 
 	keycount = argc - optind;
-	keylist = calloc(sizeof(struct keyinfo), keycount);
+	keylist = calloc(keycount, sizeof(*keylist));
 
+	if (!keylist)
+		enomem_exit("keylist");
+
+	/* parse each keyspec */
 	for (keys_idx = 0; keys_idx < keycount; keys_idx++) {
-		const char *keyspec = try_resolve_env(argv[optind + keys_idx]);
 		struct keyinfo *info = &keylist[keys_idx];
+		const char *keyspec = try_resolve_env(argv[optind + keys_idx]);
 
 		if (!keyspec)
 			exit(1);
@@ -872,23 +876,6 @@ int main(int argc, char *argv[])
 			fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
 			exit(1);
 		}
-	}
-
-	if (dts) {
-		fprintf(outfilep, "/dts-v1/;\n");
-		fprintf(outfilep, "/ {\n");
-		if (standalone)
-			fprintf(outfilep, "\tsignature-standalone {\n");
-		else
-			fprintf(outfilep, "\tsignature {\n");
-	} else if (standalone) {
-		fprintf(outfilep, "#include <crypto/ecdsa.h>\n");
-		fprintf(outfilep, "#include <crypto/rsa.h>\n");
-	}
-
-
-	for (keys_idx = 0; keys_idx < keycount; keys_idx++) {
-		struct keyinfo *info = &keylist[keys_idx];
 
 		/* resolve __ENV__ for name_hint and path */
 		info->name_hint = try_resolve_env(info->name_hint);
@@ -905,12 +892,27 @@ int main(int argc, char *argv[])
 			info->keyring = strdup("fit");
 			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + keys_idx]);
 		}
+	}
+
+	/* write out C representation */
+	if (dts) {
+		fprintf(outfilep, "/dts-v1/;\n");
+		fprintf(outfilep, "/ {\n");
+		if (standalone)
+			fprintf(outfilep, "\tsignature-standalone {\n");
+		else
+			fprintf(outfilep, "\tsignature {\n");
+	} else if (standalone) {
+		fprintf(outfilep, "#include <crypto/ecdsa.h>\n");
+		fprintf(outfilep, "#include <crypto/rsa.h>\n");
+	}
+	for (keys_idx = 0; keys_idx < keycount; keys_idx++) {
+		struct keyinfo *info = &keylist[keys_idx];
 
 		ret = gen_key(info);
 		if (ret)
 			exit(1);
 	}
-
 	if (dts) {
 		fprintf(outfilep, "\t};\n");
 		fprintf(outfilep, "};\n");

-- 
2.53.0.308.g50d063e335



