Delivery-date: Tue, 17 Mar 2026 16:20:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDu-001qeK-2h
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDt-0007a7-9o
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LOZjJ1rj1TuM+a7QvEbbwlKukIoXjUjOFa1ZKXgmsbs=; b=vBec8euVdGZVpa51KQCw+U1mNV
	tH2Tzx1a7gwRTkN1YxNYRXpBSqJU7pRoGXmqkY0+ttqr59RWBDs9k+9Q/t0bHt6OLpn2Vfiij3Tze
	Niy1+hlp30QN3+Ju/sIBAtTkrkKcjYhUnu0h5v3n+l0lvRHEUp4vmQoZKoVYY0KyiRF16+etFIgPV
	7ehxIhx1xZq3oweFSKgYwxEAW4M4jEaS4KAhdx8DnG0S8EdF3iDkIcWBttGhMqaj12NsNG3KjLeIw
	5ExU9up1pFuGirdpAO3edtWW7K7RJfT+Q6QnRDr8U4AxvjPb18XtBFSsutdsOE23PnPNZn6eNNY5D
	lsV0DPCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDK-00000006iig-1aDd;
	Tue, 17 Mar 2026 15:20:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDH-00000006igH-4Ags
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=LOZjJ1rj1TuM+a7QvEbbwlKukIoXjUjOFa1ZKXgmsbs=; b=Up8xZ2qascT/lqo4khQZgLKgG5
	ein28o+EA0/6oNJ98RPlI+hegVXQzkeHWXMUZcehQzzJukdizu1JPg5WAYoXZeBW90c4jxuPiLEBe
	pA1atGR3dSRNO8BS6BlRgbYh17++Bt++dDLIJeZa/ZwrUrWRZ882roIdq8XeDY3ySXsUheAVk4Xpl
	EgRB1Blxm80lEs27h97JEJ8m/66YCKlCyI/yJygh42iTRwpsHBZxKwq9BPvxi3eDVUtDD9dajecz+
	BQisr3wOEXlfpPzP7P/W+GPGRMR8sQmSW1cqQE4dmh3OL1JDSyE4bRhHzqrWCuZx+1WwqZckuz94e
	FYYLXDwg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000009MX4-205V
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:06 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-IF; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-8-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=3051; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=mirNMEu6iP4HxgsgswwnZdyNOKJHwMbbNceVp2yeaqw=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWajY9OpU4vJnwvfY8zXnXPxnnRC6/OnHw1cCmEzij
 dXqJ6SZd5SyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACbyW4+R4baJlKZnvG7Fq533
 DixnDV59QX52mmza/bPJ3hPYv3F7aTD8r/L6qP9dmCmwcdHx6zvvPugz+2S3f69np6Okr8/u5gg
 /PgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152004_759277_57328BB1 
X-CRM114-Status: GOOD (  12.45  )
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
Subject: [PATCH v4 8/8] crypto: keytoc: Deprecate fit-hint from env
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Specification of fit-hints as env variable was broken since identifiers
where forbidden to start with underscores in 2025.12. As the fit-hint
feature is considered legacy, officially deprecate this way of
specifying fit-hints.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 4 ++++
 crypto/Kconfig                                      | 7 +++----
 scripts/keytoc.c                                    | 7 +++----
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 9d1756bdc4..58efc225cb 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -17,6 +17,10 @@ While the interpretation of environment variables specifying hint or URI remains
 
   CONFIG_CRYPTO_PUBLIC_KEYS="keyring=kr:__ENV__B"
 
+Fit hints can no longer be specified by environment variables using the __ENV__
+syntax. This functionality was broken since the last change to the keyspec
+syntax in 2025.12.
+
 ARM i.MX HAB
 ------------
 
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 528e9a0d22..0a6b5758b7 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -153,7 +153,7 @@ config CRYPTO_PUBLIC_KEYS
 
 	  Placeholders such as __ENV__VAR_NAME can be used to look up the
 	  corresponding value in the environment variable VAR_NAME for public
-	  key paths/URIs as well as key name hints.
+	  key paths/URIs.
 
 	  Examples specified directly:
 
@@ -162,11 +162,10 @@ config CRYPTO_PUBLIC_KEYS
 	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo keyring=fit:/foobar/baz.der"
 	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo keyring=fit,fit-hint=myotherhint:/foobar/baz.der"
 
-	  Example specified indirectly by two environment variables:
+	  Example specifying the path by environment variable:
 
-	  - myhint="myhint"
 	  - myname="pkcs11:object=foo" (.der could be used too)
-	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=__ENV__myhint:__ENV__myname"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=hint:__ENV__myname"
 
 	  Example specified indirectly by a single environment variable:
 
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index c4491fbe81..49cb10f3f5 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -720,8 +720,8 @@ static bool is_identifier(char **s)
 {
 	char *p = *s;
 
-	/* [a-zA-Z_] */
-	if (!(isalpha(*p) || *p == '_'))
+	/* [a-zA-Z] */
+	if (!isalpha(*p))
 		return false;
 	p++;
 
@@ -913,8 +913,7 @@ int main(int argc, char *argv[])
 			exit(1);
 		}
 
-		/* resolve __ENV__ for name_hint and path */
-		info->name_hint = try_resolve_env(info->name_hint);
+		/* resolve __ENV__ for the key path */
 		info->path = try_resolve_env(info->path);
 
 		if (asprintf(&info->name_c, "key_%i", keys_idx + 1) < 0)

-- 
2.53.0.308.g50d063e335



