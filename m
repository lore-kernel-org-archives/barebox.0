Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SLDXe-0004YM-Gz
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 13:06:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0006VU-4h
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0003sI-3F
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Apr 2012 15:06:12 +0200
Message-Id: <1334927177-13912-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
References: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] netX: just a style fix
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-netx/generic.c |   18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 8810e6d..e4763c6 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -33,11 +33,11 @@ struct fw_header {
 
 static int xc_check_ptr(int xcno, unsigned long adr, unsigned int size)
 {
-	if( adr >= NETX_PA_XMAC(xcno) &&
+	if (adr >= NETX_PA_XMAC(xcno) &&
 	    adr + size < NETX_PA_XMAC(xcno) + XMAC_MEM_SIZE)
 		return 0;
 
-	if( adr >= NETX_PA_XPEC(xcno) &&
+	if (adr >= NETX_PA_XPEC(xcno) &&
 	    adr + size < NETX_PA_XPEC(xcno) + XPEC_MEM_SIZE)
 		return 0;
 
@@ -49,12 +49,11 @@ static int xc_patch(int xcno, void *patch, int count)
 {
 	unsigned int adr, val, *p = patch;
 
-/*	printf("%s: patch: %p size: %d\n",__FUNCTION__,patch,count); */
 	int i;
-	for(i=0; i<count; i++) {
+	for (i = 0; i < count; i++) {
 		adr = *p++;
 		val = *p++;
-		if( xc_check_ptr(xcno, adr, 1) < 0)
+		if (xc_check_ptr(xcno, adr, 1) < 0)
 			return -1;
 		*(volatile unsigned int *)adr = val;
 	}
@@ -66,7 +65,7 @@ static void memset32(void *s, int c, int n)
 	int i;
 	unsigned int *t = s;
 
-	for(i=0; i<(n>>2); i++)
+	for (i = 0; i < (n >> 2); i++)
 		*t++ = 0;
 }
 
@@ -75,11 +74,12 @@ static void memcpy32(void *trg, void *src, int size)
 	int i;
 	unsigned int *t = trg;
 	unsigned int *s = src;
-	for(i=0; i<(size>>2); i++)
+	for (i = 0; i < (size >> 2); i++)
 		*t++ = *s++;
 }
 
-int loadxc(int xcno) {
+int loadxc(int xcno)
+{
 	/* stop xmac / xpec */
 	XMAC_REG(xcno, XMAC_RPU_HOLD_PC) = RPU_HOLD_PC;
 	XMAC_REG(xcno, XMAC_TPU_HOLD_PC) = TPU_HOLD_PC;
@@ -92,7 +92,7 @@ int loadxc(int xcno) {
 	memset32((void*)NETX_PA_XMAC(xcno), 0, 0x800);
 
 	/* can't use barebox memcpy here, we need 32bit accesses */
-	if(xcno == 0) {
+	if (xcno == 0) {
 		memcpy32((void*)(NETX_PA_XMAC(xcno) + XMAC_RPU_PROGRAM_START), rpu_eth0, sizeof(rpu_eth0));
 		memcpy32((void*)(NETX_PA_XMAC(xcno) + XMAC_TPU_PROGRAM_START), tpu_eth0, sizeof(tpu_eth0));
 		memcpy32((void*)NETX_PA_XPEC(xcno) + XPEC_RAM_START, xpec_eth0_mac, sizeof(xpec_eth0_mac));
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
