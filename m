Delivery-date: Mon, 25 Nov 2024 16:36:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb89-000GK5-2S
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:36:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb89-00058S-JY
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:36:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XkvwlkiDpYF6TZep+3C0lH4xxKVBLjet+p9DOEBThuc=; b=4JWYg11sUiXiB2msHv0icpqpbl
	PKs+Z8L1NRTHXPUpUuVg6KQcPWz7wc2RiZy2vGzguULGl7yv3fleedTYFp+CN7P1fSrsHKCwFe6in
	dR/ysxmXrNDSwCJwS5BU/2XHdghbT95oUmjy9ZCaZV+tXqz+Jr7QPbGogFXCtKIoMq2ZJBw14WeKS
	HUW/J0y8IYBwib3jxVBW4E2+Vn9pesR4HV+IR/F8j6Ua1yNF9X3z73R0exdEEKISsNCBiLwbjUbGa
	G1teHcxicUXhwll4TVvBchI/wIR6OQLVKc2+t6nDzA8MvTpsLf6KG/U9e5KmYSuFxRLsXNYriwUon
	dWpXgoXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7h-00000008W6a-33nE;
	Mon, 25 Nov 2024 15:35:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7e-00000008W0m-2gbg
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7V-0004Yt-8z; Mon, 25 Nov 2024 16:35:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0006VX-0t;
	Mon, 25 Nov 2024 16:35:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-006GiN-15;
	Mon, 25 Nov 2024 16:35:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:35:23 +0100
Message-Id: <20241125153523.1411849-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073534_676865_997FD1FE 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] bthread: fix use of ASAN fiber stack switch API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We misused the fiber API so far and ASAN complained about it.
Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bthread.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/common/bthread.c b/common/bthread.c
index 943f4c22b346..d8f1350f2e36 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -23,9 +23,6 @@ static struct bthread {
 	void *stack;
 	u32 stack_size;
 	struct list_head list;
-#ifdef CONFIG_ARCH_HAS_ASAN_FIBER_API
-	void *fake_stack_save;
-#endif
 	u8 awake :1;
 	u8 should_stop :1;
 	u8 should_clean :1;
@@ -41,21 +38,21 @@ struct bthread *current = &main_thread;
 /*
  * When using ASAN, it needs to be told when we switch stacks.
  */
-static void bthread_finish_switch_fiber(struct bthread *bthread)
+static void bthread_finish_switch_fiber(void *stack_save)
 {
-	finish_switch_fiber(bthread->fake_stack_save,
+	finish_switch_fiber(stack_save,
 			    &main_thread.stack, &main_thread.stack_size);
 }
 
-static void bthread_start_switch_fiber(struct bthread *to, bool terminate_old)
+static void bthread_start_switch_fiber(void **stack_save)
 {
-	start_switch_fiber(terminate_old ? &to->fake_stack_save : NULL,
-			   to->stack, to->stack_size);
+	start_switch_fiber(stack_save,
+			   current->stack, current->stack_size);
 }
 
 static void __noreturn bthread_trampoline(void)
 {
-	bthread_finish_switch_fiber(current);
+	bthread_finish_switch_fiber(NULL);
 
 	bthread_reschedule();
 
@@ -65,7 +62,7 @@ static void __noreturn bthread_trampoline(void)
 	current->has_stopped = true;
 
 	current = &main_thread;
-	bthread_start_switch_fiber(current, true);
+	bthread_start_switch_fiber(NULL);
 	longjmp(current->jmp_buf, 1);
 }
 
@@ -202,15 +199,15 @@ void bthread_reschedule(void)
 void bthread_schedule(struct bthread *to)
 {
 	struct bthread *from = current;
+	void *stack_save = NULL;
 	int ret;
 
-	bthread_start_switch_fiber(to, false);
-
 	ret = setjmp(from->jmp_buf);
 	if (ret == 0) {
 		current = to;
+		bthread_start_switch_fiber(&stack_save);
 		longjmp(to->jmp_buf, 1);
 	}
 
-	bthread_finish_switch_fiber(from);
+	bthread_finish_switch_fiber(stack_save);
 }
-- 
2.39.5



