Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3OUs-0001RG-Vl
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 16:09:24 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue,  3 Apr 2018 18:08:54 +0200
Message-Id: <20180403160854.5654-1-linux@rempel-privat.de>
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
Subject: [PATCH] Documentation: framebuffer: update documentation to current
 state
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Framebuffer console support was added in 2015.

Reported-by: TobSnyder at #barebox irc
Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 Documentation/user/framebuffer.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/framebuffer.rst b/Documentation/user/framebuffer.rst
index 7d004fa1c..d033ff08f 100644
--- a/Documentation/user/framebuffer.rst
+++ b/Documentation/user/framebuffer.rst
@@ -1,9 +1,10 @@
 Framebuffer support
 ===================
 
-barebox has support for framebuffer devices. Currently there is no console support
-for framebuffers, so framebuffer usage is limited to splash screens only. barebox
-supports BMP and PNG graphics using the :ref:`command_splash` command. barebox
+Framebuffer spash screen
+------------------------
+
+barebox supports BMP and PNG graphics using the :ref:`command_splash` command. barebox
 currently has no support for backlights, so unless there is a board specific enable
 hook for enabling a display it must be done manually with a script. Since barebox
 has nothing useful to show on the framebuffer it doesn't enable it during startup.
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
