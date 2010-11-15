Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHv06-0001om-JA
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 09:05:29 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon, 15 Nov 2010 10:02:26 +0100
Message-Id: <1289811747-28742-3-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 2/3] doc: add missing commands
To: barebox@lists.infradead.org

This patch adds command entries for all commands available in barebox.
However, as there is no documentation for all of these commands, 'make
docs' will now spit out warnings.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |   63 ++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 63 insertions(+), 0 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 7263576..5ef7829 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -15,34 +15,97 @@ available in @a Barebox:
 
 \todo Sort this by functionality?
 
+@li @subpage _name
 @li @subpage addpart_command
+@li @subpage alternate
 @li @subpage bmp_command
 @li @subpage bootm_command
+@li @subpage bootu
+@li @subpage bootz
 @li @subpage cat_command
 @li @subpage cd_command
 @li @subpage clear_command
+@li @subpage clko
 @li @subpage cp_command
+@li @subpage cpufreq
+@li @subpage cpuinfo
 @li @subpage crc_command
+@li @subpage crc32
 @li @subpage delpart_command
 @li @subpage devinfo_command
 @li @subpage dfu_command
+@li @subpage dhcp
+@li @subpage dump_clocks
 @li @subpage echo_command
 @li @subpage edit_command
 @li @subpage erase_command
+@li @subpage ethact
+@li @subpage exec
+@li @subpage exit
 @li @subpage export_command
+@li @subpage false
+@li @subpage getopt
 @li @subpage gpio_get_value_command
 @li @subpage gpio_set_value_command
 @li @subpage gpio_direction_input_command
 @li @subpage gpio_direction_output_command
+@li @subpage go
+@li @subpage help
+@li @subpage host
+@li @subpage i2c_probe
+@li @subpage i2c_read
+@li @subpage i2c_write
+@li @subpage icache
+@li @subpage iminfo
+@li @subpage insmod
 @li @subpage linux16_command
 @li @subpage loadenv_command
+@li @subpage loadb
+@li @subpage loady
+@li @subpage loadxc
+@li @subpage login
 @li @subpage ls_command
+@li @subpage lsmod
+@li @subpage md
+@li @subpage memcmp
+@li @subpage meminfo
+@li @subpage memset
+@li @subpage menu
+@li @subpage mkdir
 @li @subpage mount_command
+@li @subpage mtest
+@li @subpage mw
+@li @subpage mycdev
+@li @subpage nand
+@li @subpage nand_boot_test
+@li @subpage nfs
+@li @subpage passwd
+@li @subpage ping
 @li @subpage printenv_command
 @li @subpage protect_command
+@li @subpage pwd
+@li @subpage readline
+@li @subpage reset
+@li @subpage rarpboot
+@li @subpage reginfo
+@li @subpage rm
+@li @subpage rmdir
 @li @subpage saveenv_command
 @li @subpage setenv_command
+@li @subpage sh
+@li @subpage sleep
+@li @subpage source
+@li @subpage test
+@li @subpage timeout
+@li @subpage true
 @li @subpage tftp_command
+@li @subpage ubiattach
+@li @subpage ubimkvol
+@li @subpage ubirmvol
+@li @subpage umount
+@li @subpage unlzo
 @li @subpage unprotect_command
+@li @subpage usb
+@li @subpage version
 
 */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
