Delivery-date: Mon, 06 Jan 2025 16:37:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUpAN-00HXuU-2x
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 16:37:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUpAN-0003Gm-T0
	for lore@pengutronix.de; Mon, 06 Jan 2025 16:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7OmM5utWlTo+f5NC3a2f9J/pT8Qaz13OqpbPtF0W9M4=; b=at//Wrlc1d0Ik1pAiQMd6ddcDr
	V1nhi/Ba96/kXPESuh/7n3qnKQvUWFF3rTjdmxJK+0a0P6Xcu7KCU7Z+/PSFOQ0j2Cz5CmCtdKeII
	zF/XoYny6L3AjUku3YRh5aFgkgpM77qcTvcj1I+yQkISGg7OG1scpg29HuvMiI0IB9z71wLPVXwX7
	txbxdXxu6p6htjhNat7ZqNj2oEz2y19R0R0BjRLQ4beVYHSccrILhUBJdBeISrtndqL55WirsPrB1
	B46wb29c3qbtJK0+vpV5apuybTp4r4Gw5dxcGnEkDCVZjtZN5YnFjPdNC9PRbLIp8YZg5QsvacpTQ
	/2LquEmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUp9u-00000001nDK-2khO;
	Mon, 06 Jan 2025 15:36:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUp9q-00000001nBL-3GsC
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 15:36:47 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tUp9p-000304-Jc; Mon, 06 Jan 2025 16:36:45 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Mon,  6 Jan 2025 16:36:32 +0100
Message-Id: <20250106153633.1470205-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106153633.1470205-1-bst@pengutronix.de>
References: <20250106153633.1470205-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_073646_816344_07E4D20A 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] keytoc: allow __ENV__ lookup for keyname hint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_CRYPTO_PUBLIC_KEYS already supports __ENV__VARNAME making barebox
look up the value in the environment variable VARNAME instead. But this
only works for the public key (path or PKCS#11 URI), not for the
corresponding (optional) key name hint.

Change that by using the same logic as for the public key for the key
name hint.

For example, ..

  CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FIT_KEY_NAME_HINT:__ENV__FIT_KEY"

..would look up the environment variables KEY_NAME_HINT and FIT_KEY.
Multiple keys can still be passed by space separating multiple key name
hint and public key combinations.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 scripts/keytoc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 9b3522a602f..cf9c2f52482 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -598,6 +598,10 @@ static int gen_key(const char *keyname, const char *path)
 	char *tmp, *key_name_c;
 
 	/* key name handling */
+	keyname = try_resolve_env(keyname);
+	if (!keyname)
+		exit(1);
+
 	tmp = key_name_c = strdup(keyname);
 
 	while (*tmp) {
-- 
2.39.5



