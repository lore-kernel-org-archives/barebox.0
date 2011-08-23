Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gateway.hbm.com ([213.157.30.2] helo=hbmntx5.hbm.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qvq7c-0007zG-Ae
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 12:30:25 +0000
Content-Class: urn:content-classes:message
From: "Tim Sander" <tim.sander@hbm.com>
Date: Tue, 23 Aug 2011 14:30:01 +0200
MIME-Version: 1.0
Message-ID: <201108231430.01322.tim.sander@hbm.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] pcm memory fix
To: barebox@lists.infradead.org

This patch is inspired by ram_timing.patch from OSELAS.BSP-Phytec-phyCORE-i.MX35-PD10.1.2. 
PCM043 1315.6 does not boot without it.

Signed-off-by: Tim Sander <tim.sander@hbm.com>

    change refresh cycle

diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index eff96f9..bbe586b 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -146,7 +146,7 @@ void __bare_init __naked board_init_lowlevel(void)
        writel(0x00000304, ESDMISC); /* was 0x00000004 */
 
        /* set timing paramters */
-       writel(0x00255417, ESDCFG0);
+       writel(0x0025541F, ESDCFG0);
        /* select Precharge-All mode */
        writel(0x92220000, ESDCTL0);
        /* Precharge-All */

Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germany | www.hbm.com 

Registered as GmbH (German limited liability corporation) in the commercial register at the local court of Darmstadt, HRB 1147  
Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the board: James Charles Webster

Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister des Amtsgerichts Darmstadt unter HRB 1147 
Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst | Aufsichtsratsvorsitzender: James Charles Webster

The information in this email is confidential. It is intended solely for the addressee. If you are not the intended recipient, please let me know and delete this email.

Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich fur den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
