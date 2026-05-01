Delivery-date: Fri, 01 May 2026 09:07:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxy-000n2E-0a
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxx-00022z-IT
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tW9TakgePgNvlcXBz4VJM2Q9XYfD23ZNnw2g3eN5Roc=; b=AKMk/bZ2GgvrGcbJC7+OJ+VTSA
	gZ/yt5judCrTxPFvcfnIu7ffn0FUG5ILHsbyur1HMyWdSQoa8v4qR2e6WNvG+Agn4MrEEzJNLZMkG
	LlZdYrmeejzlc38qMy8qheX3GiRgbwvMl/W57Z5QiY8iBt/cQjrB4lNorTnktv7yAKDMfNIGjc9KC
	8+al3zar9A7aYScSTnU/7JQ0ZX3P5ZydTLlKi9z02QCA6SGIytsFVC+qn56bsNZDaguXwQ+mEBBwa
	6ZOogaNmYUVEvqVv0GvNWERacrqfseqfOeYsIyQ2S26wrsTWCEKOfQDsLtGefO8mTnWKp64D61aUx
	wTxcr0Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxb-00000006RlL-0Xg5;
	Fri, 01 May 2026 07:06:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxW-00000006Rf9-2wfZ
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxV-0001W8-53; Fri, 01 May 2026 09:06:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:54:02 +0200
Message-ID: <20260501070625.952091-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000646_742196_3761350B 
X-CRM114-Status: GOOD (  12.29  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] console: add per-console terminal.size parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Expose a read-only "size" device parameter on every registered console.
Reading it queries the console dimensions via term_cdev_get_size() and
returns a WxH string (e.g. "80x25").

For consoles that will implement the get_size callback like fbconsole,
the size is read directly. For consoles with both stdin and stdout
active the size is probed using ANSI escape sequences. Consoles that
are output-only or cannot be queried return an error.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c  | 18 ++++++++++++++++++
 include/console.h |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/common/console.c b/common/console.c
index 8b6824b85e43..6b484b67bc45 100644
--- a/common/console.c
+++ b/common/console.c
@@ -10,6 +10,7 @@
 #include <malloc.h>
 #include <param.h>
 #include <console.h>
+#include <term.h>
 #include <driver.h>
 #include <fs.h>
 #include <of.h>
@@ -216,6 +217,20 @@ static int console_baudrate_set(struct param_d *param, void *priv)
 	return console_set_baudrate(cdev, cdev->baudrate_param);
 }
 
+static int console_size_get(struct param_d *param, void *priv)
+{
+	struct console_device *cdev = priv;
+	int rows = 0, cols = 0;
+
+	/* Parameter will just report 0x0 on errors) */
+	(void)term_cdev_get_size(cdev, &cols, &rows);
+
+	free(cdev->term_size);
+	cdev->term_size = xasprintf("%ux%u", cols, rows);
+
+	return 0;
+}
+
 static void console_init_early(void)
 {
 	kfifo_init(console_input_fifo, console_input_buffer,
@@ -391,6 +406,9 @@ int console_register(struct console_device *newcdev)
 	dev_add_param_string(dev, "active", console_active_set, console_active_get,
 			     &newcdev->active_string, newcdev);
 
+	dev_add_param_string(dev, "terminal.size", NULL, console_size_get,
+			     &newcdev->term_size, newcdev);
+
 	if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_FIRST)) {
 		if (list_empty(&console_list))
 			activate = CONSOLE_STDIOE;
diff --git a/include/console.h b/include/console.h
index f2b8da1546ef..cfd2480f30d3 100644
--- a/include/console.h
+++ b/include/console.h
@@ -58,6 +58,8 @@ struct console_device {
 	unsigned int baudrate;
 	unsigned int baudrate_param;
 
+	char *term_size;
+
 	const char *linux_console_name;
 	const char *linux_earlycon_name;
 	void __iomem *phys_base;
-- 
2.47.3



