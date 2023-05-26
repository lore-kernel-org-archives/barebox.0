Delivery-date: Fri, 26 May 2023 08:38:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6I-00EiKo-W2
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:38:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R6G-0007EA-Nd
	for lore@pengutronix.de; Fri, 26 May 2023 08:38:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q0U/XdDnQtcvhsoe82IEmYpgQ2qOxwza+S6md5Q5Lmw=; b=4RpY8JXa6ToygdfUwmnnb+Pmi5
	23iCy+5yFGuLK5IjaP90K0mHolqdIXM1FBbyk6rQSryrslilPTaP5/Z+soBWyzHK43QYd6nQl9YqT
	AQs67lAz7KDKK3J8MkoOjimLgvJ664rMV59BlkcVABKa3F0vzmxPSBxUiLLkRPuPDtIhGwnScfoVw
	VW3fR1OITgaYcgSScTTnyxb2jJjZlV7OjZO+/mZUG04piM3DIr6DVQrP+qt5XhIBZdzZijxlQnEVb
	3RVa2cbwG/2WcD0fUiV/7SrUUQK9qvMIG38kEalo/XNVh8M+L3AG9Fc6gRdpl9yjG29cNOejtEx2k
	BL1ncpAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5H-001HU9-30;
	Fri, 26 May 2023 06:37:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R5C-001HQv-1l
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:37:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5B-0006qV-1n; Fri, 26 May 2023 08:37:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R5A-002tWe-Cd; Fri, 26 May 2023 08:37:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R59-004sYX-5G; Fri, 26 May 2023 08:37:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 08:37:40 +0200
Message-Id: <20230526063746.1155297-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
References: <20230526063746.1155297-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233750_585201_9B9552C3 
X-CRM114-Status: GOOD (  13.93  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/7] crypto: digest: match driver name if no algo name matches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The digest command lists all registered digest implementations, but
there's no way to select a specific implementation when another higher
priority one exists for the same algorithm. Let's support this, by
having digest_algo_get_by_name fallback to look up by driver name if an
exact match couldn't be found by algo name.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/digest.c |  2 +-
 crypto/digest.c   | 11 ++++++-----
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index b7ed4d50af1f..e57920e58268 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -190,7 +190,7 @@ static int do_digest(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(digest)
 BAREBOX_CMD_HELP_TEXT("Calculate a digest over a FILE or a memory area.")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-a <algo>\t",  "hash or signature algorithm to use")
+BAREBOX_CMD_HELP_OPT ("-a <algo>\t",  "hash or signature algorithm name/driver to use")
 BAREBOX_CMD_HELP_OPT ("-k <key>\t",   "use supplied <key> (ASCII or hex) for MAC")
 BAREBOX_CMD_HELP_OPT ("-K <file>\t",  "use key from <file> (binary) for MAC")
 BAREBOX_CMD_HELP_OPT ("-s <hex>\t",   "verify data against supplied <hex> (hash, MAC or signature)")
diff --git a/crypto/digest.c b/crypto/digest.c
index 621d3841686e..dd2c2ee317ed 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -27,8 +27,6 @@
 
 static LIST_HEAD(digests);
 
-static struct digest_algo *digest_algo_get_by_name(const char *name);
-
 static int dummy_init(struct digest *d)
 {
 	return 0;
@@ -106,7 +104,7 @@ EXPORT_SYMBOL(digest_algo_unregister);
 
 static struct digest_algo *digest_algo_get_by_name(const char *name)
 {
-	struct digest_algo *d = NULL;
+	struct digest_algo *d_by_name = NULL, *d_by_driver = NULL;
 	struct digest_algo *tmp;
 	int priority = -1;
 
@@ -114,17 +112,20 @@ static struct digest_algo *digest_algo_get_by_name(const char *name)
 		return NULL;
 
 	list_for_each_entry(tmp, &digests, list) {
+		if (strcmp(tmp->base.driver_name, name) == 0)
+			d_by_driver = tmp;
+
 		if (strcmp(tmp->base.name, name) != 0)
 			continue;
 
 		if (tmp->base.priority <= priority)
 			continue;
 
-		d = tmp;
+		d_by_name = tmp;
 		priority = tmp->base.priority;
 	}
 
-	return d;
+	return d_by_name ?: d_by_driver;
 }
 
 static struct digest_algo *digest_algo_get_by_algo(enum hash_algo algo)
-- 
2.39.2



