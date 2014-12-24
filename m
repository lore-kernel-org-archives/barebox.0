Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3umk-0004CB-FS
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 22:52:07 +0000
Received: by mail-la0-f53.google.com with SMTP id gm9so7622696lab.12
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 14:51:44 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 25 Dec 2014 01:53:43 +0300
Message-Id: <1419461623-16349-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1419461623-16349-1-git-send-email-antonynpavlov@gmail.com>
References: <1419461623-16349-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] ARM: rpi_defconfig: enable loady command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/rpi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 05c0136..c6b2c50 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -31,6 +31,7 @@ CONFIG_CMD_LN=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MM=y
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
