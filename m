Delivery-date: Mon, 28 Jun 2021 09:11:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlQH-0002OZ-2K
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:11:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlQE-0007fo-J5
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:11:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nsYVv9ZtvsTVmQQS08dOSfuWdU3nDwlNjWXBpgCg5sY=; b=JIjly4daTwRgAN
	uGAe0nkmM5WmVu9Hp4KaEOc4YgJIwukZ9nbhjeqIdIvR5K/gG7S54RnhGUt7A8ZTPqvvuarzjomCR
	MIqTpWrMWh/gX4vbeaVFbtZIhem9lVxkPmog+UNFe2ie8ipQk6/8WouXWvVoudQhQaPZAEdNiOk+J
	Tcnjv1IuaBRNxHKZBI0CcWxZWEsGn8aCg2qaPkicQeUK3TDe6Ss8Rz0/UsouFXbNipV7qe+o7ZRMV
	Sk1qjvV0pPnuCJGo9wM96PFB7c2iwlkCK05HpuBTO9B0Ix5oT3vxU+yAIbPm5HZJsx17Hw/nwqfyF
	fowbDnyNUnSEr/4xL8FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlOr-007Ak4-J4; Mon, 28 Jun 2021 07:09:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlMl-0079zH-IO
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:07:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlMk-00074A-9R; Mon, 28 Jun 2021 09:07:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlMj-0004O2-Uj; Mon, 28 Jun 2021 09:07:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:07:30 +0200
Message-Id: <20210628070732.16812-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000735_958232_891C4C29 
X-CRM114-Status: GOOD (  18.24  )
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
Subject: [PATCH 1/3] bthread: remove thread exit codes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Follow-up commit will replace blocking bthread_stop with non-blocking
bthread_cancel. Prepare for this by dropping exit codes. This is not
much of a loss, because most users of bthreads will only call
bthread_stop at cleanup time. bthread command is an exception, so have
it take manual care of passing around exit codes.

As we touch the bthread_stop prototype anyway, rename it to
__bthread_stop. This will make it clearer in the future, that it's not
meant for driver use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/bthread.c                  | 48 ++++++++++++++++++-----------
 common/bthread.c                    | 20 ++++++------
 drivers/usb/gadget/f_mass_storage.c | 12 +++-----
 include/bthread.h                   |  5 +--
 4 files changed, 47 insertions(+), 38 deletions(-)

diff --git a/commands/bthread.c b/commands/bthread.c
index 0c9c221884e8..446fe9c37ac3 100644
--- a/commands/bthread.c
+++ b/commands/bthread.c
@@ -33,12 +33,10 @@ static int bthread_time(void)
 	return i;
 }
 
-static int bthread_infinite(void *data)
+static void bthread_infinite(void *data)
 {
 	while (!bthread_should_stop())
 		;
-
-	return 0;
 }
 
 static int bthread_isolated_time(void)
@@ -62,14 +60,20 @@ static int bthread_isolated_time(void)
 		i += 2;
 	}
 
-	bthread_stop(bthread);
+	__bthread_stop(bthread);
 	bthread_free(bthread);
 
 	return i;
 }
 
-static int bthread_printer(void *arg)
+struct arg {
+	unsigned long in;
+	long out;
+};
+
+static void bthread_printer(void *_arg)
 {
+	struct arg *arg = _arg;
 	volatile u64 start;
 	volatile unsigned long i = 0;
 	start = get_time_ns();
@@ -78,28 +82,30 @@ static int bthread_printer(void *arg)
 		if (!is_timeout_non_interruptible(start, 225 * MSECOND))
 			continue;
 
-		if ((unsigned long)arg == i++)
+		if (arg->in == i++)
 			printf("%s yield #%lu\n", bthread_name(current), i);
 		start = get_time_ns();
 	}
 
-	return i;
+	arg->out = i;
 }
 
 static int yields;
 
