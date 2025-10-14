Delivery-date: Tue, 14 Oct 2025 13:03:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8coq-007iH4-1X
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:03:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8com-0003Gc-Tz
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:03:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ug8gbx5suKvUDGcLjloB8Cbh2tusH25/p54ZoFqRoh8=; b=gpBmxAKRslIOWy3TqBLMJt7Oh9
	19QC8fap4h4sOeTt4l7/8vcCWOAmct7JCnKsbYEUU1c8ZidZhJPtdc9L06R6eTD0HqValclLXazTA
	GGFjxx+MFwh+XkM+mJZ5J4sH/fT+C34gE2sz7ongirTtVZmvIIrDuRvFwORIqOXp7okQylXHjew+l
	wYLsoaTdhGTsUZhguCIzVgIdUO7MPF4MZ5+1g1KlseeRU3wEy6L8UDyg3AehVnUjzBnB0mV4xq7tG
	uO0BZY+06cGyuy0kRm2Uw/odYUVTOxFmX7YrB+/JirBUCqEupQ6CyWfoY6nDz68uGPhvaiHQSeOfZ
	Nf+GxpGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coA-0000000G0NG-28Oc;
	Tue, 14 Oct 2025 11:03:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co6-0000000G0ID-366q
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:08 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-Ad; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:02:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-5-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1444; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=hnTKnkdOT7O9/Y96CHDrbdks4bFnzInNB2AlYA8bivI=;
 b=kA0DAAoW1JjkDZHO24AByyZiAGjuLeSjHpKcd0bCtBpcL0PhowZJFRaIik5Jdr3T9j2thxqbD
 4h1BAAWCgAdFiEEXSYeIBIzT9c2eT5d1JjkDZHO24AFAmjuLeQACgkQ1JjkDZHO24DfSAEA6R/u
 +JdJjbfZo0sNXbhKTPn9WUXMrs6USQXUGzDQSqgBAKdZnZtJ4INUMSSaWbtBdX1jDQAXF+Aia7b
 1tbcbvSgO
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_040306_780912_C8443587 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/15] commands: keys: update output format to include
 keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Also show the algorithm used.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 commands/keys.c             |  8 ++------
 include/crypto/public_key.h | 12 ++++++++++++
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/commands/keys.c b/commands/keys.c
index 2d85e8124f..e1e87f3e9e 100644
--- a/commands/keys.c
+++ b/commands/keys.c
@@ -7,12 +7,8 @@ static int do_keys(int argc, char *argv[])
 	const struct public_key *key;
 
 	for_each_public_key(key) {
-		printf("KEY: %*phN", key->hashlen, key->hash);
-
-		if (key->key_name_hint)
-			printf(" (%s)\n", key->key_name_hint);
-		else
-			printf("\n");
+		printf("KEY: %*phN\tTYPE: %s\tKEYRING: %s\tHINT: %s\n", key->hashlen,
+		       key->hash, public_key_type_string(key->type), key->keyring, key->key_name_hint);
 	}
 
 	return 0;
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 44ae09e4d0..269b878a04 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -12,6 +12,18 @@ enum public_key_type {
 	PUBLIC_KEY_TYPE_ECDSA,
 };
 
+static inline const char *public_key_type_string(enum public_key_type type)
+{
+	switch (type) {
+	case PUBLIC_KEY_TYPE_RSA:
+		return "RSA";
+	case PUBLIC_KEY_TYPE_ECDSA:
+		return "ECDSA";
+	default:
+		return "unknown";
+	}
+}
+
 struct public_key {
 	enum public_key_type type;
 	struct list_head list;

-- 
2.51.0.297.gca2559c1d6



