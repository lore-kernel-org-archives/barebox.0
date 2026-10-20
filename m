Delivery-date: Tue, 20 Oct 2026 09:10:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ3zK-000vty-2U
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:10:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C7B59202136
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:10:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FSyqoPxF;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=gY9tAtpE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480222; a=rsa-sha256;
	cv=fail;
	b=KQAEL761WdglUBjC5GCS08rJcoiS6ZyCR3ySle2niq7mQhZztyForMKLEzm7vpu8YYJjx0
	1wZJh1fJL2VUPKG+FSRaY6DT11BMMFE2Y7nl09YbOLdB/2PG8oJSHMGOMSS7OoRy+5Mdr1
	XZ451rWLXxVRbG7wL/YUBXroivuqvYGCtQTOCCggIyHofN9NkO2NzsN055JDjT1jbRXOzJ
	pplEMWxmWe7+5HeioNqX5rNEDpliZiRJVXPdGgUzBW3/4eQFb3vfj+2GWFjrwcjQfQUJ+h
	Fq8TdKrAmzSmICy2llFWmhI98jja4qwE2aRA47BMgxBfbwxQ6ElkSjTlpikIhA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FSyqoPxF;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=gY9tAtpE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480222;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MhZt7te7otzvP6oQgG/7uA5HVgFdd0iVjlOyiCA4qwI=;
	b=Kk+gg60cNIJM4cPqs7OG4GJgy56os4YJ5kdYt7+Kvu+s5KwRQCCohiVQxjFfM/+9NAuM8p
	8AeJYiQEaHLUeKH5cS+S8PAI84+wUjOYa1yJw/Y00fiL/Yyh0YFoIQWxhJyN1UrvbQbMtS
	GABlJabaPI55KzhfAbuq9eXKoL2WUjK66AHeRU6DG57fWkKN6JxhTW0o3j8OFr50elPTzv
	p2e2vNiezYmFQuK6Val/OmyDOHlGxysYVLhYxHdmFSWalDvPFncO517oO3DvcrYebp3sZB
	GJKEOvGcAWTpDV+hLOYsIY29DggCASi2Q3EibfncNRXROzLyM55aUODg0k4iaA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MhZt7te7otzvP6oQgG/7uA5HVgFdd0iVjlOyiCA4qwI=; b=FSyqoPxFSzCuXULGNx/ST19EgT
	QKyQclpZGlKkvtdgzDtJYkKmkl3EqkkzgAKAiPHvR6rxv3Mnkx6aKasxcnFme1GNRumSxYvknd216
	XwX45J83Dh2SRxQqr10vNaG2yI/I2oSOry6S/a1GPWYO3/h5KpeNLqV/zMhKLm0aRzIs1GgbexRSB
	qUJMGNo3sk+um//haEfy7FxvMlKpCiqR6hNTtwCO12tYvxyuFu1ibQ/NowTOmuLc+3njTEvXtCM/g
	EDkrV0SDXl2gUiRwsti7PEZK80g96CQbxMq1bOaI1Sz5v6YA/I/48HCKmj6fQlXIYHdmTzxSvWZdb
	QryAQWJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yf-00000008zKs-0rVV;
	Tue, 20 Oct 2026 07:09:41 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3ya-00000008zH2-44fZ
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:39 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1F7B6202228;
	Tue, 20 Oct 2026 09:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MhZt7te7otzvP6oQgG/7uA5HVgFdd0iVjlOyiCA4qwI=;
	b=gY9tAtpEVetQksLeaZFZV9Y5fCfmATLcxVV+3bb4ID8/HHl7VVbzU+g/bP8JaXmENtEGP0
	AJJIYzECeoMLK9a1zr5tcCVrm7r7GhDbL5R4YZeoZUVUe/M2mRN+Kmwxrq1IrmF/zZfDFq
	t04PO5AxxOxgkJecR4Y77lX2douea6Y3P3hW+KeQU9j+pS6gGSqHV90YZK2mhk+V2Txq2l
	kqiqBw7ywASlQTzGDPZX36tRKpVatqAkyrwb95sgXp/RmJKlztgybKfoqpuEmX8SErX6qC
	LmlTTquEllI2B8VF6WDhb5FXWbLYeNiwIKhHeUuHlpcIe0OA2693HNkojD4INw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480171; a=rsa-sha256;
	cv=none;
	b=EwBaMFtMfgbHkqQE08QmlE8sYNh2OUrl0S9Nq3tko2vQI0BCsB8iafGMQED+TOIsV0kQAy
	O0uwxAptr/lcPjTKS6jemA8B4fxVixwPudH2juHEFGQzQR3eSGBn4KpGB/c+7Q4b5LyZE3
	/taDNR50vfOUZXspukWYplutSMIWDZgm18kc0wHOqB9+A5VkLrQRJrYukE9WnKVWgcebhN
	eO/inDYwVYe7K3FY1c8C/m8vy/p0QfEFa1GF1kJCb7aB0xGvJzl59ctE2wpzK6s3evjKnF
	6FYcX62tlLnxmVUNkIHFXa8cy3QRJHBoqiW11bhCi98rUdZnYXSvt1077n/OcA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MhZt7te7otzvP6oQgG/7uA5HVgFdd0iVjlOyiCA4qwI=;
	b=WYZPqkOrQfd3fmX7lxXalSoLuGg8+Geiaa0C0BpVI6bA5suUqo+qgSIIkPlNqt0f/C+HYC
	JZ50sXSaE4WzUWLRHxftYjNrr79x3xg2aJf9hg3ifDLYiFuxaYDO8XnPuEN19k7GDY7NQq
	jBRLPRz+e3aewkiHubS2tvVOE8Auf2InUaGVsyNW8IV2G/DXIX+ITcE0i+P6cZOMpLMTS3
	OsSTM8WKB1ilarZF3qUy+KcxFjggDXIFelO8BxuCwWDd145EYgqLdZFgGcPYYL17jNRWJg
	ApCfQAfLEqOWp4efr62bIXqnavqU7BSEDaDe2ParIFiWgxF489QlSnP0MMRlGw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:34 +0200
