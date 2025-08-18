Delivery-date: Mon, 18 Aug 2025 19:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo3qE-001xXD-04
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 19:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo3qC-0002q7-TR
	for lore@pengutronix.de; Mon, 18 Aug 2025 19:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WODcviXbBmHGFZKwMaMShtVQHq66e96OnRDhcwoswLc=; b=SQk3OZiaRucP5BaexvESmcLo4A
	Msozs3dp194ECD1AkUuovoMdnLvmLMo5xqkfRNxO705fsYYDZ9MwkkczMzdU/4Ze+kWSl0m61cySA
	qkgKeMGv7BNnnpoJaLA1Tewa0Fl7Mae+y4O7hplZR2gRfifJys0L5gCXnKuEAW4EWCZAFGjWHIzDm
	b2GF6mXvgGIkbrTc1pt7bYbDk52URCN8Uq9zSYJdDaAXkVkoB9RTIeC7qTrkdr+Af8/y/eE/Gzmr4
	1nvmZV8Sz6U9s0gpyN5JOvm5jCJWowptCAQLErB1ZaZsuRPiJlk/O7dluU7dn4EtHouwJbqo8y92Y
	8KPFHvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3pm-00000008EN7-3dzB;
	Mon, 18 Aug 2025 17:39:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3LP-0000000864V-3w1W
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:08:29 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3LM-0005fu-Fd
	for barebox@lists.infradead.org; Mon, 18 Aug 2025 19:08:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 18 Aug 2025 19:08:14 +0200
Message-Id: <20250818170815.2478554-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250818170815.2478554-1-m.felsch@pengutronix.de>
References: <20250818170815.2478554-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_100827_981921_AFD504FD 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/3] keytoc: add support to handle single env keyspec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since commit 685cc602e0ad ("keytoc: allow __ENV__ lookup for keyname
hint") the hint and key can be specified via two environment variables.

Using two environment variables for a single keyspec is not very
intuitive. Therefore this commit adds the support to specify the keyspec
via a single environment variable:

For example:

   FITKEY = "<hint>:<key>"
   CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FITKEY"

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v3:
- keep Basti's use-case to provide the keyhint+key via two env-variables
v2:
- no changes

 scripts/keytoc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 617317d6607e..67e2db3386db 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -737,6 +737,10 @@ int main(int argc, char *argv[])
 		char *keyname = NULL;
 		char *path = NULL;
 
+		keyspec = try_resolve_env(keyspec);
+		if (!keyspec)
+			exit(1);
+
 		if (!strncmp(keyspec, "pkcs11:", 7))
 			path = strdup(keyspec);
 		else
-- 
2.39.5



