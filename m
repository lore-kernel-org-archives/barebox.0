Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WlE6p-0005F9-Ha
 for barebox@lists.infradead.org; Fri, 16 May 2014 09:07:20 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Fri, 16 May 2014 11:06:49 +0200
Message-Id: <2464c6d2b00867800402cef77f347af2905bcd37.1400228358.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1400228358.git.silvio.fricke@gmail.com>
References: <cover.1400228358.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1400228358.git.silvio.fricke@gmail.com>
References: <cover.1400228358.git.silvio.fricke@gmail.com>
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
Subject: [PATCH] ARM: i.MX: edmqmx6: disable menu framework
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
 arch/arm/configs/datamodul-edm-qmx6_defconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/configs/datamodul-edm-qmx6_defconfig b/arch/arm/configs/datamodul-edm-qmx6_defconfig
index 30e5a53..5a4d7c4 100644
--- a/arch/arm/configs/datamodul-edm-qmx6_defconfig
+++ b/arch/arm/configs/datamodul-edm-qmx6_defconfig
@@ -17,7 +17,6 @@ CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/datamodul-edm-qmx6/env"
@@ -29,8 +28,6 @@ CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_LN=y
 CONFIG_CMD_TFTP=y
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
