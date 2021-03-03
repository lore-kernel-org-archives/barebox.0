Delivery-date: Wed, 03 Mar 2021 20:33:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHXFn-00006H-3V
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 20:33:51 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHXFl-0000ic-Fv
	for lore@pengutronix.de; Wed, 03 Mar 2021 20:33:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=upNrPIKLK+NcXDi5sx2f1ylD1eBqeUD1gXMMlHaIg08=; b=Tq0ggejWlFWTk17h0F/T85HvM
	wk0TedOl5EkQ2wA/Ni0fezjydUqC9NHkRLeJGXrSFC2maodhjMTI0zaqxuDTOtKu84zDjkX9okluv
	agU+8vEUSO2pdqOGAFMgJQBZIxYVp8dilfVoMCubzwyaPNQqmKrDhV74b7ZI9pDruXNaCL8zvlQQW
	XS8zLcFL+0fjy4YxxH4qa9crz3CaalgmU4TakfN6j2M9xDUUrUW9ES4yuzI9pNucDWOxaKtqSMJVK
	CbS5ZlpIY5Zi8hK3pJzAZfKzhopy67dJNU77ETwRAO6Kvho7qv173jns7FzcDITxwTBK33O7HZbtZ
	iZ+ZV0dcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHXE6-006ECA-9A; Wed, 03 Mar 2021 19:32:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT3T-005I4B-Q6
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GWCAaLKUASSZg2AJTKBG1myzUPGLD53ZYl9Yq+cGyr0=; b=gtdmBhBRzhK+53SvQnGrDmR9TD
 3m1dj7aCylrduHF1mHl05FwTs68JCDgVwokNoKv59EnJU4tN4jvZ87HrjtwDXHSbtQ8mpEamg88Cw
 D+Urym/Az0ihIbzkM/Db8NqQZDmsSjT+oSA6d3oIrS8r1aY8WPMJj5bNkzt0tELDn48H5unP1jmQy
 UI9zyQPqRSvWXbAXv3CbEaEtRWcN+01iJxgF1xpiHLIunnFRJo3xJ+N71v0b3miGzb7BsnCHbZaq+
 xPIFplXKVXnfKJ2C1TZ+8a6wXagaFXFersTJxjdbVdka1Obeev9KmXVWYAb1mcxVjPtgufWVt8t5/
 VeIw3JLA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHOcr-0029XN-6S
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 10:21:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lHOce-0000i5-Kg; Wed, 03 Mar 2021 11:20:52 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lHOcb-0003Ao-0c; Wed, 03 Mar 2021 11:20:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Mar 2021 11:20:48 +0100
Message-Id: <20210303102048.10275-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-2-a.fatoum@pengutronix.de>
References: <20210301110106.3764-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_102106_335700_5ADDACA7 
X-CRM114-Status: GOOD (  14.27  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! common: introduce bthreads,
 co-operative barebox threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/bthread.c | 142 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)
 create mode 100644 commands/bthread.c

diff --git a/commands/bthread.c b/commands/bthread.c
new file mode 100644
index 000000000000..1fd782f03f43
--- /dev/null
+++ b/commands/bthread.c
@@ -0,0 +1,142 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <bthread.h>
+#include <errno.h>
+#include <malloc.h>
+#include <stdio.h>
+#include <command.h>
+#include <getopt.h>
+#include <clock.h>
+
+static int bthread_time(void)
+{
+	uint64_t start = get_time_ns();
+	int i = 0;
+
+	/*
+	 * How many background tasks can we have in one second?
+	 *
+	 * A low number here may point to problems with bthreads taking too
+	 * much time.
+	 */
+	while (!is_timeout(start, SECOND))
+		i++;
+
+	return i;
+}
+
+static int bthread_infinite(void *data)
+{
+	while (!bthread_should_stop())
+		;
+
+	return 0;
+}
+
+static int bthread_isolated_time(void)
+{
+	uint64_t start = get_time_ns();
+	struct bthread *bthread;
+	int i = 0;
+
+	bthread = bthread_create(bthread_infinite, NULL, "infinite");
+	if (!bthread)
+		return -ENOMEM;
+
+	bthread_wake(bthread);
+
+	/*
+	 * How many context switches can we do in one second?
+	 *
+	 * A low number here may point to problems with bthreads taking too
+	 * much time.
+	 */
+	while (!is_timeout_non_interruptible(start, SECOND)) {
+		bthread_schedule(bthread);
+		i += 2;
+	}
+
+	bthread_stop(bthread);
+	bthread_free(bthread);
+
+	return i;
+}
+
+static int bthread_printer(void *arg)
+{
+	volatile u64 start;
+	volatile int i = 0;
+	start = get_time_ns();
+
+	while (!bthread_should_stop()) {
+		if (!is_timeout_non_interruptible(start, 225 * MSECOND))
+			continue;
+
+		printf("%s yield #%d\n", __func__, ++i);
+		start = get_time_ns();
+	}
+
+	return i;
+}
+
+BAREBOX_CMD_HELP_START(bthread)
+	BAREBOX_CMD_HELP_TEXT("print info about registered barebox threads")
+	BAREBOX_CMD_HELP_TEXT("")
+	BAREBOX_CMD_HELP_TEXT("Options:")
+	BAREBOX_CMD_HELP_OPT ("-i", "Print information about registered bthreads")
+	BAREBOX_CMD_HELP_OPT ("-t", "measure how many bthreads we currently run in 1s")
+	BAREBOX_CMD_HELP_OPT ("-c", "count maximum context switches in 1s")
+	BAREBOX_CMD_HELP_OPT ("-v", "verify correct bthread operation")
+	BAREBOX_CMD_HELP_END
+
+static int do_bthread(int argc, char *argv[])
+{
+	struct bthread *bthread = NULL;
+	int ret, opt;
+	int yields;
+
+	while ((opt = getopt(argc, argv, "itcv")) > 0) {
+		switch (opt) {
+		case 'i':
+			bthread_info();
+			return 0;
+		case 'c':
+			yields = bthread_isolated_time();
+			printf("%d bthread context switches possible in 1s\n", yields);
+			break;
+		case 'v':
+			bthread = bthread_create(bthread_printer, NULL, "bthread");
+			if (!bthread)
+				return -ENOMEM;
+
+			bthread_wake(bthread);
+
+			/* fallthrough */
+		case 't':
+			yields = bthread_time();
+			printf("%d bthread yield calls in 1s\n", yields);
+		}
+
+		if (bthread) {
+			ret = bthread_stop(bthread);
+			bthread_free(bthread);
+
+			if (ret != 4 || yields < ret)
+				return COMMAND_ERROR;
+		}
+
+		return 0;
+	}
+
+	return COMMAND_ERROR_USAGE;
+}
+
+BAREBOX_CMD_START(bthread)
+	.cmd = do_bthread,
+	BAREBOX_CMD_DESC("print info about registered bthreads")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_bthread_help)
+BAREBOX_CMD_END
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

