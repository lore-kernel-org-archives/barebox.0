Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3LH-0003ia-6m
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:27:48 +0000
Received: by lfdo63 with SMTP id o63so19710732lfd.2
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 23:27:25 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id bn6sm281576lbc.10.2015.11.09.23.27.24
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Nov 2015 23:27:24 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Nov 2015 10:27:13 +0300
Message-Id: <1447140436-29099-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
References: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] MIPS: traps.c: separate registers print stuff to
 show_regs()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/traps.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/mips/lib/traps.c b/arch/mips/lib/traps.c
index 0a5914e..d69697d 100644
--- a/arch/mips/lib/traps.c
+++ b/arch/mips/lib/traps.c
@@ -96,13 +96,10 @@ static char *get_exc_name(u32 cause)
 	return "unknown exception";
 }
 
-void barebox_exc_handler(const struct pt_regs *regs)
+static void show_regs(const struct pt_regs *regs)
 {
-	const int field = 2 * sizeof(unsigned long);
-	unsigned int cause = regs->cp0_cause;
 	int i;
-
-	printf("\nOoops, %s!\n\n", get_exc_name(cause));
+	const int field = 2 * sizeof(unsigned long);
 
 	/*
 	 * Saved main processor registers
@@ -131,9 +128,17 @@ void barebox_exc_handler(const struct pt_regs *regs)
 	printf("epc   : %0*lx\n", field, regs->cp0_epc);
 	printf("ra    : %0*lx\n", field, regs->regs[31]);
 
-	printf("Status: %08x\n", (uint32_t) regs->cp0_status);
-	printf("Cause : %08x\n", cause);
+	printf("Status: %08x\n", (uint32_t)regs->cp0_status);
+	printf("Cause : %08x\n", (uint32_t)regs->cp0_cause);
 	printf("Config: %08x\n\n", read_c0_config());
+}
+
+void barebox_exc_handler(const struct pt_regs *regs)
+{
+	unsigned int cause = regs->cp0_cause;
+
+	printf("\nOoops, %s!\n\n", get_exc_name(cause));
+	show_regs(regs);
 
 	hang();
 }
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
