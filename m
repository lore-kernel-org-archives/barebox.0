Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxEcQ-0003Nj-7L
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 10:28:46 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1CB67FFA7AF
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 11:38:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 11:27:13 +0100
Message-Id: <1358764040-10690-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/10] at91: dump mux command: make it depends on
 COMMAND_SUPPORT
To: barebox@lists.infradead.org

so in bootstrap we do not compile it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index fcba7fb..0fd9122 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -479,8 +479,12 @@ config CALAO_MB_QIL_A9260
 	bool "MB-QIL A9260 Motherboard Board support"
 	depends on MACH_QIL_A9260
 
+if COMMAND_SUPPORT
+
 config CMD_AT91MUX
 	bool "at91mux dump command"
 	default y
 
 endif
+
+endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
