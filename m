Delivery-date: Mon, 25 Nov 2024 16:36:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb85-000GIu-22
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:36:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb85-00053D-AK
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:36:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SWiY0J+yE6kkykxXioKk7s3/ztPgIJ9Ti3ofEVzIoe4=; b=2CU7RQm1PARlzrHs0ZZ4dUiG+g
	jYwX1ymQSWEymKNUItSi+i5M2GJjIK8+fmQhnRAr8B3HfwCY2YywZjTMZlbQnw6a92utp1TvhpMqs
	65H8cGK8cHM5Xn4XI8zQ7grZrPTdmDp/dUk+nbY+jyMaGb2cMO44e0Y9UdA65fHRbUMGuOW+EiDo5
	bH/jYdhhdYgRraKWHOvnafhlnJLPpzlItvU1LJbeLR99Y4BqGKRYFWJr/sHVq2wRLPIGb4n7sOGZU
	lS4xF8oj/qM5lFRkgmuj+hUc6nt8yZ/9ksd21eeZwRWJXi2dxpq3hYUi9KtoNNoaDQvYamJQb8H9f
	R0XfyfrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7d-00000008VzN-0H57;
	Mon, 25 Nov 2024 15:35:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7W-00000008Vsk-1fnl
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7V-0004YH-2O; Mon, 25 Nov 2024 16:35:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0006VF-09;
	Mon, 25 Nov 2024 16:35:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-006GiN-0L;
	Mon, 25 Nov 2024 16:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:35:18 +0100
Message-Id: <20241125153523.1411849-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073526_432053_46D01955 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 4/9] sandbox: setjmp: mark C version as __weak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In a later commit, we will start allowing overriding
setjmp/longjmp/initjmp by arch-specific implementations.

Prepare this by marking the existing implementation __weak.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/setjmp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/os/setjmp.c b/arch/sandbox/os/setjmp.c
index 7f686b0fc6e9..cbf1182ed591 100644
--- a/arch/sandbox/os/setjmp.c
+++ b/arch/sandbox/os/setjmp.c
@@ -78,7 +78,7 @@ static void coroutine_trampoline(int signal)
 	coroutine_bootstrap(tr_state.entry);
 }
 
-int initjmp(_jmp_buf jmp, void (*func)(void), void *stack_top)
+int __attribute__((weak)) initjmp(_jmp_buf jmp, void (*func)(void), void *stack_top)
 {
 	struct sigaction sa;
 	struct sigaction osa;
@@ -169,12 +169,12 @@ int initjmp(_jmp_buf jmp, void (*func)(void), void *stack_top)
 	return 0;
 }
 
-int  __attribute__((returns_twice)) barebox_setjmp(_jmp_buf jmp)
+int __attribute__((weak,returns_twice)) barebox_setjmp(_jmp_buf jmp)
 {
 	return sigsetjmp(jmp, 0);
 }
 
-void __attribute((noreturn)) barebox_longjmp(_jmp_buf jmp, int ret)
+void __attribute__((weak,noreturn)) barebox_longjmp(_jmp_buf jmp, int ret)
 {
 	siglongjmp(jmp, ret);
 }
-- 
2.39.5



