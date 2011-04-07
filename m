Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q7k5t-00057i-Fv
	for barebox@lists.infradead.org; Thu, 07 Apr 2011 07:57:34 +0000
From: Thomas Mayer <thomas.mayer@telemotive.de>
Message-ID: <1302163039-29861-1-git-send-email-thomas.mayer@telemotive.de>
Date: Thu, 7 Apr 2011 09:57:19 +0200
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
Subject: [PATCH 1/1] freescale-mx35-3-stack: Add mmc0
To: barebox@lists.infradead.org


Signed-off-by: Thomas Mayer <thomas.mayer@telemotive.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 127bfb4..a4cbbe1 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -199,6 +199,10 @@ static int f3s_devices_init(void)
 		break;
 	}
 
+#ifdef CONFIG_MCI_IMX_ESDHC
+	imx35_add_mmc0(NULL);
+#endif
+
 	set_silicon_rev(imx_silicon_revision());
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
