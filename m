Delivery-date: Mon, 25 Nov 2024 16:36:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb85-000GJ5-35
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:36:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb85-00053A-DA
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:36:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V066FTWEZgqebdALwmWXHTSv7LJdWwm/dRfOaLq8p8s=; b=bL3wPQChclx+IWGziNLHMgvOnf
	pIuhFT+H3Oiv4lh7WqLEfxMKqfCfS1Ww+BGarndQHuQG/6phar11CrajEjPIOSmD8O3T8VAaSGZKp
	+Zwu4ptup2e1+jlRsF0pDWf3r4NZz7LhcpwhTWnfLohHtRThnOIC9VFYJOLBUgkTvBiUGbrUNXnq1
	mNRFUEsgFjtb8lJbO4sV4mvm55CkKO+mOk3dT2bF90i7L2yaIfhkA2Dcx3fBDHQ4tIopq3yc6+JxT
	Y+oqJ/r3+DEk12tc0C6f8Br/1WovASpc7V2/bBJauyCrT4u+BaMkv8hdY9p4scFou2LjRWC94AwUv
	PKKhxWew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7c-00000008Vyi-1dGn;
	Mon, 25 Nov 2024 15:35:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7W-00000008Vsm-21j1
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7V-0004Yq-8L; Mon, 25 Nov 2024 16:35:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0006VT-0j;
	Mon, 25 Nov 2024 16:35:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-006GiN-0w;
	Mon, 25 Nov 2024 16:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:35:22 +0100
Message-Id: <20241125153523.1411849-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073526_516249_435FFC28 
X-CRM114-Status: GOOD (  10.24  )
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
Subject: [PATCH 8/9] test: self: setjmp: make compatible with ASAN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ASAN currently flags the setjmp selftest. Use the newly exported fiber
API to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/setjmp.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/test/self/setjmp.c b/test/self/setjmp.c
index deac584d736d..0c7bc003361b 100644
--- a/test/self/setjmp.c
+++ b/test/self/setjmp.c
@@ -76,11 +76,16 @@ static void test_setjmp_loop(void)
 
 }
 
+static void *main_stack;
+static u32 main_stack_size;
+
 static void __noreturn initjmp_entry(void)
 {
 	volatile u32 arr[256];
 	int i;
 
+	finish_switch_fiber(NULL, &main_stack, &main_stack_size);
+
 	for (i = 0; i < ARRAY_SIZE(arr); i++)
 		writel(i, &arr[i]);
 
@@ -89,11 +94,13 @@ static void __noreturn initjmp_entry(void)
 	if (i == 0)
 		initjmp_entry();
 
+	start_switch_fiber(NULL, main_stack, main_stack_size);
 	longjmp(jbuf, 0x1337);
 }
 
 static void test_initjmp(void)
 {
+	void *fake_stack_save = NULL;
 	void *stack;
 	jmp_buf ijbuf;
 
@@ -114,11 +121,14 @@ static void test_initjmp(void)
 	case 0x1337:
 		break;
 	case 0:
+		start_switch_fiber(&fake_stack_save, stack, CONFIG_STACK_SIZE);
 		longjmp(ijbuf, 0x42);
 	default:
 		failed_tests++;
 	}
 
+	finish_switch_fiber(fake_stack_save, &main_stack, &main_stack_size);
+
 	free(stack);
 }
 
-- 
2.39.5



