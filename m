Delivery-date: Tue, 05 Oct 2021 13:38:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXilw-0002GJ-KT
	for lore@lore.pengutronix.de; Tue, 05 Oct 2021 13:38:12 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXilv-0002ku-Ik
	for lore@pengutronix.de; Tue, 05 Oct 2021 13:38:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5N++Sb/32FyaQVGJ2M0fbdh6Gu4j4PmrzW8fScRxW0g=; b=dxghdkuSweJJYQ
	EXc3EG7jMcIcPyj8s+4APYUC8+SLDLTHXr6lP+xjgxNmft9KyZK0d2ghRz6hgaeQpUorQ3mhWXwvF
	OYAnxIwHu6ZtxMYBw0P+8ZuucRIo6I0dLlUZlbJE2lyd1D+NiFZKM3i6OWn/gmGGCA+i0F6cTqSa3
	U3GYQG//KP5aKhlGvKS8xPNhwZdUe3gR/JXErIJTOEPVSDZmYt/l9P+WYB6vrDjCTMh0Evpoczv4K
	timRsIM5371rR40/ovbAXKFDLUh5LXzwc/jEJH929Cph5uY8M3kiQwp9VhLI64fRxKQAh/wG5d+xB
	84+uFYBT5yX5dKTvU5MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXikC-00A9Qt-61; Tue, 05 Oct 2021 11:36:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXik6-00A9Pb-Rw
 for barebox@lists.infradead.org; Tue, 05 Oct 2021 11:36:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mXik2-00027V-5l; Tue, 05 Oct 2021 13:36:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mXik1-0000yN-Tc; Tue, 05 Oct 2021 13:36:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Oct 2021 13:36:13 +0200
Message-Id: <20211005113613.3609-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_043618_937615_66D513C9 
X-CRM114-Status: GOOD (  13.53  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: smc: disable -c (start cpu) test option for ARMv8
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This option is meant for debugging and was only tested on an ARMv7 CPU.
On ARMv8, the handshake times out and the code executing on the second
CPU invokes undefined behavior by modifying the stack base from a non-
naked function. This led so far to a warning, which went unnoticed, but
a follow-up commit will make it an error to use arm_setup_stack on
ARM64. Prepare for this by disabling -c usage on ARM64.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please reorder before "ARM: document arm_setup_stack() pitfalls"
---
 commands/smc.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/commands/smc.c b/commands/smc.c
index 2a53e1b64752..31430655829a 100644
--- a/commands/smc.c
+++ b/commands/smc.c
@@ -9,14 +9,15 @@
 
 #include <asm/psci.h>
 #include <asm/secure.h>
+#include <asm/barebox-arm.h>
 #include <linux/arm-smccc.h>
 
-#define STACK_SIZE 100
+#define HANDSHAKE_STACK_SIZE 100
 #define HANDSHAKE_MAGIC	0xBA12EB0C
 #define ERROR_MAGIC	0xDEADBEEF
 
 struct cpu_context {
-	unsigned long stack[STACK_SIZE];
+	unsigned long stack[HANDSHAKE_STACK_SIZE];
 	long handshake;
 };
 
@@ -35,12 +36,12 @@ static void noinline cpu_handshake(long *handshake)
 		;
 }
 
-static void __naked second_entry(unsigned long arg0)
+static void NAKED second_entry(unsigned long arg0)
 {
 	struct cpu_context *context = (void*)arg0;
 
 	arm_cpu_lowlevel_init();
-	arm_setup_stack((unsigned long)&context->stack[STACK_SIZE]);
+	arm_setup_stack((unsigned long)&context->stack[HANDSHAKE_STACK_SIZE]);
 	barrier();
 
 	cpu_handshake(&context->handshake);
@@ -110,6 +111,11 @@ static int do_smc(int argc, char *argv[])
 			printf("found psci version %ld.%ld\n", res.a0 >> 16, res.a0 & 0xffff);
 			break;
 		case 'c':
+			if (IS_ENABLED(CONFIG_CPU_64)) {
+				printf("CPU bootstrap test not supported for ARMv8\n");
+				return COMMAND_ERROR;
+			}
+
 			if (!context)
 				context = dma_alloc_coherent(sizeof(*context),
 							     DMA_ADDRESS_BROKEN);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

