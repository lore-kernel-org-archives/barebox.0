Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0002cC-04
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:49 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:01 +0200
Message-Id: <1287765924-1856-10-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 09/32] doc: remove nonexisting command
To: barebox@lists.infradead.org

Silence this warning:

Documentation/commands.dox:24: Warning: unable to resolve reference to `rarp_command' for \ref command

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index a8850b1..5404483 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -15,7 +15,6 @@
 @li @subpage mount_command
 @li @subpage printenv_command
 @li @subpage protect_command
-@li @subpage rarp_command
 @li @subpage saveenv_command
 @li @subpage setenv_command
 @li @subpage sh_command
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
