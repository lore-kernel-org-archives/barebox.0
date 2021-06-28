Delivery-date: Mon, 28 Jun 2021 09:10:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlQ3-0002Nl-2w
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:10:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlQ1-0007bW-Go
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:10:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sO7lVLnp6HEKiPSFE+V73kKJlf+4AUyILcEAIwOWT/0=; b=GPbfpAYJmcVvtF
	cmaPqrLqKnTZGVs8moEge3JhuumiFk/SLpjgeDvTZBXc/YBUzpocSMv7EtaAYb80dVb24z9dt6JKO
	2bipq3jesdxATWyXme6pbyjI/SyN6oTRKCDR5BkG4jhz6j1OwrvBtEo1KMajprR509vkBzR+aH46p
	ij+fhG4mVEBYiFc1kJeVywnempEMbS1UvlRA8X3NJ+lnwIuMAFCRqC3qegSIijhW0LUJqJJ5WZvya
	aUNUtf+kuBzm5F2bkB3RS06I55AnVcNh7neZd5MMjApzbzUlCi+1hjaqV60+c8IvRESxe24FyvZr8
	1YemIbV+bkWabTJ8/j1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlOf-007Ae5-Jm; Mon, 28 Jun 2021 07:09:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlMl-0079zE-IT
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:07:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlMk-00074B-7f; Mon, 28 Jun 2021 09:07:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlMj-0004O4-VB; Mon, 28 Jun 2021 09:07:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:07:31 +0200
Message-Id: <20210628070732.16812-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628070732.16812-1-a.fatoum@pengutronix.de>
References: <20210628070732.16812-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000735_888448_CC80AB57 
X-CRM114-Status: GOOD (  24.31  )
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
Subject: [PATCH 2/3] bthread: replace blocking bthread_stop with nonblocking
 bthread_cancel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When bthread were first merged, they could be scheduled in any context
and bthread_stop could just keep rescheduling until the bthread in
question exits after which it would return the exit code.

Now that bthreads are only scheduled in command context, bthread_stop
also can only be scheduled in command context, making it much less
useful and easier to shoot yourself in the foot with.

Avoid this by introducing a bthread_cancel function instead that will
asynchronously terminate the thread. For most purposes that should be
fine, because bthread_stop is used to synchronize cleanup and we can
move the cleanup into the thread instead.

The only exception is the bthread command, which relies on being able to
wait on bthreads to complete. For these __bthread_stop remains available,
but should not be used in new code.

This fixes a hang that is encountered when the usb mass storage gadget
unbind is called from a poller leading barebox to wait indefinitely.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/bthread.c                  |  3 --
 common/bthread.c                    | 44 ++++++++++++++++++-------
 drivers/usb/gadget/f_mass_storage.c | 51 +++++++++++++----------------
 include/bthread.h                   |  2 +-
 4 files changed, 56 insertions(+), 44 deletions(-)

diff --git a/commands/bthread.c b/commands/bthread.c
index 446fe9c37ac3..ce3db2d3d292 100644
--- a/commands/bthread.c
+++ b/commands/bthread.c
@@ -61,7 +61,6 @@ static int bthread_isolated_time(void)
 	}
 
 	__bthread_stop(bthread);
-	bthread_free(bthread);
 
 	return i;
 }
