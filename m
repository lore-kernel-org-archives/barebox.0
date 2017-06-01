Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGMXW-0000Ar-4c
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 09:37:12 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  1 Jun 2017 11:36:40 +0200
Message-Id: <1496309800-28632-3-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1496309800-28632-1-git-send-email-p.zabel@pengutronix.de>
References: <1496309800-28632-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH v2 3/3] commands: mount: mention file loop mounts in the help
 text
To: barebox@lists.infradead.org

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
No changes since v1.
---
 commands/mount.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/mount.c b/commands/mount.c
index f05e23b227..4cf1179b7b 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -117,6 +117,7 @@ BAREBOX_CMD_HELP_TEXT("With -a the mount command mounts all block devices whose
 BAREBOX_CMD_HELP_TEXT("can be detected automatically to /mnt/PARTNAME")
 BAREBOX_CMD_HELP_TEXT("If mountpoint is not given, a standard mountpoint of /mnt/DEVICE")
 BAREBOX_CMD_HELP_TEXT("is used. This directoy is created automatically if necessary.")
+BAREBOX_CMD_HELP_TEXT("With -o loop the mount command mounts a file instead of a device.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-a\t", "mount all blockdevices")
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
