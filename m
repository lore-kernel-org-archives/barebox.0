Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL6Ek-0005aP-Bk
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZL4N8-0007NK-Gd
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZL6EN-0004Id-Gj
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:03:55 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 31 Jul 2015 11:03:49 +0200
Message-Id: <1438333432-10118-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/6] PPC/PCM030: enable USB/OHCI pin support
To: barebox@lists.infradead.org

This change in the port config register enables the USB/OHCI support and
makes USB work on the PCM030's regular development baseboard.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/pcm030.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index c1b0c3f..fe0f046 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -142,7 +142,7 @@ void initdram (int board_type)
 	/* Setup pin multiplexing */
 
 	/* PSC6=UART, PSC3=UART ; Ether=100MBit with MD */
-	*(vu_long *)MPC5XXX_GPS_PORT_CONFIG = 0x00558c10;
+	*(vu_long *)MPC5XXX_GPS_PORT_CONFIG = 0x00559c10;
 	*(vu_long *)MPC5XXX_CS_BURST = 0x00000000;
 	*(vu_long *)MPC5XXX_CS_DEADCYCLE = 0x33333333;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
