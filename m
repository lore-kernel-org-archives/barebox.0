Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SfTS6-0001XC-VQ
 for barebox@lists.infradead.org; Fri, 15 Jun 2012 10:08:27 +0000
Received: by wgbds1 with SMTP id ds1so1934652wgb.18
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2012 03:08:25 -0700 (PDT)
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 15 Jun 2012 12:08:14 +0200
Message-Id: <1339754895-5129-2-git-send-email-rnibali@gmail.com>
In-Reply-To: <1339754895-5129-1-git-send-email-rnibali@gmail.com>
References: <1339754895-5129-1-git-send-email-rnibali@gmail.com>
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
Subject: [PATCH 1/2] Remove superfluous SYSCTL_RSTA
To: barebox@lists.infradead.org

Signed-off-by: Roberto Nibali <rnibali@gmail.com>
---
 drivers/mci/imx-esdhc.h |    1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index e5cf884..d9be69e 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -39,7 +39,6 @@
 #define SYSCTL_PEREN		0x00000004
 #define SYSCTL_HCKEN		0x00000002
 #define SYSCTL_IPGEN		0x00000001
-#define SYSCTL_RSTA		0x01000000
 
 #define IRQSTAT			0x0002e030
 #define IRQSTAT_DMAE		(0x10000000)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
