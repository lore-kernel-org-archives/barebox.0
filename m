Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL6Ek-0005aH-Bn
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZL4N8-0007NI-CQ
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZL6EN-0004HB-DK
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:03:55 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 31 Jul 2015 11:03:47 +0200
Message-Id: <1438333432-10118-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
References: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/6] PPC/PCM030: remove nowhere used definitions
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/config.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/ppc/boards/pcm030/config.h b/arch/ppc/boards/pcm030/config.h
index 6e74964..1521811 100644
--- a/arch/ppc/boards/pcm030/config.h
+++ b/arch/ppc/boards/pcm030/config.h
@@ -27,16 +27,7 @@
 
 #define CFG_MPC5XXX_CLKIN	33333333 /* ... running at 33.333333MHz */
 
-#define CFG_GPS_PORT_CONFIG	0x00558c10 /* PSC6=UART, PSC3=UART ; Ether=100MBit with MD */
-
 #define CFG_HID0_INIT		HID0_ICE | HID0_ICFI
 #define CFG_HID0_FINAL		HID0_ICE
 
-
-#define CFG_BOOTMAPSZ		(8 << 20) /* Initial Memory map for Linux */
-
-#define OF_CPU			"PowerPC,5200@0"
-#define OF_TBCLK		CFG_MPC5XXX_CLKIN
-#define OF_SOC                  "soc5200@f0000000"
-
 #endif /* __CONFIG_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
