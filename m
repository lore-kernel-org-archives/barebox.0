Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIdFC-0007zR-CP
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:42:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZIbNM-0001us-Cb
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:42:52 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZIdEp-0006Wv-J8
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 15:42:11 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 24 Jul 2015 15:42:02 +0200
Message-Id: <1437745326-8994-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1437745326-8994-1-git-send-email-jbe@pengutronix.de>
References: <1437745326-8994-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/5] PPC/MPC52xx: add some useful GPIO definitions
To: barebox@lists.infradead.org

When using GPIOs its useful to define them generically.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index f2cae90..a2129a1 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -192,8 +192,10 @@
 
 /* GPIO pins */
 #define GPIO_WKUP_7		0x80000000UL
+#define GPIO_WKUP_6		0x40000000UL
 #define GPIO_PSC6_0		0x10000000UL
 #define GPIO_PSC3_9		0x04000000UL
+#define GPIO_PSC2_4		0x02000000UL
 #define GPIO_PSC1_4		0x01000000UL
 
 /* PCI registers */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
