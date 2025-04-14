Delivery-date: Mon, 14 Apr 2025 08:24:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DFS-000Wng-0y
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:24:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DFR-0007Nq-Nv
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:24:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SNcjb5XxRfoc2zKpta8seJnB/jb6lYlficgTSDOh7gk=; b=j7iaQyNUvop2VoKkxxA6Zr+VPv
	JwTufOZjv1vNWWEHm+9+2CfH4wdLIgUa3HB46lYxvoNOVmG+lTNGQ3sYHENAwYIRPuj/zkGB0EUtY
	u9SErwDiTCwIrBYmUlMVzjjYsDSQ6SL9yTqgwIj1uisV5ZhsM/aawwyNo8PMpg8pI6KvrHkeV7lVT
	a3eI68wzKmDr9KvylCkj3Y+caj+a/I63a7oHlButINV6E4PFz2bhiw3YcI/FFsMlgL2UJeo64WJ1L
	NC68/X0O9FFocBB+9/LHSbuuZsr89zqAtp3QPletwiJ8yJlT/TxEtN67QmuzthIiH9ZUTxr3I43ay
	O4vqiEEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DF3-00000000n00-1AlL;
	Mon, 14 Apr 2025 06:24:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DF0-00000000mzX-10an
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:24:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DEy-0007Ek-Sj; Mon, 14 Apr 2025 08:24:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DEy-000CgP-2F;
	Mon, 14 Apr 2025 08:24:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DEy-00BQjy-1x;
	Mon, 14 Apr 2025 08:24:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:24:19 +0200
Message-Id: <20250414062419.2724359-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_232422_275870_D70C084E 
X-CRM114-Status: GOOD (  11.32  )
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
Subject: [PATCH] commands: saveenv: mention where environment is saved to
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already mention it on loadenv, but it makes sense to do it on saveenv
too to assist with debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/saveenv.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 203729efbb1a..d8aeb31f051c 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -13,9 +13,8 @@ static int do_saveenv(int argc, char *argv[])
 {
 	int ret, opt;
 	unsigned envfs_flags = 0;
-	char *filename = NULL, *dirname = NULL;
+	const char *filename = NULL, *dirname = NULL;
 
-	printf("saving environment\n");
 	while ((opt = getopt(argc, argv, "z")) > 0) {
 		switch (opt) {
 		case 'z':
@@ -33,6 +32,12 @@ static int do_saveenv(int argc, char *argv[])
 	/* destination only given? */
 	if (argc - optind > 0)
 		filename = argv[optind];
+	if (!filename)
+		filename = default_environment_path_get();
+	if (!filename)
+		return -ENOENT;
+
+	printf("saving environment to %s\n", filename);
 
 	ret = envfs_save(filename, dirname, envfs_flags);
 
-- 
2.39.5



