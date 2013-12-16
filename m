Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsUEA-00049x-SI
 for barebox@lists.infradead.org; Mon, 16 Dec 2013 09:12:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6B601BF0ED
 for <barebox@lists.infradead.org>; Mon, 16 Dec 2013 09:13:07 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 16 Dec 2013 10:12:10 +0100
Message-Id: <1387185130-5325-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] pinctrl: single: select CONFIG_PINCTRL
To: barebox@lists.infradead.org

pinctrl_register is used.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/pinctrl/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 8257586..c6bb51c 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -24,6 +24,7 @@ config PINCTRL_IMX_IOMUX_V3
 	  This iomux controller is found on i.MX25,35,51,53,6.
 
 config PINCTRL_SINGLE
+	select PINCTRL
 	bool "pinctrl single"
 
 config PINCTRL_TEGRA20
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
