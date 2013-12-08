Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vpikh-0005IO-9k
 for barebox@lists.infradead.org; Sun, 08 Dec 2013 18:06:47 +0000
Received: by mail-we0-f174.google.com with SMTP id q58so2504833wes.5
 for <barebox@lists.infradead.org>; Sun, 08 Dec 2013 10:06:23 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun,  8 Dec 2013 19:06:14 +0100
Message-Id: <1386525974-15352-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] scripts: add kernel-install-target to gitignore
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 scripts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 3cb3a0b..fddc04b 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -4,6 +4,7 @@ fix_size
 gen_netx_image
 kallsyms
 kernel-install
+kernel-install-target
 kwbimage
 kwboot
 mk-am35xx-spi-image
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
