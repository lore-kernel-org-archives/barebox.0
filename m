Delivery-date: Thu, 24 Jul 2025 15:55:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewQ7-003GPK-1k
	for lore@lore.pengutronix.de;
	Thu, 24 Jul 2025 15:55:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewQ6-0002Xl-W0
	for lore@pengutronix.de; Thu, 24 Jul 2025 15:55:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWFbJOIntKzYEwfYQcXKkhNCUoitrkhYsp+8RyYLVfk=; b=GVSO7cm6eqPsoFYM7RF9IYQUfo
	qgE6rn+9OTSNxM5NvjTTS2WXC+4ezEexB7sbj9QxSEdWAO3d1Wvig0CcFPFvca8JewD7Y1wPcJ19u
	eHc6uV7gfOFvMCbl8FBDmNDl8EH+bBmUJZ/hIAoBahZzyCTjdGY1ZqlAGXF3G+LQGCU/u7JVjW+Vl
	vnQZvp/Wq37YIWh/wpOBZiiucD6LF67XbS8UbCtrdlnEtm0xOY4HIOvkECtqo/sF0gJ1R6JnInNUB
	IdKBzu8fZw3yob9KKy6kDZLY4CWc4+4p0WIYpqD9NgQ+SXAR3sLRiCjzNIck4ncIz98MjSfeDhRq5
	aAQ9CYJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewPj-00000007dpn-3S6F;
	Thu, 24 Jul 2025 13:55:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewLc-00000007Xux-2r2m
	for barebox@lists.infradead.org;
	Thu, 24 Jul 2025 13:51:02 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uewLZ-0000no-89
	for barebox@lists.infradead.org; Thu, 24 Jul 2025 15:50:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jul 2025 15:50:56 +0200
Message-Id: <20250724135056.1252995-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250724135056.1252995-1-m.felsch@pengutronix.de>
References: <20250724135056.1252995-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_065100_756474_741435CD 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] keytoc: fix env provided keyspec handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently the env provided keyspec is resolved during the gen_key() step
by making use of the try_resolve_env(). This is wrong because it will
set the complete <hint>:<key> keyspec string for the 'keyname' and 'path'.

To fix this the resolve step must happen during the main-loop as first step
because the main-loop is doing the 'keyname' and 'path' split already.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/keytoc.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 617317d6607e..105fa4b5413d 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -615,10 +615,6 @@ static int gen_key(const char *keyname, const char *path)
 	char *tmp, *key_name_c;
 
 	/* key name handling */
-	keyname = try_resolve_env(keyname);
-	if (!keyname)
-		exit(1);
-
 	tmp = key_name_c = strdup(keyname);
 
 	while (*tmp) {
@@ -628,10 +624,6 @@ static int gen_key(const char *keyname, const char *path)
 	}
 
 	/* path/URI handling */
-	path = try_resolve_env(path);
-	if (!path)
-		exit(1);
-
 	if (!strncmp(path, "pkcs11:", 7)) {
 		ret = engine_get_pub_key(path, &key);
 		if (ret)
@@ -737,6 +729,11 @@ int main(int argc, char *argv[])
 		char *keyname = NULL;
 		char *path = NULL;
 
+		/* Check if the keyspec is provided by the ENV first */
+		keyspec = try_resolve_env(keyspec);
+		if (!keyspec)
+			exit(1);
+
 		if (!strncmp(keyspec, "pkcs11:", 7))
 			path = strdup(keyspec);
 		else
-- 
2.39.5



