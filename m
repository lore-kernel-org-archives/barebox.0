Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Kct-0001sD-O6
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 15:49:24 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P5Kcr-0001LR-Ox
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 17:49:21 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 17:47:44 +0200
References: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
	<1286808746-19456-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286808746-19456-5-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010111747.44641.jbe@pengutronix.de>
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
Subject: [PATCH 4/4] Adapt the defconfig for a full blown ChumbyOne support
To: barebox@lists.infradead.org

commit 69f4b4f403b1dbe17a95be340688dc77d166bb4e
Author: Juergen Beisert <jbe@pengutronix.de>
Date:   Mon Oct 11 16:42:59 2010 +0200

    Adapt the defconfig for a full blown ChumbyOne support
    
    Make the ChumbyOne use of the MCI framework.
    
    Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index c21c7cd..595b6a9 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -3,11 +3,12 @@ CONFIG_MACH_CHUMBY=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_BROKEN=y
+CONFIG_PROMPT="chumby:"
 CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/chumby_falconwing/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
@@ -23,3 +24,6 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 # CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_STM378X=y


-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
