Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X05PW-0006pr-I4
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:52:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 10:51:34 +0200
Message-Id: <1403772698-10330-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] commands: addpart: Improve description
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/partition.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index 946cf2d..51988df 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -166,16 +166,18 @@ static int do_addpart(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(addpart)
 
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n", "do not use the device name as prefix of the partition name")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Create partitions on device DEVICE using the partition description")
+BAREBOX_CMD_HELP_TEXT("from PART.")
+BAREBOX_CMD_HELP_TEXT("PART contains a partition description compatible to the Kernel mtd")
+BAREBOX_CMD_HELP_TEXT("commandline partition description:")
+BAREBOX_CMD_HELP_TEXT("SIZE1[@OFFSET1](NAME1)[RO],SIZE2[@OFFSET2](NAME2)[RO],...")
 BAREBOX_CMD_HELP_TEXT("The size and the offset can be given in decimal (without any prefix) and")
 BAREBOX_CMD_HELP_TEXT("in hex (prefixed with 0x). Both can have an optional suffix K, M or G.")
 BAREBOX_CMD_HELP_TEXT("The size of the last partition can be specified as '-' for the remaining")
-BAREBOX_CMD_HELP_TEXT("space on the device.  This format is the same as used by the Linux")
-BAREBOX_CMD_HELP_TEXT("kernel or cmdline mtd partitions.")
-BAREBOX_CMD_HELP_TEXT("")
-BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-n", "do not use the device name as prefix of the partition name")
-BAREBOX_CMD_HELP_OPT ("DEVICE",    "device being worked on")
-BAREBOX_CMD_HELP_OPT ("PART", "SIZE1[@OFFSET1](NAME1)[RO],SIZE2[@OFFSET2](NAME2)[RO],...")
+BAREBOX_CMD_HELP_TEXT("space on the device.")
 BAREBOX_CMD_HELP_END
 
 /**
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
