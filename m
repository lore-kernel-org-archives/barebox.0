Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkY-0002cB-Kc
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:57 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:44:55 +0200
Message-Id: <1287765924-1856-4-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 03/32] Doxyfile: remove obsolete boards directory
To: barebox@lists.infradead.org

This directory does not exist any more, so we can remove it. Silences a
doxygen warning.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Doxyfile |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/Doxyfile b/Doxyfile
index 6c04afe..4fc9834 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -483,7 +483,6 @@ INPUT                  = Documentation \
                          drivers \
                          commands \
                          common \
-                         board \
                          lib \
                          scripts/setupmbr \
 			 net
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
