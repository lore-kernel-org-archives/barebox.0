Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0Xfd-0000fy-67
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 19:20:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1f0XfN-0000ll-GA
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 21:20:25 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 26 Mar 2018 21:20:21 +0200
Message-Id: <20180326192025.28809-6-l.stach@pengutronix.de>
In-Reply-To: <20180326192025.28809-1-l.stach@pengutronix.de>
References: <20180326192025.28809-1-l.stach@pengutronix.de>
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
Subject: [PATCH v3 06/10] ARM: default to starting kernel in HYP mode when
 entered in HYP
To: barebox@lists.infradead.org

When Barebox has been entered in HYP mode, there is a high chance that
the kernel is  intended to be started in HYP mode also. Get this
default into place.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/cpu/sm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index 71bb394c8540..3369fbb5ff1a 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -264,6 +264,9 @@ static int sm_init(void)
 				  bootm_secure_state_names,
 				  ARRAY_SIZE(bootm_secure_state_names));
 
+	if (__boot_cpu_mode == HYP_MODE)
+		bootm_secure_state = ARM_STATE_HYP;
+
 	return 0;
 }
 device_initcall(sm_init);
\ No newline at end of file
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
