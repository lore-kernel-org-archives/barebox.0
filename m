Delivery-date: Wed, 10 Mar 2021 09:49:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXK-00019y-Bl
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:49:46 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXI-00027a-4f
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:49:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c+ExWhLyDhZ5asxw3o8Fd1qNMsvDPDb9u5ZlOjsGGII=; b=c1ebJCM37iCs8TArQ5JVAH468
	LVLl2qmvmAhSoI06zT8B+kDHm48OHJ7m5lsoux9nZgK4oJh5D9eWmezehhWUGkpU6u/nI3JqBcJp2
	Y1KqFI3LKPdbx94Wu7uyFYvfh6kibc1tfsC0w1sk63IATRvMiqdUY5aIVUuUN8IF72YHONQcXRimk
	Kj86SG/QL4ctI4vBLLUU+3cA6p6+x6g/di6o3OipgfdBF0Gg+GwfRzHxsWj99AcGgwbIW/N5rLH1i
	a1FIY1et76uLtig2tBiRhgyiGkmti7QPIwR7cxcg9B9p+JzoBmsc0TCx9EM1us0BHwOa6PSw7qq4m
	8+K3kOSDw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuW7-006LQT-6G; Wed, 10 Mar 2021 08:48:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVh-006LJZ-3L
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001TW-2n; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001z9-Fk; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:45 +0100
Message-Id: <20210310084800.3584-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084805_390230_9A93FA1A 
X-CRM114-Status: GOOD (  15.60  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/16] common: introduce HAS_ARCH_SJLJ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

setjmp stores the registers comprising the execution context into a
jmp_buf and longjmp switches to that context and continues execution just
after the setjmp that allocated that jmp_buf.

setjmp/longjmp can have multiple uses:

  - Handle return from firmware that clobbers registers. This is why we
    already have a setjmp/longjmp ARM

  - Do exception handling[1]

  - Port over scripting language VMs that use sjlj for context switching

  - Implement stackless coroutines in C.

These coroutines would be stackless, because jumping to a setjmp down the
call stack means that the code there will clobber the stack below it.
On resuming the coroutine, it will run with a stack changed in the
interim leading to undefined behavior.

There are ways around that without resorting to custom Assembly:

  - Allocate a buffer on the scheduler's stack, so coroutine can
    grow into them
     -> Problem: exploits Undefined behavior

  - Yield first time on scheduler stack, then patch jmp_buf to point at
    another stack
     -> Problem: Code switching stacks should not itself use the stack

  - Construct a new jmp_buf with user-supplied return address and stack top:
    int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);

The latter could also be reused as a portable way of setting up a stack
in early init code.

We are going to implement green threads in later commits, so add a
symbol that can be selected to indicate architecture support for setjmp,
longjmp and the new initjmp.

[1]: https://www.spinics.net/lists/u-boot-v2/msg41322.html

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index edadcc9f4979..c0ff57bcdba4 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -28,6 +28,11 @@ config HAS_DMA
 	  Drivers that depend on a DMA implementation can depend on this
 	  config, so that you don't get a compilation error.
 
+config HAS_ARCH_SJLJ
+	bool
+	help
+	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
+
 config GENERIC_GPIO
 	bool
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

