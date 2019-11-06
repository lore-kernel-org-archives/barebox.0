Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIRm-00009a-BU
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 10:21:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 11:21:44 +0100
Message-Id: <20191106102149.6858-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191106102149.6858-1-a.fatoum@pengutronix.de>
References: <20191106102149.6858-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/6] ARM: psci: translate PSCI error codes in smc command
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For more usability, translate CPU_ON error codes into the error
descriptions found in the PSCI Platform Design Document[1].

[1]: http://infocenter.arm.com/help/topic/com.arm.doc.den0022d/Power_State_Coordination_Interface_PDD_v1_1_DEN0022D.pdf

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci.c | 38 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index a976ddbb5c65..b02e83986af8 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -248,8 +248,41 @@ void second_entry(void)
 	while (1);
 }
 
+static const char *psci_xlate_str(long err)
+{
+       static char errno_string[sizeof "error 0x123456789ABCDEF0"];
+
+       switch(err)
+       {
+       case ARM_PSCI_RET_SUCCESS:
+	       return "Success";
+       case ARM_PSCI_RET_NOT_SUPPORTED:
+	       return "Operation not supported";
+       case ARM_PSCI_RET_INVAL:
+	       return "Invalid argument";
+       case ARM_PSCI_RET_DENIED:
+	       return "Operation not permitted";
+       case ARM_PSCI_RET_ALREADY_ON:
+	       return "CPU already on";
+       case ARM_PSCI_RET_ON_PENDING:
+	       return "CPU_ON in progress";
+       case ARM_PSCI_RET_INTERNAL_FAILURE:
+	       return "Internal failure";
+       case ARM_PSCI_RET_NOT_PRESENT:
+	       return "Trusted OS not present on core";
+       case ARM_PSCI_RET_DISABLED:
+	       return "CPU is disabled";
+       case ARM_PSCI_RET_INVALID_ADDRESS:
+	       return "Bad address";
+       }
+
+       sprintf(errno_string, "error 0x%lx", err);
+       return errno_string;
+}
+
 static int do_smc(int argc, char *argv[])
 {
+	long ret;
 	int opt;
 	struct arm_smccc_res res = {
 		.a0 = 0xdeadbee0,
@@ -271,7 +304,10 @@ static int do_smc(int argc, char *argv[])
 		case 'c':
 			arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_ON,
 				      1, (unsigned long)second_entry, 0, 0, 0, 0, 0, &res);
-			break;
+			ret = (long)res.a0;
+			printf("CPU_ON returns with: %s\n", psci_xlate_str(ret));
+			if (ret)
+				return COMMAND_ERROR;
 		}
 	}
 
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
