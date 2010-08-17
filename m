Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlH73-0004AZ-Bs
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 08:01:38 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Tue, 17 Aug 2010 11:01:21 +0300
Message-Id: <89d60716dad2ebc0ceb68446af11aff979fdc157.1282031791.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281966840.git.baruch@tkos.co.il>
References: <cover.1281966840.git.baruch@tkos.co.il>
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
Subject: [PATCH] iim/imx25: fix MAC and UID offsets
To: barebox@lists.infradead.org

IIM_UID and IIM_MAC_ADDR are now fixed addresses.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
This should be applied on top of the "imx: support for the IIM fusebox" series.

 arch/arm/mach-imx/imx25.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 760f740..e73f8ee 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -44,13 +44,13 @@ u64 imx_uid(void)
 	 * values in IIM are big-endian as per AN3682.
 	 */
 	for (i = 0; i < 8; i++)
-		uid |= (u64)readb(IMX_IIM_BASE + IIM_UID + i*4) << (i*8);
+		uid |= (u64)readb(IIM_UID + i*4) << (i*8);
 
 	return uid;
 }
 
 static struct imx_iim_platform_data imx25_iim_pdata = {
-	.mac_addr_base	= IMX_IIM_BASE + IIM_MAC_ADDR,
+	.mac_addr_base	= IIM_MAC_ADDR,
 };
 
 static struct device_d imx25_iim_dev = {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