Subject: [PATCH 9/9] commands: ln: create link inside DEST if it is a
 directory
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-9-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=2175;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Wo6CTkp2cMcciz2RFFPHsAkhVVdU44D2ZqsHkUlJFZs=;
 b=cZXrOhAj8GIhwkZLpAParwnz4aizmm3aic00lTsO5s3DI8NB0SYEeWZphHwmqym2GuWjO2cOy
 6JpkpPnhPzHDBllRxLPPr5hfPCX6OfDGf/4GT3oceDKfAQLCkAw6IG/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000938_411704_CFD7AC5B 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  With Linux ln, when the link name is an existing directory,
    the link is created inside that directory and named after the last component
    of the target, so that 'ln -s /etc/foo .' creates ./foo. barebo [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C7B59202136
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: zu3qegqxj4cyi14xbuw8ciytg7tx6rks

With Linux ln, when the link name is an existing directory, the link is
created inside that directory and named after the last component of the
target, so that 'ln -s /etc/foo .' creates ./foo. barebox ln instead
tries to create the link at DEST itself and fails with -EEXIST.

Do the same as Linux. Trailing slashes in the target are ignored for the
link name, but are kept in the target the link points to.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ln.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/commands/ln.c b/commands/ln.c
index c907b306c9..1b18dfcf63 100644
--- a/commands/ln.c
+++ b/commands/ln.c
@@ -10,10 +10,14 @@
 #include <fs.h>
 #include <errno.h>
 #include <getopt.h>
+#include <libbb.h>
 
 static int do_ln(int argc, char *argv[])
 {
-	int opt;
+	const char *target, *dest;
+	char *linkname = NULL;
+	struct stat s;
+	int opt, ret;
 
 	while ((opt = getopt(argc, argv, "s")) > 0) {
 		switch (opt) {
@@ -31,7 +35,22 @@ static int do_ln(int argc, char *argv[])
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (symlink(argv[0], argv[1]) < 0) {
+	target = argv[0];
+	dest = argv[1];
+
+	/* like Linux, create the link inside DEST when it is a directory */
+	if (!stat(dest, &s) && S_ISDIR(s.st_mode)) {
+		char *tmp = xstrdup(target);
+
+		linkname = concat_path_file(dest, posix_basename(tmp));
+		free(tmp);
+		dest = linkname;
+	}
+
+	ret = symlink(target, dest);
+	free(linkname);
+
+	if (ret < 0) {
 		perror("ln");
 		return 1;
 	}
@@ -39,7 +58,9 @@ static int do_ln(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(ln)
-BAREBOX_CMD_HELP_TEXT("Create a symbolic link DEST pointing to SRC.")
+BAREBOX_CMD_HELP_TEXT("Create a symbolic link DEST pointing to SRC. If DEST is an existing")
+BAREBOX_CMD_HELP_TEXT("directory, the link is created in it, named after the last component")
+BAREBOX_CMD_HELP_TEXT("of SRC.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-s", "ignored, all links are symbolic links")

-- 
2.47.3



