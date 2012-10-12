Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5.mail.ru ([94.100.176.132])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMZ4q-0006Hx-RX
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 06:50:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 12 Oct 2012 10:50:14 +0400
Message-Id: <1350024615-4260-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] defaultenv-2: Select CMD_ECHO & CMD_ECHO_E by default
To: barebox@lists.infradead.org

Command is used in the scripts and it should be compiled in.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/Kconfig |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 9210739..2783405 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -564,6 +564,8 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_GLOBAL
 	select CMD_AUTOMOUNT
 	select CMD_BASENAME
+	select CMD_ECHO
+	select CMD_ECHO_E
 	select FLEXIBLE_BOOTARGS
 	prompt "Generic environment template"
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
