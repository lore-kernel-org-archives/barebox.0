Delivery-date: Mon, 28 Jun 2021 09:10:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlPi-0002Mj-Ui
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:10:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlPh-0007Uc-Kc
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:10:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnhsMYx9s39r04PspU7XD42NwOvknHx6hkGYdt6akGI=; b=T9qstJo/k1mihP
	reWrDxxonwVIyj2pu8GU/7i4hD9ghP2GjmkxllJLfBuaLzqBKvf5HoOXXYKe9dxtkhgiItzC+S6Ga
	pzXr+7Zi99XiJZWkRi1A+U2RRguUjj6Nx0yBlZNZYaGT1A6PCWA3djcYmfLCgQkrQoGhBAiCHGm9t
	/j4P4x9NmGUTDw5lOgvQSI4/8GJ2mP6Q17fBQO+eXhnqCakkCeBt7qMMpwJJDHI5w4Lzs6fZLbBaQ
	5uZ+qe5SBGS0jGDQqWYrYtuG4uO69wCgS2zHT4juccVRRPKStYuUofVAZ/ZvXIHilw65o8TrRUjSI
	HU5hq/T7nC9xIG+abM8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlOS-007AYA-PB; Mon, 28 Jun 2021 07:09:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlMl-0079zG-IS
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:07:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlMk-00074C-8P; Mon, 28 Jun 2021 09:07:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlMj-0004O7-Vb; Mon, 28 Jun 2021 09:07:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:07:32 +0200
Message-Id: <20210628070732.16812-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628070732.16812-1-a.fatoum@pengutronix.de>
References: <20210628070732.16812-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000735_678111_A3E24803 
X-CRM114-Status: GOOD (  15.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] bthread: add options to create and delete dummy bthreads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With few bthread users currently, it can be useful to spin up some
threads to test stuff. Add a new option to add one more thread into the
mix and another to remove one of these dummy threads. Unlike the
existing -v option that can also be stacked, these threads remain active
after command termination unless explicitly removed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/bthread.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/commands/bthread.c b/commands/bthread.c
index ce3db2d3d292..aaade46e9206 100644
--- a/commands/bthread.c
+++ b/commands/bthread.c
@@ -135,6 +135,8 @@ struct spawn {
 
 static int do_bthread(int argc, char *argv[])
 {
+	static int dummynr;
+	static LIST_HEAD(dummies);
 	LIST_HEAD(spawners);
 	struct spawn *spawner, *tmp;
 	int ret = 0;
@@ -142,8 +144,29 @@ static int do_bthread(int argc, char *argv[])
 	bool time = false;
 	struct arg *arg;
 
-	while ((opt = getopt(argc, argv, "itcv")) > 0) {
+	while ((opt = getopt(argc, argv, "aritcv")) > 0) {
 		switch (opt) {
+		case 'a':
+			spawner = xzalloc(sizeof(*spawner));
+			spawner->bthread = bthread_run(bthread_infinite, NULL,
+						       "dummy%u", dummynr++);
+			if (!spawner->bthread) {
+				free(spawner);
+				ret = -ENOMEM;
+				goto cleanup;
+			}
+
+			list_add(&spawner->list, &dummies);
+			break;
+		case 'r':
+			if (dummynr == 0)
+				return -EINVAL;
+			spawner = list_first_entry(&dummies, struct spawn, list);
+			bthread_cancel(spawner->bthread);
+			list_del(&spawner->list);
+			free(spawner);
+			dummynr--;
+			break;
 		case 'i':
 			bthread_info();
 			break;
@@ -198,6 +221,8 @@ BAREBOX_CMD_HELP_START(bthread)
 	BAREBOX_CMD_HELP_OPT ("-i", "Print information about registered bthreads")
 	BAREBOX_CMD_HELP_OPT ("-t", "measure how many bthreads we currently run in 1s")
 	BAREBOX_CMD_HELP_OPT ("-c", "count maximum context switches in 1s")
+	BAREBOX_CMD_HELP_OPT ("-a", "add a dummy bthread")
+	BAREBOX_CMD_HELP_OPT ("-r", "remove a dummy bthread")
 	BAREBOX_CMD_HELP_OPT ("-v", "verify correct bthread operation")
 BAREBOX_CMD_HELP_END
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

