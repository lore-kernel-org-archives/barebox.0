Delivery-date: Mon, 04 Mar 2024 20:04:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDc9-008d7a-2k
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:04:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDc8-0008IA-Fx
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:04:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mstrjBSkTMBrMQ1QDtNmcg10EW1ooQfKKzq+uMNrvEI=; b=DLzU/Dg9EU9dffOPNQdxkyYbz9
	9zLdOsMqOzOmwvMBUH2z8kUjopqwtdYNagUZjQoZ+lAdc3q42nCI89XL82h0In368+Ga6lJzz3Rqi
	l0IX5XQCbhj/e6f5osuUd19kcuBkbnXUy2AmxcibuxS+H1vDcIQm52KzbR7Zpjh6i9kBmGioO4e+Y
	XEzZwLY6Pi10Ge9VRK+tQSOZD+cc61RUynINkoQrkVQhQnUaRVYPZei5aAhq85T8HhCxMwPVVW47p
	Bn/isG/IuF7YLDLvMXMaXiVCU9RSNMFtm4KK8LKZuRyETeWHKyGWfUwQ2ieuBbW78zZWzqSDXgVNo
	MwU4BGoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDbY-0000000AJJs-21Ry;
	Mon, 04 Mar 2024 19:04:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaE-0000000AIHX-3pIc
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-0005zC-Gi; Mon, 04 Mar 2024 20:02:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PGc-3Q; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-0P;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:31 +0100
Message-Id: <20240304190038.3486881-47-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110243_135219_0970BB75 
X-CRM114-Status: GOOD (  14.26  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 046/113] commands: time: switch to using getopt for -n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have support for the stop-at-first-non-option scanning mode
indicated by a leading `+', there is nothing preventing us from using
getopt for the time command. This rids us of interleaving argument
parsing with the command's processing, has the command behave as one
would expect, e.g. if multiple -n arguments are specified and allows for
easier future extension.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 commands/time.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/commands/time.c b/commands/time.c
index 5b8933ea6553..72647a3bb876 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -5,30 +5,38 @@
 #include <clock.h>
 #include <linux/math64.h>
 #include <malloc.h>
+#include <getopt.h>
 
 static int do_time(int argc, char *argv[])
 {
-	int i;
+	int i, opt;
 	unsigned char *buf;
 	u64 start, end, diff64;
 	bool nanoseconds = false;
 	int len = 1; /* '\0' */
 
-	if (argc < 2)
+	while ((opt = getopt(argc, argv, "+n")) > 0) {
+		switch (opt) {
+		case 'n':
+			nanoseconds = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if (argc < 1)
 		return COMMAND_ERROR_USAGE;
 
-	for (i = 1; i < argc; i++)
+	for (i = 0; i < argc; i++)
 		len += strlen(argv[i]) + 1;
 
 	buf = xzalloc(len);
 
-	i = 1;
-	if (!strcmp(argv[i], "-n")) {
-		nanoseconds = true;
-		i++;
-	}
-
-	for (; i < argc; i++) {
+	for (i = 0; i < argc; i++) {
 		strcat(buf, argv[i]);
 		strcat(buf, " ");
 	}
-- 
2.39.2



