Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYqWA-00038b-5A
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 07:39:23 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 91704A00445
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 08:39:20 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Thu, 25 Feb 2016 08:36:49 +0100
Message-Id: <1456385809-46968-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1456385809-46968-1-git-send-email-t.remmet@phytec.de>
References: <1456385809-46968-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 3/3] ARM: am335x_defconfig: Enable the of_fixup_status
 command
To: barebox@lists.infradead.org

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/configs/am335x_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 7cf48b8..9196fb8 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -84,6 +84,7 @@ CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
