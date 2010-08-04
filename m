Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgYow-0007nB-NI
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 07:55:29 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  4 Aug 2010 10:55:09 +0300
Message-Id: <4c20bb0835da4ee29ec620cc895a64562b06ff2e.1280908400.git.baruch@tkos.co.il>
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
Subject: [PATCH] imx25: fix UID endianess
To: barebox@lists.infradead.org

Apparently, the UID is little-endian. Reverse endianess, and add a note in
comment.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/imx25.c |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index de70247..70494aa 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -35,8 +35,14 @@ u64 imx_uid(void)
 	u64 uid = 0;
 	int i;
 
+	/*
+	 * This code assumes that the UID is stored little-endian. The 
+	 * Freescale AN3682 document is silent about the endianess, but
+	 * experimentation shows that this is the case. All other multi-byte
+	 * values in IIM are big-endian as per AN3682.
+	 */
 	for (i = 0; i < 8; i++)
-		uid = (uid << 8) | readb(IMX_IIM_BASE + IIM_UID + i*4);
+		uid |= (u64)readb(IMX_IIM_BASE + IIM_UID + i*4) << (i*8);
 
 	return uid;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
