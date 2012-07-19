Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1.mail.ru ([94.100.176.129])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srsgb-0004pz-SO
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:30:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 19 Jul 2012 19:30:13 +0400
Message-Id: <1342711817-866-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1342711817-866-1-git-send-email-shc_work@mail.ru>
References: <1342711817-866-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/6] i.MX: Removed unused declaration for imx_iim_get_mac
To: barebox@lists.infradead.org

Procedure is missing, so remove its declaration.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/iim.h |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
index b97c742..ef7b25d 100644
--- a/arch/arm/mach-imx/include/mach/iim.h
+++ b/arch/arm/mach-imx/include/mach/iim.h
@@ -48,7 +48,6 @@ struct imx_iim_platform_data {
 
 #ifdef CONFIG_IMX_IIM
 int imx_iim_read(unsigned int bank, int offset, void *buf, int count);
-int imx_iim_get_mac(unsigned char *mac);
 #else
 static inline int imx_iim_read(unsigned int bank, int offset, void *buf,
 		int count)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
