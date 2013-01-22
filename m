Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Txf3L-0006y8-Ak
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 14:42:19 +0000
Received: from mail170.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8A414DC170A
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2013 15:52:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 22 Jan 2013 15:40:38 +0100
Message-Id: <1358865645-22631-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358865645-22631-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130122143833.GM26329@game.jcrosoft.org>
 <1358865645-22631-1-git-send-email-plagnioj@jcrosoft.com>
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
