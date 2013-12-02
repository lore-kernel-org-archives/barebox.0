Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f48.google.com ([209.85.160.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnUJg-0006XF-JU
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 14:17:41 +0000
Received: by mail-pb0-f48.google.com with SMTP id md12so19017883pbc.35
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2013 06:17:14 -0800 (PST)
From: u74147@gmail.com
Date: Mon,  2 Dec 2013 06:17:00 -0800
Message-Id: <1385993820-32433-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] Makefile: add a target 'barebox.s'
To: barebox@lists.infradead.org

From: Du Huanpeng <u74147@gmail.com>

to prevent go into dead loop when invoking 'make barebox.s'
(lowercase 's')

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 5e17a49..7283552 100644
--- a/Makefile
+++ b/Makefile
@@ -723,7 +723,7 @@ endif
 	@echo " * Init Calls content" >> barebox.S
 	$(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
 else
-barebox.S: barebox FORCE
+barebox.S barebox.s: barebox FORCE
 	$(call if_changed,disasm)
 endif
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
