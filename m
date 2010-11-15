Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHuy3-0001ow-H2
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 09:03:21 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon, 15 Nov 2010 10:02:25 +0100
Message-Id: <1289811747-28742-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1289811747-28742-1-git-send-email-r.schwebel@pengutronix.de>
References: <1289811747-28742-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 1/3] doc: sort list alphabetically
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 27eb511..7263576 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -34,7 +34,7 @@ available in @a Barebox:
 @li @subpage gpio_set_value_command
 @li @subpage gpio_direction_input_command
 @li @subpage gpio_direction_output_command
-@li @subpage tftp_command
+@li @subpage linux16_command
 @li @subpage loadenv_command
 @li @subpage ls_command
 @li @subpage mount_command
@@ -42,7 +42,7 @@ available in @a Barebox:
 @li @subpage protect_command
 @li @subpage saveenv_command
 @li @subpage setenv_command
+@li @subpage tftp_command
 @li @subpage unprotect_command
-@li @subpage linux16_command
 
 */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
