Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Kkd-0002cJ-Jv
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:46:00 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:02 +0200
Message-Id: <1287765924-1856-11-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 10/32] doc: remove reference to non-existing documentation
To: barebox@lists.infradead.org

Silence this warning:
Documentation/users_manual.dox:10: Warning: unable to resolve reference to `partitions' for \ref command

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/users_manual.dox |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/Documentation/users_manual.dox b/Documentation/users_manual.dox
index cd2b99c..0a0a13e 100644
--- a/Documentation/users_manual.dox
+++ b/Documentation/users_manual.dox
@@ -9,7 +9,6 @@ work easier.
 @li @subpage shell_notes
 @li @subpage readline_parser
 @li @subpage command_reference
-@li @subpage partitions
 @li @subpage x86_bootloader
 @li @subpage net_netconsole
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
