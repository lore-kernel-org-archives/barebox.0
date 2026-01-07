Delivery-date: Wed, 07 Jan 2026 13:58:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7Z-002Fpf-23
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 13:58:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdT7Z-00047e-2k
	for lore@pengutronix.de; Wed, 07 Jan 2026 13:58:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FSWuu+xaqQO3KIym5acKswNuzA6mdc2VoSnSln6l1tY=; b=n9hYXWxxsWuKZ9bGqBsWorRUcl
	MtoScDXBVuZdqZCIbxIg8n//Q77uqqxWzrBvpNqtX8it1cLkCRPqRhVdPajG9ZNCZJ0Hzc433D0u+
	i73KVLVEdUQvVClZ8xGB7eEGqKjETVK7FwtwpWaTNkwvr7CZUfjOZa1r/ab8eqKaHwP2gPVA3RAx4
	d2UJsB+zI11AH2z4wgxN/iOM5UkPaaq8RLGgVNUwMgz+SRg7Dtv8mte5BI1ZfXM48hUbvFjOOMOfj
	PmVtZXYQGd/es/ZAFRikTDBi9TnDpUv3k0C2S6FFdfhDQp3nKFwo0wN8mr7Afz7fQEXMqPJPI2I3H
	5WiFFZsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT72-0000000EwYy-3SsK;
	Wed, 07 Jan 2026 12:58:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT6y-0000000EwX9-42l9
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 12:58:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6v-0003w4-RL; Wed, 07 Jan 2026 13:58:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6v-009VqF-26;
	Wed, 07 Jan 2026 13:58:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdT6w-0000000GYrf-0yoK;
	Wed, 07 Jan 2026 13:58:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jan 2026 13:57:59 +0100
Message-ID: <20260107125800.3947255-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260107125800.3947255-1-a.fatoum@pengutronix.de>
References: <20260107125800.3947255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_045805_005073_89BCFF9A 
X-CRM114-Status: GOOD (  12.69  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] fixup! commands: implement rksecure command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commands: rksecure: use printf for command errors

pr_err is logged, may be shared with Linux via pstore and outputs to stderr,
which may point at a different console or be hidden by log level setting.

printf on the other hand is not logged, uses stdout and is thus the
correct function to use to output, regular or error, in commands.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/rksecure.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/rksecure.c b/commands/rksecure.c
index e0c20f75fcec..81b4f1a62860 100644
--- a/commands/rksecure.c
+++ b/commands/rksecure.c
@@ -17,14 +17,14 @@ static int rksecure_write_hash_hex(const char *hex, u32 key_size_bits)
 	u8 digest[SHA256_DIGEST_SIZE];
 
 	if (strlen(hex) != SHA256_DIGEST_SIZE * 2) {
-		pr_err("%s has wrong size: Expected %d characters\n",
+		printf("%s has wrong size: Expected %d characters\n",
 		       hex, SHA256_DIGEST_SIZE * 2);
 		return -EINVAL;
 	}
 
 	ret = hex2bin(digest, hex, SHA256_DIGEST_SIZE);
 	if (ret < 0) {
-		pr_err("Failed to parse hash %s\n", hex);
+		printf("Failed to parse hash %s\n", hex);
 		return -EINVAL;
 	}
 
@@ -41,7 +41,7 @@ static int rksecure_write_hash_file(const char *filename, u32 key_size_bits)
 	if (ret)
 		return ret;
 	if (size != SHA256_DIGEST_SIZE) {
-		pr_err("%s has wrong size: Expected %d bytes\n",
+		printf("%s has wrong size: Expected %d bytes\n",
 		       filename, SHA256_DIGEST_SIZE);
 		return -EINVAL;
 	}
@@ -60,7 +60,7 @@ static int rksecure_print_info(void)
 
 	ret = rk_secure_boot_get_info(&info);
 	if (ret) {
-		pr_err("Failed to read secure boot info\n");
+		printf("Failed to read secure boot info\n");
 		return ret;
 	}
 
-- 
2.47.3