@@ -120,7 +119,6 @@ cleanup:
 	while (i--) {
 		arg = bthread_data(bthread[i]);
 		__bthread_stop(bthread[i]);
-		bthread_free(bthread[i]);
 
 		if (!ret && (arg->out != 4 || yields < arg->out))
 			ret = -EIO;
@@ -184,7 +182,6 @@ cleanup:
 	list_for_each_entry_safe(spawner, tmp, &spawners, list) {
 		arg = bthread_data(spawner->bthread);
 		__bthread_stop(spawner->bthread);
-		bthread_free(spawner->bthread);
 		if (!ret && arg->out)
 			ret = arg->out;
 		free(arg);
diff --git a/common/bthread.c b/common/bthread.c
index 48248dfad41a..46e6987149bb 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -32,10 +32,12 @@ static struct bthread {
 #endif
 	u8 awake :1;
 	u8 should_stop :1;
+	u8 should_clean :1;
 	u8 has_stopped :1;
 } main_thread = {
 	.list = LIST_HEAD_INIT(main_thread.list),
 	.name = "main",
+	.awake = true,
 };
 
 struct bthread *current = &main_thread;
@@ -66,7 +68,7 @@ bool bthread_is_main(struct bthread *bthread)
 	return bthread == &main_thread;
 }
 
-void bthread_free(struct bthread *bthread)
+static void bthread_free(struct bthread *bthread)
 {
 	free(bthread->stack);
 	free(bthread->name);
@@ -104,6 +106,8 @@ struct bthread *bthread_create(void (*threadfn)(void *), void *data,
 	if (len < 0)
 		goto err;
 
+	list_add_tail(&bthread->list, &current->list);
+
 	/* set up bthread context with the new stack */
 	initjmp(bthread->jmp_buf, bthread_trampoline,
 		bthread->stack + CONFIG_STACK_SIZE);
@@ -121,26 +125,31 @@ void *bthread_data(struct bthread *bthread)
 
 void bthread_wake(struct bthread *bthread)
 {
-	if (bthread->awake)
-		return;
-	list_add_tail(&bthread->list, &current->list);
 	bthread->awake = true;
 }
 
 void bthread_suspend(struct bthread *bthread)
 {
-	if (!bthread->awake)
-		return;
 	bthread->awake = false;
-	list_del(&bthread->list);
+}
+
+void bthread_cancel(struct bthread *bthread)
+{
+	bthread->should_stop = true;
+	bthread->should_clean = true;
 }
 
 void __bthread_stop(struct bthread *bthread)
 {
 	bthread->should_stop = true;
 
+	pr_debug("waiting for %s to stop\n", bthread->name);
+
 	while (!bthread->has_stopped)
 		bthread_reschedule();
+
+	list_del(&bthread->list);
+	bthread_free(bthread);
 }
 
 int bthread_should_stop(void)
@@ -163,10 +172,23 @@ void bthread_info(void)
 
 void bthread_reschedule(void)
 {
-	struct bthread *next = list_next_entry(current, list);
-	if (current != next)
-		pr_debug("switch %s -> %s\n", current->name, next->name);
-	bthread_schedule(next);
+	struct bthread *next, *tmp;
+
+	if (current == list_next_entry(current, list))
+		return;
+
+	list_for_each_entry_safe(next, tmp, &current->list, list) {
+		if (next->awake) {
+			pr_debug("switch %s -> %s\n", current->name, next->name);
+			bthread_schedule(next);
+			return;
+		}
+		if (next->has_stopped && next->should_clean) {
+			pr_debug("deleting %s\n", next->name);
+			list_del(&next->list);
+			bthread_free(next);
+		}
+	}
 }
 
 void bthread_schedule(struct bthread *to)
diff --git a/drivers/usb/gadget/f_mass_storage.c b/drivers/usb/gadget/f_mass_storage.c
index 0033a95f68f3..753042125d14 100644
--- a/drivers/usb/gadget/f_mass_storage.c
+++ b/drivers/usb/gadget/f_mass_storage.c
@@ -2335,9 +2335,12 @@ static void handle_exception(struct fsg_common *common)
 
 /*-------------------------------------------------------------------------*/
 
-static void fsg_main_thread(void *common_)
+static void fsg_main_thread(void *fsg_)
 {
-	struct fsg_common	*common = common_;
+	struct fsg_dev *fsg = fsg_;
+	struct fsg_common *common = fsg->common;
+	struct fsg_buffhd *bh;
+	unsigned i;
 	int ret = 0;
 
 	/* The main loop */
@@ -2376,6 +2379,21 @@ static void fsg_main_thread(void *common_)
 
 	if (ret && ret != -ERESTARTSYS)
 		pr_warn("%s: error %pe\n", __func__, ERR_PTR(ret));
+
+	usb_free_all_descriptors(&fsg->function);
+
+	for (i = 0; i < ums_count; i++)
+		close(ums[i].fd);
+
+	bh = common->buffhds;
+	i = FSG_NUM_BUFFERS;
+
+	do {
+		dma_free(bh->buf);
+	} while (++bh, --i);
+
+	ums_count = 0;
+	ums_files = NULL;
 }
 
 static void fsg_common_release(struct fsg_common *common);
@@ -2409,7 +2427,7 @@ static int fsg_common_init(struct fsg_common *common,
 	common->ep0 = gadget->ep0;
 	common->ep0req = cdev->req;
 
-	thread_task = bthread_run(fsg_main_thread, common, "mass-storage-gadget");
+	thread_task = bthread_run(fsg_main_thread, common->fsg, "mass-storage-gadget");
 	if (IS_ERR(thread_task))
 		return PTR_ERR(thread_task);
 
@@ -2531,52 +2549,27 @@ close:
 
 static void fsg_common_release(struct fsg_common *common)
 {
-	struct fsg_buffhd *bh;
-	unsigned i;
-
 	/* If the thread isn't already dead, tell it to exit now */
 	if (common->state != FSG_STATE_TERMINATED) {
 		raise_exception(common, FSG_STATE_EXIT);
-		__bthread_stop(thread_task);
-		bthread_free(thread_task);
 	}
 
-	bh = common->buffhds;
-	i = FSG_NUM_BUFFERS;
-
-	do {
-		dma_free(bh->buf);
-	} while (++bh, --i);
-
-	ums_count = 0;
+	bthread_cancel(thread_task);
 }
 
 
 static void fsg_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct fsg_dev		*fsg = fsg_from_func(f);
-	struct fsg_common	*common = fsg->common;
-	int i;
 
 	DBG(fsg, "unbind\n");
 
 	if (fsg->common->fsg == fsg) {
 		fsg->common->new_fsg = NULL;
 		raise_exception(fsg->common, FSG_STATE_CONFIG_CHANGE);
-
-		__bthread_stop(thread_task);
-		while (common->fsg == fsg)
-			bthread_reschedule();
 	}
 
-	usb_free_all_descriptors(&fsg->function);
-
-	for (i = 0; i < ums_count; i++)
-		close(ums[i].fd);
-
 	fsg_common_release(fsg->common);
-
-	ums_files = NULL;
 }
 
 static int fsg_bind(struct usb_configuration *c, struct usb_function *f)
diff --git a/include/bthread.h b/include/bthread.h
index 407aa830a835..4441b53696fb 100644
--- a/include/bthread.h
+++ b/include/bthread.h
@@ -13,7 +13,7 @@ struct bthread;
 extern struct bthread *current;
 
 struct bthread *bthread_create(void (*threadfn)(void *), void *data, const char *namefmt, ...);
-void bthread_free(struct bthread *bthread);
+void bthread_cancel(struct bthread *bthread);
 
 void bthread_schedule(struct bthread *);
 void bthread_wake(struct bthread *bthread);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

