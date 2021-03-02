Delivery-date: Tue, 02 Mar 2021 09:57:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0qM-0005oy-PW
	for lore@lore.pengutronix.de; Tue, 02 Mar 2021 09:57:26 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0qL-0002sb-OH
	for lore@pengutronix.de; Tue, 02 Mar 2021 09:57:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A7aUVdxFjv6lUPwLQSO/TWnww4/NIQTGUF3x98Svub0=; b=NUIMSGK0ZEN9q5q0SKfZF4npJ
	IM0XZT8YC6HBLpnDEwAl8pB4qjm9ztxfz//X23zszybNJDvJofZmtomUNLnq9T8S6I2QYC/xGVp4S
	L2ot2OUtUjb/ROjIDI8nuiGuyAVs+KgKGUtWCkeF7zO4gKrdp7bULonj6UfdvT/piQ803z9FWwkT0
	e3mF84Gmp8i2STMIxXHkaWY1j5o8IXx3ySgxgfXkNW8dPkme+kLSw84jgFQu6KMaHDDTycpaYp80A
	6K55r4lseWEZImQeMyZ/VM9QIpyV5GzSJUt6T6Xt8aiwanDpw5rJ4p9AMPTlVB+xMkh31Rzpa0Xhb
	YIf8ScB2Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH0p8-0005VT-LA; Tue, 02 Mar 2021 08:56:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH0p5-0005Uw-Nd
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 08:56:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lH0p4-0002gm-Ke; Tue, 02 Mar 2021 09:56:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lH0p3-0000Fb-Mz; Tue, 02 Mar 2021 09:56:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  2 Mar 2021 09:56:01 +0100
Message-Id: <20210302085601.858-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-3-a.fatoum@pengutronix.de>
References: <20210301110106.3764-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_035607_778383_ACCDBEC1 
X-CRM114-Status: GOOD (  11.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! common: introduce bthreads,
 co-operative barebox threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix copy-paste left-overs and an instance of Denglish.

Suggested-by: Peter Korsgaard <peter@korsgaard.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/background-execution.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devel/background-execution.rst b/Documentation/devel/background-execution.rst
index 2fd70934d0b2..b9daaa135ccb 100644
--- a/Documentation/devel/background-execution.rst
+++ b/Documentation/devel/background-execution.rst
@@ -88,15 +88,15 @@ bthreads.
 Unlike pollers, which bthreads are replacing, bthreads are allowed
 access to virtual filesystem. The macro ``assert_command_context()`` is added
 to entry points of the VFS to have the thread yield until it may execute in
-in the correct context. The poller interface is declared in
+in the correct context. The bthread interface is declared in
 ``include/bthread.h``.  ``bthread_create()`` is used to allocate a bthread
-control block along with its stack. ``bthread_wake()`` can be used to hang
+control block along with its stack. ``bthread_wake()`` can be used to add
 it into the run queue. From this moment on and until the thread terminates,
 the thread will be switched to regularly as long as someone calls
 ``is_timeout()``. bthreads are allowed to call ``is_timeout()``, which will
 arrange for other threads to execute.
 
-barebox threads replace previous the previous pollers and workqueues. Poller
+barebox threads replace the previous infrastructure, pollers and workqueues. Poller
 like behavior can be easily achieved by looping and yielding on every
 iteration. There's ``bthread_should_stop()``, which can be used as condition
 for continuing the loop. Workqueues can be replaced along the same line. On
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

