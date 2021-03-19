Delivery-date: Fri, 19 Mar 2021 09:47:57 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNAnV-0007DT-0d
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 09:47:57 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNAnT-0007cI-NP
	for lore@pengutronix.de; Fri, 19 Mar 2021 09:47:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mv6Xg27pOCm4KkLRAZa8lFddtUeBzpfA5nACcOM4ADM=; b=cYgR1rAM+wZR7O2Io9bBgQJFpK
	QIujje9NjFtlpJirvu9td5Dnq7PQ9uhJvL7om57PgvDLmagh5bCv/BdGG7BkQoldzhg+v3rRST6hV
	zorn8+18JnvieBZeFGw4WhUB3s5/QmKYo/WMM4H6Q1I/NzU31il/rdJGsaFuEAF4xmXU9lqWcA5zU
	x5ZiR+S59BXamkxOtc85opUXs61JzQcWN4Wo3D1zt8/fHk+JIDR2rtVZfYZdXbLBgS9ho7Na9rdqO
	YQPHdaQKkSfUN9HAKCXyNFp07XR8t5S9z1haAbmzVbIlBR29u65mhhqw6Rr0FyBnTHzZspLDvfaT+
	/D5aUdfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNAmF-006tim-Bg; Fri, 19 Mar 2021 08:46:39 +0000
Received: from relay13.mail.gandi.net ([217.70.178.233])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNAm4-006ti0-Sk
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 08:46:31 +0000
Received: from geraet.fritz.box (unknown [83.135.80.242])
 (Authenticated sender: ahmad@a3f.at)
 by relay13.mail.gandi.net (Postfix) with ESMTPSA id B7EBA8000A;
 Fri, 19 Mar 2021 08:46:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 19 Mar 2021 09:46:21 +0100
Message-Id: <20210319084621.2476100-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_084629_247942_B61605B1 
X-CRM114-Status: GOOD (  11.80  )
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
Subject: [PATCH] bthread: disable ASan accounting for fibers on 32-bit sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For the sandbox architecture, we use __sanitizer_start_switch_fiber
and __sanitizer_finish_switch_fiber to tell ASan when we switch stacks.

If we don't, ASan complains that:

  ==2472828==WARNING: ASan is ignoring requested __asan_handle_no_return:
    stack top: 0xff9fc000; bottom 0xf3be8000; size: 0x0be14000 (199311360)
  False positive error reports may follow
  For details see https://github.com/google/sanitizers/issues/189

This works on 64-bit sandbox, but 32-bit sandbox currently crashes on
bthread -v:

==2469590==AddressSanitizer CHECK failed: ../../../../../src/libsanitizer/asan/asan_poisoning.cpp:37 "((AddrIsAlignedByGranularity(addr + size))) != (0)" (0x0, 0x0)
    #0 0xf7a4aa46 in AsanCheckFailed ../../../../../src/libsanitizer/asan/asan_rtl.cpp:73
    #1 0xf7a6b5cf in __sanitizer::CheckFailed(char const*, int, char const*, unsigned long long, unsigned long long) ../../../../../src/libsanitizer/sanitizer_common/sanitizer_termination.cpp:78
    #2 0xf7a4489f in __asan::PoisonShadow(unsigned long, unsigned long, unsigned char) ../../../../../src/libsanitizer/asan/asan_poisoning.cpp:37
    #3 0xf7a4c81b in __asan_handle_no_return ../../../../../src/libsanitizer/asan/asan_rtl.cpp:595
    #4 0x566a1ce7 in bthread_schedule /home/a3f/dl/barebox-stm32mp/common/bthread.c:178
    #5 0x566a1d54 in bthread_reschedule /home/a3f/dl/barebox-stm32mp/common/bthread.c:165
    #6 0x566a1d80 in bthread_trampoline /home/a3f/dl/barebox-stm32mp/common/bthread.c:56
    #7 0x567f5bfb in coroutine_bootstrap (/home/a3f/dl/build/barebox/sandbox/barebox+0x1bdbfb)
    #8 0x567f5c4b in coroutine_trampoline (/home/a3f/dl/build/barebox/sandbox/barebox+0x1bdc4b)
    #9 0xf7f7056f  (linux-gate.so.1+0x56f)
    #10 0xf7f70558  (linux-gate.so.1+0x558)
    #11 0x56892fff  (/home/a3f/dl/build/barebox/sandbox/barebox+0x25afff)

Just disable the special ASan accounting there until this is figured
out. bthreads still function there, but ASan may yield false positives
according to the message. This does not affect non-sandbox platforms.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
The original is sitting in in next, but I prefer a separate commit
to a squash to expand on why it's being disabled.
---
 arch/sandbox/Kconfig | 3 +++
 common/bthread.c     | 8 ++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index cef8e9fb7ab4..01078bca971f 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -43,6 +43,9 @@ config 64BIT
 	select ARCH_DMA_ADDR_T_64BIT
 	select PHYS_ADDR_T_64BIT
 
+config 32BIT
+	def_bool !64BIT
+
 config SANDBOX_LINUX_I386
 	bool "32-bit x86 barebox" if CC_HAS_LINUX_I386_SUPPORT
 
diff --git a/common/bthread.c b/common/bthread.c
index df8031266d55..80b486c99af7 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -15,6 +15,10 @@
 #include <asm/setjmp.h>
 #include <linux/overflow.h>
 
+#if defined CONFIG_ASAN && !defined CONFIG_32BIT
+#define HAVE_FIBER_SANITIZER
+#endif
+
 static struct bthread {
 	int (*threadfn)(void *);
 	union {
@@ -26,7 +30,7 @@ static struct bthread {
 	void *stack;
 	u32 stack_size;
 	struct list_head list;
-#ifdef CONFIG_ASAN
+#ifdef HAVE_FIBER_SANITIZER
 	void *fake_stack_save;
 #endif
 	u16 awake :1;
@@ -177,7 +181,7 @@ void bthread_schedule(struct bthread *to)
 	finish_switch_fiber(from);
 }
 
-#ifdef CONFIG_ASAN
+#ifdef HAVE_FIBER_SANITIZER
 
 void __sanitizer_start_switch_fiber(void **fake_stack_save, const void *bottom, size_t size);
 void __sanitizer_finish_switch_fiber(void *fake_stack_save, const void **bottom_old, size_t *size_old);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

