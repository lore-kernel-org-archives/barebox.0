Delivery-date: Tue, 13 Apr 2021 00:36:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5AX-0006C0-IX
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:36:33 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5AV-0006tD-KS
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:36:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P9tPPWsQCTjB5IFOwxvzXpvgUu8zOP0EwebsTe0eajs=; b=lk6kKuEYp+Xbfjw9Au8zgjQHC
	jLXZpA+9rR9PFeKpn9y1/V/3/11Y2xhq+slRGXzyYgioKxUqoGRb0EzuroZR1TlGdOfjnwrKyJG2T
	VyO9SDicLuAuLepUwkvI7zrbeC9II0GM/Lk/y2XaqcUsSM7yj60zNQSEyYsQa6SXhBRLwDAGqYixK
	h4WgEZ51l8yIxBeo2VaWL63uVfHQz8UogFegVD6iZ2zmNO8ectlD0RXlzwxn75mQNhP26YH6Omla7
	w/3n1KYjRtj3jo6JSxIwYPaD5vumedGlaek7CVPLHziAMaAOosN3IVWYNowlDVpNuUaA0JbIQbxHo
	Hn24r+xzQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59M-007n7z-Ll; Mon, 12 Apr 2021 22:35:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59C-007n6q-Gn
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=1LVwQEvbLMdTVVQIchsX8Mly1t7eiSmxihbNb6TFKhs=; b=TbCXSD8Krv9o0hFuU0Nth84yVQ
 ks0Z/WbMBjo8u4MU8j3S4qNWsWne6zW8SJ9c4nmHjbAja0HuhmmmrL95kR8EngitkpHMK7/cdqA8y
 8JUiTCxKnwFPT9sZwodKjYpJ/GGiWek60uxN1S1U2LIFbXXlvea5vMeDWwo4I9ZgXDRVnLVakCoUJ
 k5tp1TFPzn93gQ9vERyyEAHJP0KDEdMfQcB0g+vvpaDlfuvXC/j+L6buEwfo1815jjeOo8JvlbPMC
 IF0BGDAOYimZ7tfgtcCKsAu+1ZDkeQV88QkCOUdsttx9QhVtqJffFLv7XxBYAEDo+56aTBkOEBOkV
 Cs8zMNfQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap2-IF
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0006BH-Us; Tue, 13 Apr 2021 00:35:04 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003sC-BA; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:49 +0200
Message-Id: <20210412223502.29691-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_675057_23AE0715 
X-CRM114-Status: GOOD (  15.58  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/14] show_progress: add system wide progress stage notifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use case is e.g. board code that wants to register a client to light
status LEDs to indicate system state when no serial output is available.
This functionality doesn't increase code size due to linker GC when
CONFIG_PROGRESS_NOTIFIER is disabled.

There is a generic progress notifier provided that just logs the
status. This could be shared with the booted kernel via pstore or
the log as a whole written to a system setup USB drive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/progress.h  | 43 +++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig         |  6 ++++++
 lib/show_progress.c | 28 ++++++++++++++++++++++++++++
 3 files changed, 77 insertions(+)

diff --git a/include/progress.h b/include/progress.h
index 50b15fb12b4c..7230bd3a9bd5 100644
--- a/include/progress.h
+++ b/include/progress.h
@@ -3,6 +3,8 @@
 #define __PROGRSS_H
 
 #include <linux/types.h>
+#include <notifier.h>
+#include <errno.h>
 
 /* Initialize a progress bar. If max > 0 a one line progress
  * bar is printed where 'max' corresponds to 100%. If max == 0
@@ -15,4 +17,45 @@ void init_progression_bar(loff_t max);
  */
 void show_progress(loff_t now);
 
+extern struct notifier_head progress_notifier;
+
+enum progress_stage {
+	PROGRESS_UNSPECIFIED = 0,
+	PROGRESS_UPDATING,
+	PROGRESS_UPDATE_SUCCESS,
+	PROGRESS_UPDATE_FAIL,
+};
+
+/*
+ * Notifier list for code which wants to be called at progress
+ * This could use by board code to e.g. flash a LED during updates
+ */
+extern struct notifier_head progress_notifier_list;
+
+/* generic client that just logs the state */
+extern struct notifier_block progress_log_client;
+
+static inline int progress_register_client(struct notifier_block *nb)
+{
+	if (!IS_ENABLED(CONFIG_PROGRESS_NOTIFIER))
+		return -ENOSYS;
+	return notifier_chain_register(&progress_notifier_list, nb);
+}
+
+static inline int progress_unregister_client(struct notifier_block *nb)
+{
+	if (!IS_ENABLED(CONFIG_PROGRESS_NOTIFIER))
+		return -ENOSYS;
+	return notifier_chain_unregister(&progress_notifier_list, nb);
+}
+
+static inline int progress_notifier_call_chain(enum progress_stage stage, const char *prefix)
+{
+	if (!IS_ENABLED(CONFIG_PROGRESS_NOTIFIER))
+		return -ENOSYS;
+
+	/* clients should not modify the prefix */
+	return notifier_call_chain(&progress_notifier_list, stage, (char *)(prefix ?: ""));
+}
+
 #endif /*  __PROGRSS_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index e5831ecdb9a7..922710e106b3 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -154,6 +154,12 @@ source "lib/logo/Kconfig"
 
 source "lib/bootstrap/Kconfig"
 
+config PROGRESS_NOTIFIER
+	bool
+	help
+	  This is selected by boards that register a notifier to visualize
+	  progress, like blinking a LED during an update.
+
 config PRINTF_UUID
 	bool
 
diff --git a/lib/show_progress.c b/lib/show_progress.c
index 1be06ea7806e..1b624bcb9af8 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -57,3 +57,31 @@ void init_progression_bar(loff_t max)
 	else
 		printf("\t");
 }
+
+NOTIFIER_HEAD(progress_notifier_list);
+
+static int progress_logger(struct notifier_block *r, unsigned long stage, void *_prefix)
+{
+	const char *prefix = _prefix;
+
+	switch ((enum progress_stage)stage) {
+		case PROGRESS_UPDATING:
+			pr_info("%sSoftware update in progress\n", prefix);
+			break;
+		case PROGRESS_UPDATE_SUCCESS:
+			pr_info("%sSoftware update finished successfully\n", prefix);
+			break;
+		case PROGRESS_UPDATE_FAIL:
+			pr_info("%sSoftware update failed\n", prefix);
+			break;
+		case PROGRESS_UNSPECIFIED:
+			/* default state. This should not be reached */
+			break;
+	}
+
+	return 0;
+}
+
+struct notifier_block progress_log_client =  {
+	.notifier_call = progress_logger
+};
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

