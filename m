Delivery-date: Tue, 22 Jun 2021 10:27:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblD-00087w-9Z
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:27:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblC-00036n-8f
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:27:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esJK7dgLoCRM/HH06HQtukxB0tbZ/yJHfXgGvd3PErM=; b=UgeysWWrk7l2Ut
	XZD3QQqDoXvFXCNdy1w0tXihRHg6dIehpS21auG3bnJGTQHsH/5x7oMcpVdMCA1r1w3/RQHRQkPD5
	miPnImiEMg0ouNJh8d+/MiRBCdO4OdHL1eJGAQm4R12HMz4d/uMFEkrJDWQl+aYWt3n2UWTt+fBTo
	vaTKO70fZ74alhxqpHmTKJQhn+n7AJwjNVct2Dti2ULHarrouYO0+WPbLJn2zmvwW9+5Q0glz1qXL
	8jbqMfkbm2y0z8Kx0Au9wetgdrgkLIkoG14UFR3BDdRDbpuL0V1jxAi/hsyo3fUEkXylYaI3zCSUI
	3Hal9X7yMzFi50x7NTgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbjz-006E71-Qe; Tue, 22 Jun 2021 08:26:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbji-006E16-Oq
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:26:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0002ih-IY; Tue, 22 Jun 2021 10:26:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0005hx-2O; Tue, 22 Jun 2021 10:26:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jun 2021 10:26:15 +0200
Message-Id: <20210622082617.18011-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622082617.18011-1-a.fatoum@pengutronix.de>
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_012622_875513_61FEE731 
X-CRM114-Status: GOOD (  18.00  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 6/8] Documentation: devel: background-execution: update
 bthread docs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using bthreads throughout means we'll need finer grained locking across
the code base, which is too big a commitment for now. Previous commit
limited bthread_reschedule to only happen in command context, like
how it is for workqueues. Adjust the docs appropriately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/background-execution.rst | 34 +++++++-------------
 1 file changed, 11 insertions(+), 23 deletions(-)

diff --git a/Documentation/devel/background-execution.rst b/Documentation/devel/background-execution.rst
index fa4d23e6d271..d379593efb23 100644
--- a/Documentation/devel/background-execution.rst
+++ b/Documentation/devel/background-execution.rst
@@ -10,9 +10,9 @@ Pollers
 -------
 
 Pollers are a way in barebox to frequently execute code in the background.
-barebox is single-threaded, so a poller is not executed as a separate thread,
-but instead pollers are executed whenever ``is_timeout()`` is called.  This has
-a few implications. First of all, pollers are not executed when
+They don't run within their own threads, but instead they are executed
+whenever ``is_timeout()`` is called.
+This has a few implications. First of all, pollers are not executed when
 ``is_timeout()`` is not called. For this and other reasons, loops polling for
 hardware events should always use a timeout, which is best implemented with
 ``is_timeout()``. Another thing to remember is that pollers can be executed
@@ -74,31 +74,19 @@ code. Usually a work item is allocated by the poller and then freed either in
 bthreads
 --------
 
-barebox threads are co-operative green threads, which are scheduled whenever
-``is_timeout()`` is called.  This has a few implications. First of all,
-bthreads are not scheduled when ``is_timeout()`` is not called.
-For this and other reasons, loops polling for hardware events should always
-use a timeout, which is best implemented with ``is_timeout()``.
-Another thing to remember is that bthreads can be scheduled anywhere
-in the middle of other device accesses whenever ``is_timeout()`` is
-called. Care must be taken that a green thread doesn't access the very same device
-again itself. See "slices" below on how devices can safely be accessed from
-bthreads.
+barebox threads are co-operative green threads, which are scheduled for the
+same context as workqueues: Before the shell executes the next command.
+This means that bthreads can be used to implement workqueues, but not pollers.
 
 The bthread interface is declared in ``include/bthread.h``.
 ``bthread_create()`` is used to allocate a bthread control block along with
 its stack. ``bthread_wake()`` can be used to add it into the run queue.
 From this moment on and until the thread terminates, the thread will be
-switched to regularly as long as someone calls ``is_timeout()``.
-bthreads are allowed to call ``is_timeout()``, which will arrange for
-other threads to execute.
-
-barebox threads are planned to replace previous infrastructure, pollers
-and workqueues. Poller like behavior can be easily achieved by looping
-and yielding on every iteration. There's ``bthread_should_stop()``, which
-can be used as condition for continuing the loop. Workqueues could be
-replaced along the same line, but with mutexes protecting underlying device
-access.
+switched to regularly as long as the shell processes commands.
+
+bthreads are allowed to call ``is_timeout()``, which will eventually
+arrange for other threads to execute. This allowed implementing a Linux-like
+completion API on top, which can be useful for porting threaded kernel code.
 
 Slices
 ------
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

