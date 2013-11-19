Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22c.google.com ([2a00:1450:4008:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViZo3-00039D-VM
 for barebox@lists.infradead.org; Tue, 19 Nov 2013 01:08:44 +0000
Received: by mail-bk0-f44.google.com with SMTP id d7so2807817bkh.17
 for <barebox@lists.infradead.org>; Mon, 18 Nov 2013 17:08:20 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 19 Nov 2013 02:08:12 +0100
Message-Id: <1384823293-11830-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/2] scripts: fix kernel-install-target config
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
This confused me a little bit... commit id
61cf2b51bccbf18c3df505a77db759454e8574ca looks different than the commit
on barebox mailinglist [1]. What's happend there? :-)

[1] http://lists.infradead.org/pipermail/barebox/2013-September/016457.html

 scripts/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index ce3fd53..2f78c4b 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -25,7 +25,7 @@ subdir-$(CONFIG_X86)		+= setupmbr
 subdir-$(CONFIG_DTC)		+= dtc
 
 targetprogs-$(CONFIG_BAREBOXENV_TARGET) += bareboxenv-target
-targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += bareboxenv-target
+targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += kernel-install-target
 
 # Let clean descend into subdirs
 subdir-	+= basic kconfig setupmbr
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
