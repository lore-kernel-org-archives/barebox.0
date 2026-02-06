Delivery-date: Fri, 06 Feb 2026 13:29:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKxf-009Tve-2W
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 13:29:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKxe-0004pX-NK
	for lore@pengutronix.de; Fri, 06 Feb 2026 13:29:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7EOSJmOZSDLpXqfo4av/RAcyRCbR1BojgNChMrfg/Qw=; b=39rSB8mrQn2J/LeeFZ9AEUVeLN
	luDD4JevY5uHEJpfaV1GCfrVAs6ZJ6msIM9ARp+URwvZrnzZDBhfWW43AtWJJG1cfiVIenSmcr4B8
	OIguW2U4oUw1x+2R9n+u9AWVlEwLJP5x1o5tONyeGckXQYHoEL99Dk4zHplK/xt6PP2fdRCFaQNsT
	6HHMw87Z8n7y2106mkyyc1uKK58eg9CR2up74gICGU/jmojDrDIfmPZj333/y9eYIUf6Fl8iuhoKQ
	2yEbn+rm9KbhEFJxDc2PPIxy5CDh1UrEyodIp+/km1VMX6Tw97Sc6qvuXXdLOzCJRq/FrGnKYqZVX
	I4j3Cj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKxE-0000000BJGs-21rz;
	Fri, 06 Feb 2026 12:28:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKxD-0000000BJGm-2RdB
	for barebox@bombadil.infradead.org;
	Fri, 06 Feb 2026 12:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=7EOSJmOZSDLpXqfo4av/RAcyRCbR1BojgNChMrfg/Qw=; b=ZchnJW8Dfx5CHhw+tJmfkK5Tpi
	mYSxUZBtrAbe5PRERfU35jm9qSDFK/Zxs0Y/2jdzgWtBlT1dV5eubcUrVZ/89eLqzBiuBEi9v4QYl
	dI7zMOTx5gsTjpALGMHZM3KgO93GWcdLH8nJJiVWV5dri8rPXBcQaX7MLi1uEortHpxb3Lo4dTJFz
	UgqsgA/NeUKTp20/p8DG2mWsRZ/W9GdfSne1KxYScU+b1Ex60/LE7P2oJOqk3HL+prYo2kZwGk1Tn
	1u2mE1XqVhed81qj00u4Gh12efJyZ9E3kN2ffZKXktG6NravVPcunbilJ5VOhnmbX2XTWHnEAvNHY
	rmW1GSuQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKx3-00000003mU8-02a8
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 12:28:54 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1voKwz-0004lR-RT; Fri, 06 Feb 2026 13:28:41 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 06 Feb 2026 13:28:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-keytoc-multi-env-v1-1-638fbf2b3634@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHjehWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwMz3ezUypL8ZN3c0pySTN3UvDJdk0RjYwMDI0ujVJNEJaC2gqLUtMw
 KsJHRSkFuzkqxtbUAQyOCMmcAAAA=
X-Change-ID: 20260206-keytoc-multi-env-4a3300292e4a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2664; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=B//EKXQLUxCSpOYOrgHKoGuJQVFIKKgVpxmn99SXX+w=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshsvVd5tK9IfO7UX6/1d+xc8kX/8rS2PxfvRv6fv+/+1
 T/el3duvNhRysIgxsUgK6bIEqsmpyBk7H/drNIuFmYOKxPIEAYuTgGYyLIfjAw/9v1Sr2Mumv9E
 p7dLz5erRzx7xcUvHoH7vI5H7i4SPXeP4a+Mo9fmG2k63s8DT3OpBQu03nW0vDV/roBcd0HlMsd
 1IkwA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_122852_761202_06D415B8 
X-CRM114-Status: GOOD (  12.79  )
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
Cc: Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC] crypto: keytoc: Split env-provided full keyspec on
 spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

keytoc/CONFIG_CRYPTO_PUBLIC_KEYS can work with a complete keyspec
provided by an environment variable as opposed to providing single URIs.
This would be a very useful feature if it could also provide any number
of keys. Kconfig however provides keytoc with regular keyspecs already
split at spaces so without furhter measures, the env variable can only
be expanded into a single key.

Work around this by, in the special case of keytoc provided with a
single environment variable, splitting that single argument at any space
character that is not escaped with a backslash in front of it.

Unescaped space characters following an unescaped space character are
ignored, trailing unescaped space characters are not ignored, leading to
an additional, empty key argument, which is invalid.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/keytoc.c | 43 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 77ada3af45..de882fe9fe 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -818,6 +818,7 @@ int main(int argc, char *argv[])
 	char *outfile = NULL;
 	int keycount;
 	struct keyinfo *keylist;
+	char **keyspecs;
 
 	outfilep = stdout;
 
@@ -853,10 +854,50 @@ int main(int argc, char *argv[])
 	}
 
 	keycount = argc - optind;
+	keyspecs = argv + optind;
+
+	if (keycount == 1 && !strncmp(argv[optind], "__ENV__", 7)) {
+		char *singlespec = try_resolve_env(keyspecs[0]);
+		/* include '\0' in length */
+		int len = strlen(singlespec) + 1;
+		char *p;
+
+		for (p = singlespec; *p; p++) {
+			if (*(p + 1) == ' ') {
+				if (*p == '\\') {
+					memmove(p, p + 1, len - 1);
+					len--;
+					p++;
+				} else {
+					keycount += 1;
+					*(p + 1) = '\0';
+					p += 2;
+					/* ignore subsequent spaces */
+					while (*p == ' ') {
+						memmove(p, p + 1, len - 1);
+						len--;
+						p++;
+					}
+				}
+			}
+		}
+
+		keyspecs = calloc(sizeof(char *), keycount + 1);
+		keyspecs[0] = singlespec;
+		p = singlespec;
+
+		for (int i = 1; i < keycount; i++) {
+			while (*p)
+				p++;
+			p++;
+			keyspecs[i] = p;
+		}
+	}
+
 	keylist = calloc(sizeof(struct keyinfo), keycount);
 
 	for (i = 0; i < keycount; i++) {
-		const char *keyspec = try_resolve_env(argv[optind + i]);
+		const char *keyspec = try_resolve_env(keyspecs[i]);
 		struct keyinfo *info = &keylist[i];
 
 		if (!keyspec)

---
base-commit: 89ed19d5c673ad0ab1851ed62ece38d30e96b412
change-id: 20260206-keytoc-multi-env-4a3300292e4a

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



