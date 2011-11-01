Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-0000zx-9B
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:09:56 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCp-0005eI-UZ
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:31 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:39 +0100
Message-Id: <8ff9e5e6b12e934fbcb817052d0c0627e5ad74e8.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [PATCH 3/9] trivial: reorganize crc32 command doxygen output
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 Documentation/commands.dox |    3 +--
 commands/crc.c             |    2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 31183ec..a8bc83d 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -29,8 +29,7 @@ available in @a Barebox:
 @li @subpage cp_command
 @li @subpage cpufreq
 @li @subpage cpuinfo
-@li @subpage crc_command
-@li @subpage crc32
+@li @subpage crc32_command
 @li @subpage delpart_command
 @li @subpage devinfo_command
 @li @subpage dfu_command
diff --git a/commands/crc.c b/commands/crc.c
index 01fedd7..2c05967 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -143,7 +143,7 @@ static int do_crc(struct command *cmdtp, int argc, char *argv[])
 	return err;
 }
 
-BAREBOX_CMD_HELP_START(crc)
+BAREBOX_CMD_HELP_START(crc32)
 BAREBOX_CMD_HELP_USAGE("crc32 [OPTION] [AREA]\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a crc32 checksum of a memory area.\n")
 BAREBOX_CMD_HELP_OPT  ("-f <file>", "Use file instead of memory.\n")
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
