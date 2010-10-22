Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Kkd-0002cI-Lr
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:46:01 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:04 +0200
Message-Id: <1287765924-1856-13-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 12/32] doc: add missing quoting
To: barebox@lists.infradead.org

Silence this warning:

/home/rsc/git/barebox/commands/partition.c:177: Warning: Found unknown command `\offset1'
/home/rsc/git/barebox/commands/partition.c:177: Warning: Found unknown command `\offset2'

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/partition.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index 7794925..a1edcf6 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -176,7 +176,7 @@ BAREBOX_CMD_END
  * Adds a partition description to a device. The partition description has the
  * form
  *
- * size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...
+ * size1[\@offset1](name1)[ro],size2[\@offset2](name2)[ro],...
  *
  * \<device> is the device name under. Size and offset can be given in decimal
  * or - if prefixed with 0x - in hex. Both can have an optional suffix K,M,G.
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
