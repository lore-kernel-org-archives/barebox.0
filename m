Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm5xC-0008Un-OS
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:04:43 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9DC4EFFA88B
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:04:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 28 Nov 2013 19:06:44 +0100
Message-Id: <1385662007-13057-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] ARM: introduce SoC description
To: barebox@lists.infradead.org

This will allow to do have runtime SoC init level based on the current machine
running.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/machine.c           |  6 ++++++
 arch/arm/include/asm/mach/arch.h | 17 +++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm/cpu/machine.c b/arch/arm/cpu/machine.c
index ad0d8cb..55266f5 100644
--- a/arch/arm/cpu/machine.c
+++ b/arch/arm/cpu/machine.c
@@ -107,6 +107,12 @@ static void arm_mach_only_one_machine(void)
 			if (__ret)					\
 				break;					\
 		}							\
+									\
+		if (!machine_desc->soc_desc)				\
+			break;						\
+									\
+		if (machine_desc->soc_desc->level##_init)		\
+			__ret = machine_desc->soc_desc->level##_init();	\
 	} while(0);							\
 	__ret;								\
 })
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
index 91f1d2e..71dbb83 100644
--- a/arch/arm/include/asm/mach/arch.h
+++ b/arch/arm/include/asm/mach/arch.h
@@ -14,12 +14,29 @@
 #ifndef __ASM_MACH_ARCH_H__
 #define __ASM_MACH_ARCH_H__
 
+struct soc_desc {
+	const char		*name;		/* architecture name	*/
+
+	int			(*pure_init)(void);
+	int			(*core_init)(void);
+	int			(*postcore_init)(void);
+	int			(*console_init)(void);
+	int			(*postconsole_init)(void);
+	int			(*mem_init)(void);
+	int			(*postmmu_init)(void);
+	int			(*coredevice_init)(void);
+	int			(*device_init)(void);
+	int			(*late_init)(void);
+};
+
 struct machine_desc {
 	unsigned int		nr;		/* architecture number	*/
 	const char		*name;		/* architecture name	*/
 	const char *const	*dt_compat;	/* array of device tree
 						 * 'compatible' strings	*/
 
+	struct soc_desc		*soc_desc;
+
 	int			(*pure_init)(void);
 	int			(*core_init)(void);
 	int			(*postcore_init)(void);
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
