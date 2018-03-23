Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezVtM-000453-Ns
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 23:14:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ezVt8-0004K2-Mg
 for barebox@lists.infradead.org; Sat, 24 Mar 2018 00:14:22 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Sat, 24 Mar 2018 00:14:17 +0100
Message-Id: <20180323231422.21137-5-l.stach@pengutronix.de>
In-Reply-To: <20180323231422.21137-1-l.stach@pengutronix.de>
References: <20180323231422.21137-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 05/10] ARM: don't try to install secure monitor when
 entered in HYP mode
To: barebox@lists.infradead.org

When Barebox has been entered in HYP mode, the CPU is already switched
to the non-secure world and it's not possible for Barebox to install
it's own secure monitor.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/sm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index 5808dfd92bdc..71bb394c8540 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -184,6 +184,9 @@ int armv7_secure_monitor_install(void)
 		return -EINVAL;
 	}
 
+	if (__boot_cpu_mode == HYP_MODE)
+		return 0;
+
 	mmuon = get_cr() & CR_M;
 
 	vbar = get_vbar();
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
