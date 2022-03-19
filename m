Delivery-date: Sat, 19 Mar 2022 12:04:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsu-00GfWQ-RI
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 12:04:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsv-0003Ug-4N
	for lore@pengutronix.de; Sat, 19 Mar 2022 12:04:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brSXpCkxtKQDVDEqHniIHrqHdDAmy8WLGWkPOa+9DcU=; b=WiyImertw/yz+W
	YkXhtYBZ1Qs/5qr0MJa+lz3ESov8/0ZFSpf+5z4Qcu3ct0LMH4M3vodcvVNs4YcfT/j8vZcpEci9F
	e5RLcINt/jRuGuoJxL+OVvxGrUinPUXODY8yB5h2XdOSgwtorxcn2L7xyK8+B3h4xcnPLPlxF702m
	bz/uB2kUJX4rp/DA9psgR//WeGrIyt/XF/dXpN8k7O2Nc5mAj4pkqw7BLEpLblyrb5SbIhOu3A42L
	EChA4iiwVfcBt89XA7EytEKnpb1uCBMzHlm/ETzImuVkq/Mmf1JG4ZryEM/zWkAAxubyIhtc499Nm
	e3vDO7VKrj9Ed7NDaX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVWrQ-003bSq-SM; Sat, 19 Mar 2022 11:03:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVWrG-003bQM-Pd
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 11:02:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWrB-0003Cr-Ht; Sat, 19 Mar 2022 12:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWr9-00Bxr0-At; Sat, 19 Mar 2022 12:02:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Mar 2022 12:02:44 +0100
Message-Id: <20220319110246.2850396-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
References: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_040254_883551_32D53E92 
X-CRM114-Status: GOOD (  20.83  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 4/6] usb: gadget: mass-storage: reference count
 allocations used in bthread
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since 997cca0f15dc ("bthread: replace blocking bthread_stop with
nonblocking bthread_cancel"), the bthread may survive longer than the
multigadget unbind. This didn't cause issues so far, because the multi
gadget unbind didn't call usb_put_function[_instance] for mass-storage
(but did so for other functions), so we just leaked the memory.

In preparation for fixing the memory leak, we will need to straighten
out the mass storage cleanup. We do so by reference counting the
two shared structures: If bthread runs before usb_put_function[_instance],
it will not free them yet (avoiding a double free) and if bthread runs
after usb_put_function[_instance], it will still be able to access them
(avoiding a use-after-free).

A cleaner way would've been to wait for bthread completion, but we can't
do that here, because gadget could be unbound in a poller and bthreads
are only scheduled in command context.

Fixes: 997cca0f15dc ("bthread: replace blocking bthread_stop with nonblocking bthread_cancel")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/f_mass_storage.c | 52 ++++++++++++++++++++++++-----
 include/usb/mass_storage.h          |  1 +
 2 files changed, 44 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/f_mass_storage.c b/drivers/usb/gadget/f_mass_storage.c
index a49ac7803337..1c26c4d99681 100644
--- a/drivers/usb/gadget/f_mass_storage.c
+++ b/drivers/usb/gadget/f_mass_storage.c
@@ -263,8 +263,6 @@ static struct usb_gadget_strings	fsg_stringtab = {
 
 struct bthread *thread_task;
 
-struct kref {int x; };
-
 struct fsg_dev;
 
 static struct file_list *ums_files;
@@ -282,6 +280,8 @@ struct fsg_common {
 	struct fsg_buffhd	*next_buffhd_to_drain;
 	struct fsg_buffhd	buffhds[FSG_NUM_BUFFERS];
 
+	struct f_ums_opts	*opts;
+
 	int			cmnd_size;
 	u8			cmnd[MAX_COMMAND_SIZE];
 
@@ -322,6 +322,20 @@ struct fsg_common {
 	char inquiry_string[8 + 16 + 4 + 1];
 };
 
+static struct f_ums_opts *f_ums_opts_get(struct f_ums_opts *opts)
+{
+	opts->refcnt++;
+	return opts;
+}
+
+static void f_ums_opts_put(struct f_ums_opts *opts)
+{
+	if (--opts->refcnt == 0) {
+		kfree(opts->common);
+		kfree(opts);
+	}
+}
+
 struct fsg_config {
 	unsigned nluns;
 	struct fsg_lun_config {
@@ -348,6 +362,8 @@ struct fsg_dev {
 	struct usb_gadget	*gadget;	/* Copy of cdev->gadget */
 	struct fsg_common	*common;
 
+	int			refcnt;
+
 	u16			interface_number;
 
 	unsigned int		bulk_in_enabled:1;
@@ -360,6 +376,17 @@ struct fsg_dev {
 	struct usb_ep		*bulk_out;
 };
 
+static struct fsg_dev *fsg_dev_get(struct fsg_dev *fsg)
+{
+	fsg->refcnt++;
+	return fsg;
+}
+
+static void fsg_dev_put(struct fsg_dev *fsg)
+{
+	if (--fsg->refcnt == 0)
+		kfree(fsg);
+}
 
 static inline int __fsg_is_set(struct fsg_common *common,
 			       const char *func, unsigned line)
@@ -2337,12 +2364,14 @@ static void handle_exception(struct fsg_common *common)
 
 static void fsg_main_thread(void *fsg_)
 {
-	struct fsg_dev *fsg = fsg_;
+	struct fsg_dev *fsg = fsg_dev_get(fsg_);
 	struct fsg_common *common = fsg->common;
+	struct f_ums_opts *opts = f_ums_opts_get(common->opts);
 	struct fsg_buffhd *bh;
 	unsigned i;
 	int ret = 0;
 
+
 	/* The main loop */
 	while (common->state != FSG_STATE_TERMINATED) {
 		if (exception_in_progress(common)) {
@@ -2394,11 +2423,14 @@ static void fsg_main_thread(void *fsg_)
 
 	ums_count = 0;
 	ums_files = NULL;
+
+	f_ums_opts_put(opts);
+	fsg_dev_put(fsg);
 }
 
 static void fsg_common_release(struct fsg_common *common);
 
-static struct fsg_common *fsg_common_setup(void)
+static struct fsg_common *fsg_common_setup(struct f_ums_opts *opts)
 {
 	struct fsg_common *common;
 
@@ -2409,6 +2441,7 @@ static struct fsg_common *fsg_common_setup(void)
 
 	common->ops = NULL;
 	common->private_data = NULL;
+	common->opts = opts;
 
 	return common;
 }
@@ -2659,7 +2692,7 @@ static void fsg_free(struct usb_function *f)
 
 	fsg = container_of(f, struct fsg_dev, function);
 
-	kfree(fsg);
+	fsg_dev_put(fsg);
 }
 
 static struct usb_function *fsg_alloc(struct usb_function_instance *fi)
@@ -2683,7 +2716,7 @@ static struct usb_function *fsg_alloc(struct usb_function_instance *fi)
 	fsg->function.free_func = fsg_free;
 
 	fsg->common = common;
-	common->fsg = fsg;
+	common->fsg = fsg_dev_get(fsg);
 
 	return &fsg->function;
 }
@@ -2692,8 +2725,7 @@ static void fsg_free_instance(struct usb_function_instance *fi)
 {
 	struct f_ums_opts *opts = fsg_opts_from_func_inst(fi);
 
-	kfree(opts->common);
-	kfree(opts);
+	f_ums_opts_put(opts);
 }
 
 static struct usb_function_instance *fsg_alloc_inst(void)
@@ -2706,12 +2738,14 @@ static struct usb_function_instance *fsg_alloc_inst(void)
 
 	opts->func_inst.free_func_inst = fsg_free_instance;
 
-	opts->common = fsg_common_setup();
+	opts->common = fsg_common_setup(opts);
 	if (!opts->common) {
 		free(opts);
 		return ERR_PTR(-ENOMEM);
 	}
 
+	f_ums_opts_get(opts);
+
 	return &opts->func_inst;
 }
 
diff --git a/include/usb/mass_storage.h b/include/usb/mass_storage.h
index 084b3c8e8f31..7be665ee4729 100644
--- a/include/usb/mass_storage.h
+++ b/include/usb/mass_storage.h
@@ -20,6 +20,7 @@ struct f_ums_opts {
 	struct file_list *files;
 	unsigned int num_sectors;
 	int fd;
+	int refcnt;
 	char name[16];
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

