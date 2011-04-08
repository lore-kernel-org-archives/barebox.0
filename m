Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q873G-0006YL-4t
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 08:28:23 +0000
From: Thomas Mayer <thomas.mayer@telemotive.de>
Message-ID: <1302251289-3484-1-git-send-email-thomas.mayer@telemotive.de>
Date: Fri, 8 Apr 2011 10:28:09 +0200
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
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 127bfb4..03960a4 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -207,6 +207,8 @@ static int f3s_devices_init(void)
 	imx35_add_fec(&fec_info);
 	register_device(&smc911x_dev);
 
+	imx35_add_mmc0(NULL);
+
 	register_device(&sdram_dev);
 	imx35_add_fb(&ipu_fb_data);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