-static int bthread_spawner(void *arg)
+static void bthread_spawner(void *_spawner_arg)
 {
+	struct arg *arg, *spawner_arg = _spawner_arg;
 	struct bthread *bthread[4];
 	volatile u64 start;
 	volatile unsigned long i = 0;
 	int ret = 0;
-	int ecode;
 
 	start = get_time_ns();
 
 	for (i = 0; i < ARRAY_SIZE(bthread); i++) {
-		bthread[i] = bthread_run(bthread_printer, (void *)(long)i,
+		arg = malloc(sizeof(*arg));
+		arg->in = i;
+		bthread[i] = bthread_run(bthread_printer, arg,
 					 "%s-bthread%u", bthread_name(current), i+1);
 		if (!bthread[i]) {
 			ret = -ENOMEM;
@@ -112,14 +118,16 @@ static int bthread_spawner(void *arg)
 
 cleanup:
 	while (i--) {
-		ecode = bthread_stop(bthread[i]);
+		arg = bthread_data(bthread[i]);
+		__bthread_stop(bthread[i]);
 		bthread_free(bthread[i]);
 
-		if (!ret && (ecode != 4 || yields < ecode))
+		if (!ret && (arg->out != 4 || yields < arg->out))
 			ret = -EIO;
+		free(arg);
 	}
 
-	return ret;
+	spawner_arg->out = ret;
 }
 
 struct spawn {
@@ -132,8 +140,9 @@ static int do_bthread(int argc, char *argv[])
 	LIST_HEAD(spawners);
 	struct spawn *spawner, *tmp;
 	int ret = 0;
-	int ecode, opt, i = 0;
+	int opt, i = 0;
 	bool time = false;
+	struct arg *arg;
 
 	while ((opt = getopt(argc, argv, "itcv")) > 0) {
 		switch (opt) {
@@ -146,7 +155,8 @@ static int do_bthread(int argc, char *argv[])
 			break;
 		case 'v':
 			spawner = xzalloc(sizeof(*spawner));
-			spawner->bthread = bthread_run(bthread_spawner, NULL,
+			arg = malloc(sizeof(*arg));
+			spawner->bthread = bthread_run(bthread_spawner, arg,
 						       "spawner%u", ++i);
 			if (!spawner->bthread) {
 				free(spawner);
@@ -172,10 +182,12 @@ static int do_bthread(int argc, char *argv[])
 
 cleanup:
 	list_for_each_entry_safe(spawner, tmp, &spawners, list) {
-		ecode = bthread_stop(spawner->bthread);
+		arg = bthread_data(spawner->bthread);
+		__bthread_stop(spawner->bthread);
 		bthread_free(spawner->bthread);
-		if (!ret && ecode)
-			ret = ecode;
+		if (!ret && arg->out)
+			ret = arg->out;
+		free(arg);
 		free(spawner);
 	}
 
diff --git a/common/bthread.c b/common/bthread.c
index 80651344da64..48248dfad41a 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -20,11 +20,8 @@
 #endif
 
 static struct bthread {
-	int (*threadfn)(void *);
-	union {
-		void *data;
-		int ret;
-	};
+	void (*threadfn)(void *);
+	void *data;
 	char *name;
 	jmp_buf jmp_buf;
 	void *stack;
@@ -54,7 +51,7 @@ static void __noreturn bthread_trampoline(void)
 	finish_switch_fiber(current);
 	bthread_reschedule();
 
-	current->ret = current->threadfn(current->data);
+	current->threadfn(current->data);
 
 	bthread_suspend(current);
 	current->has_stopped = true;
@@ -81,7 +78,7 @@ const char *bthread_name(struct bthread *bthread)
 	return bthread->name;
 }
 
-struct bthread *bthread_create(int (*threadfn)(void *), void *data,
+struct bthread *bthread_create(void (*threadfn)(void *), void *data,
 			       const char *namefmt, ...)
 {
 	struct bthread *bthread;
@@ -117,6 +114,11 @@ err:
 	return NULL;
 }
 
+void *bthread_data(struct bthread *bthread)
+{
+	return bthread->data;
+}
+
 void bthread_wake(struct bthread *bthread)
 {
 	if (bthread->awake)
@@ -133,14 +135,12 @@ void bthread_suspend(struct bthread *bthread)
 	list_del(&bthread->list);
 }
 
-int bthread_stop(struct bthread *bthread)
+void __bthread_stop(struct bthread *bthread)
 {
 	bthread->should_stop = true;
 
 	while (!bthread->has_stopped)
 		bthread_reschedule();
-
-	return bthread->ret;
 }
 
 int bthread_should_stop(void)
diff --git a/drivers/usb/gadget/f_mass_storage.c b/drivers/usb/gadget/f_mass_storage.c
index 4894f91fa6ef..0033a95f68f3 100644
--- a/drivers/usb/gadget/f_mass_storage.c
+++ b/drivers/usb/gadget/f_mass_storage.c
@@ -2335,7 +2335,7 @@ static void handle_exception(struct fsg_common *common)
 
 /*-------------------------------------------------------------------------*/
 
-static int fsg_main_thread(void *common_)
+static void fsg_main_thread(void *common_)
 {
 	struct fsg_common	*common = common_;
 	int ret = 0;
@@ -2374,12 +2374,8 @@ static int fsg_main_thread(void *common_)
 			common->state = FSG_STATE_IDLE;
 	}
 
-	if (ret && ret != -ERESTARTSYS) {
+	if (ret && ret != -ERESTARTSYS)
 		pr_warn("%s: error %pe\n", __func__, ERR_PTR(ret));
-		return ret;
-	}
-
-	return 0;
 }
 
 static void fsg_common_release(struct fsg_common *common);
@@ -2541,7 +2537,7 @@ static void fsg_common_release(struct fsg_common *common)
 	/* If the thread isn't already dead, tell it to exit now */
 	if (common->state != FSG_STATE_TERMINATED) {
 		raise_exception(common, FSG_STATE_EXIT);
-		bthread_stop(thread_task);
+		__bthread_stop(thread_task);
 		bthread_free(thread_task);
 	}
 
@@ -2568,7 +2564,7 @@ static void fsg_unbind(struct usb_configuration *c, struct usb_function *f)
 		fsg->common->new_fsg = NULL;
 		raise_exception(fsg->common, FSG_STATE_CONFIG_CHANGE);
 
-		bthread_stop(thread_task);
+		__bthread_stop(thread_task);
 		while (common->fsg == fsg)
 			bthread_reschedule();
 	}
diff --git a/include/bthread.h b/include/bthread.h
index e3871fb11555..407aa830a835 100644
--- a/include/bthread.h
+++ b/include/bthread.h
@@ -12,14 +12,15 @@ struct bthread;
 
 extern struct bthread *current;
 
-struct bthread *bthread_create(int (*threadfn)(void *), void *data, const char *namefmt, ...);
+struct bthread *bthread_create(void (*threadfn)(void *), void *data, const char *namefmt, ...);
 void bthread_free(struct bthread *bthread);
 
 void bthread_schedule(struct bthread *);
 void bthread_wake(struct bthread *bthread);
 void bthread_suspend(struct bthread *bthread);
 int bthread_should_stop(void);
-int bthread_stop(struct bthread *bthread);
+void __bthread_stop(struct bthread *bthread);
+void *bthread_data(struct bthread *bthread);
 void bthread_info(void);
 const char *bthread_name(struct bthread *bthread);
 bool bthread_is_main(struct bthread *bthread);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

