Delivery-date: Mon, 05 Sep 2022 09:40:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6ik-007Ejh-Of
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 09:40:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6ik-0007pY-BQ
	for lore@pengutronix.de; Mon, 05 Sep 2022 09:40:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KxnkeNqAwiyp7KEvyKHvnFd6F/0QXauEhkm4mSv7R3E=; b=as7NGTo8njpbZejUPuJppBmXEz
	ImhYp4Yqg4PGX/dfr7UOkOWFfYWy6RTDuQwXfjOoHie7uIJ29DwhfUEfQBNZtr0sxGX5WNi0IfIgS
	mROhDSrBWmPsx8R3WATRXL/anEaYd3njRLUqIWh9M5Q/IgZswZR+dIMhsR1FP966KnHdgbHf/YZOj
	XVgJqajUF4+0LjlUssh1g6l2RDwy23yZvet8ijjc6JQPlsRmPpy7SlzmbZp+5LhFginuuR1DcwEPU
	iDQgFhwBXCaZvqfS7ZlrychYJ5xpjPsus8q5hQZq86u1yfS5x52xblT7ZvW2Z/6jn47X2HScQTFgQ
	vdl9cRFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV6gp-00DSpn-2a; Mon, 05 Sep 2022 07:38:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV66r-00CoLf-7x
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 07:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV66p-0002DR-Sz; Mon, 05 Sep 2022 09:01:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV66n-0040pm-Ak; Mon, 05 Sep 2022 09:01:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV66o-002Fpv-Hq; Mon, 05 Sep 2022 09:01:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 09:01:25 +0200
Message-Id: <20220905070125.537483-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_000129_578108_AF1A4F5F 
X-CRM114-Status: GOOD (  13.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] test: self: provide selftest_is_running()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For debugging during self-test run, it can be useful to enable select
logging only when the selftest is running. Provide a selftest_is_running()
function that can be used to determine whether a test is running.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/selftest.c |  2 +-
 include/bselftest.h |  5 +++++
 test/self/core.c    | 26 +++++++++++++++++++++++++-
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/commands/selftest.c b/commands/selftest.c
index a10f1467fece..bb62575aa7bb 100644
--- a/commands/selftest.c
+++ b/commands/selftest.c
@@ -24,7 +24,7 @@ static int run_selftest(const char *match, bool list)
 		if (match && strcmp(test->name, match))
 			continue;
 
-		err |= test->func();
+		err |= selftest_run(test);
 		matches++;
 	}
 
diff --git a/include/bselftest.h b/include/bselftest.h
index 21eeba0526ef..f03c803b6553 100644
--- a/include/bselftest.h
+++ b/include/bselftest.h
@@ -15,6 +15,7 @@ struct selftest {
 	const char *name;
 	int (*func)(void);
 	struct list_head list;
+	bool running;
 };
 
 static inline int selftest_report(unsigned int total_tests, unsigned int failed_tests,
@@ -71,4 +72,8 @@ static inline void selftests_run(void)
 	}							\
 	__bselftest_initcall(_func##_bselftest_register);
 
+
+int selftest_run(struct selftest *test);
+bool selftest_is_running(struct selftest *test);
+
 #endif
diff --git a/test/self/core.c b/test/self/core.c
index caa4c27f6def..40f5ee842d16 100644
--- a/test/self/core.c
+++ b/test/self/core.c
@@ -7,6 +7,30 @@
 
 LIST_HEAD(selftests);
 
+int selftest_run(struct selftest *test)
+{
+	int err;
+
+	test->running = true;
+	err = test->func();
+	test->running = false;
+
+	return err;
+}
+
+bool selftest_is_running(struct selftest *test)
+{
+	if (test)
+		return test->running;
+
+	list_for_each_entry(test, &selftests, list) {
+		if (selftest_is_running(test))
+			return true;
+	}
+
+	return false;
+}
+
 void selftests_run(void)
 {
 	struct selftest *test;
@@ -15,7 +39,7 @@ void selftests_run(void)
 	pr_notice("Configured tests will run now\n");
 
 	list_for_each_entry(test, &selftests, list)
-		err |= test->func();
+		err |= selftest_run(test);
 
 	if (err)
 		pr_err("Some selftests failed\n");
-- 
2.30.2



