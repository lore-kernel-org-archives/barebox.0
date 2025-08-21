Delivery-date: Thu, 21 Aug 2025 19:52:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T6-0032ct-1d
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 19:52:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T4-0005u6-Rj
	for lore@pengutronix.de; Thu, 21 Aug 2025 19:52:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=43Ke28a0X68Xk4G8LFpiCu96MrCtDGIFI2gbF9bJMhQ=; b=uW0jpIL1EbME7Y8YfHfK73NpLZ
	KKEb/Ai57BBm0ZvEE+ugekF7k2ESTaAZmOMh4kXYcTxXpXmeJIDA1lyJXQ7XFYh+qbWBJXt7lxvJK
	IUe8h9PFnTTUsf3MnHvJ9ZFyg2s/soQ5in1k4pHwfKybOIZfBBxFI9nhDHo9yKtRDeaQjgQWYXigw
	+JV8n5w8So9KuBKo4zfBS+e24NLBAMlqm+H5JVJxMSQwKsZ8++84nWo5sPZClrHjC/IvemOQAqFWj
	GYcMuYOFQJqZA4lQIa/P/TgtbettbNijKOGGWRJt6oz3kgnQw394paFOpzcyYJ9pveV7xPcSGvmXW
	9DnaGMFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9SR-000000006tU-1r0O;
	Thu, 21 Aug 2025 17:52:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5Ba-0000000H1aF-3Hjb
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 13:18:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-0008Ve-H2; Thu, 21 Aug 2025 15:18:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-001Q3L-0w;
	Thu, 21 Aug 2025 15:18:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-00HHYe-0e;
	Thu, 21 Aug 2025 15:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Aug 2025 15:18:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-keynames-v1-4-8144af76d0ab@pengutronix.de>
References: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
In-Reply-To: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755782311; l=2808;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=onRC8R6Yjz6rZfqG0wNNcKKsutqgNLkTlDfWycXEmnk=;
 b=5/mSnZnNJvTOs9FgQWSZl8NKje9MlewCH9tckJXl7swq2DchFLYrhrWcdvXmBm9aySgUKp05r
 /ep/7sEqy0nBHSwUCdZYribJafKkxFz0IxGe5QDF7dq37CK1PmBOinz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_061834_850143_C43AD0AF 
X-CRM114-Status: GOOD (  13.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] commands: add keys command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently there is no way to show the keys built into the barebox
binary. The new keys command does exactly that. For each key it will
show the key name hint if exists and a sha256 hash over the public key.

The sha256 hash can be retrieved from the certificates or public key PEM
files with openssl commands:

openssl x509 -in crypto/fit-ecdsa-development.crt -pubkey -noout | openssl ec -pubin -inform PEM -outform DER | openssl dgst -sha256
cat ~/git/ptx-code-signing-dev/fit/fit-ecdsa-development.public-key | openssl ec -pubin -inform PEM -outform DER | openssl dgst -sha256

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |  7 +++++++
 commands/Makefile |  1 +
 commands/keys.c   | 30 ++++++++++++++++++++++++++++++
 3 files changed, 38 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 6c61bff1cd1220107f658a89bfade4cef7b5af23..34235865bdf5035f581ea82f4a4f9c174a80adce 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2354,6 +2354,13 @@ config CMD_KEYSTORE
 	help
 	  keystore provides access to the barebox keystore.
 
+config CMD_KEYS
+	depends on CRYPTO_BUILTIN_KEYS
+	bool
+	prompt "keys"
+	help
+	  The keys command provides information about builtin public keys
+
 # end Security commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 9247287ed53aa3bf06692744bf409e80bc832e7a..3222a02aac85ee7996ea7b52dd58dcb36bb71926 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -116,6 +116,7 @@ obj-$(CONFIG_CMD_LN)		+= ln.o
 obj-$(CONFIG_CMD_CLK)		+= clk.o
 obj-$(CONFIG_CMD_KALLSYMS)	+= kallsyms.o
 obj-$(CONFIG_CMD_KEYSTORE)	+= keystore.o
+obj-$(CONFIG_CMD_KEYS)		+= keys.o
 obj-$(CONFIG_CMD_TFTP)		+= tftp.o
 obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
 obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
diff --git a/commands/keys.c b/commands/keys.c
new file mode 100644
index 0000000000000000000000000000000000000000..2d85e8124ff57ecc8ef7364f083b3439e3b958e4
--- /dev/null
+++ b/commands/keys.c
@@ -0,0 +1,30 @@
+#include <command.h>
+#include <stdio.h>
+#include <crypto/public_key.h>
+
+static int do_keys(int argc, char *argv[])
+{
+	const struct public_key *key;
+
+	for_each_public_key(key) {
+		printf("KEY: %*phN", key->hashlen, key->hash);
+
+		if (key->key_name_hint)
+			printf(" (%s)\n", key->key_name_hint);
+		else
+			printf("\n");
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(keys)
+BAREBOX_CMD_HELP_TEXT("Print informations about public keys")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(keys)
+        .cmd            = do_keys,
+        BAREBOX_CMD_DESC("Print informations about public keys")
+        BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+        BAREBOX_CMD_HELP(cmd_keys_help)
+BAREBOX_CMD_END

-- 
2.39.5



