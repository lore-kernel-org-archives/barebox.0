Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4C-0005S1-OG
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:41 +0000
Received: by mail-we0-f182.google.com with SMTP id t57so2376257wey.27
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:37 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:34 +0100
Message-Id: <1362871182-25726-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/9] defaultenv-2: don't load nonexistent file
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 defaultenv-2/base/bin/init | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index e4a7fee..6a658d1 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -13,7 +13,7 @@ global linux.bootargs.dyn.ip
 global linux.bootargs.dyn.root
 global editcmd=sedit
 
-/env/config-board
+[ -e /env/config-board ] && /env/config-board
 /env/config
 
 if [ -e /env/menu ]; then
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
