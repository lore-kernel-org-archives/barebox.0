Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bnKIl-0007Mo-6y
 for barebox@lists.infradead.org; Fri, 23 Sep 2016 06:49:40 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Thu, 22 Sep 2016 19:23:17 +0200
Message-Id: <1474564997-8781-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH] Documentation: clarify "ioe" for netconsole
To: barebox@lists.infradead.org

ioe means "input", "output", "error", which are bits that can be set
individually.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/user/networking.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 8afb433..772a7dc 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -74,6 +74,7 @@ risks. It can be enabled using:
   netconsole.active=ioe
 
 This will send UDP packets to a PC with IP address 192.168.23.2 and port 6666.
+"ioe" means "input", "output", "error", and those bits can be set individually.
 
 The ``netconsole.active`` parameter consists of the fields "input" (i),
 "output" (o) and "error" (e); if the fields are set, the respective channel is
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
