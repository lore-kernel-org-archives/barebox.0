Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward9l.mail.yandex.net ([84.201.143.142])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZB3Ko-0003Pp-9i
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 15:57:04 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Fri,  3 Jul 2015 18:58:25 +0300
Message-Id: <1435939105-12189-4-git-send-email-alllecs@yandex.ru>
In-Reply-To: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
References: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
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
Subject: [PATCH 3/3] commands: add spd_decode command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

spd_decode command is used for decoding and printing
in human-readable format the information found
in memory module SPD EEPROMs.

There is the decode-dimms program from i2c-tools linux
package (see http://www.lm-sensors.org/wiki/I2CTools)
just for the same purpose.

Though spd_decode source code is based on decode-dimms
perl code there is a difference.

Timing Parameters section output format is slightly
differ from decode-dimms' format; to check the difference:

1. patch defaultenv-2-base/bin/init
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -1,5 +1,8 @@
 #!/bin/sh

+spd_decode /dev/spd
+reset
+
 export PATH=/env/bin

 global hostname

and compile sandbox barebox.

2. use this script to check decode-dimms vs spd_decode output:

NAME=$1
HEXNAME=${NAME}.hex
ADDR1=${NAME}_decode_perl
ADDR2=${NAME}_decode_c

if [ -z "$NAME" ]; then
        echo "Enter the name of the binary file"
        exit 1
fi

xxd ${NAME} ${HEXNAME}
${I2CTOOLS_PATH}/eeprom/decode-dimms -x ${HEXNAME} > ${ADDR1}
${BAREBOX_PATH}/barebox --image=spd=${NAME} | sed -n '1,13!p' > ${ADDR2}
diff -u -w ${ADDR1} ${ADDR2}

Sample script output fragment:

@@ -40,22 +18,11 @@
 Module Configuration Type                        No Parity
 Refresh Rate                                     Reduced (7.8 us) - Self Refresh
 Supported Burst Lengths                          4, 8
-Supported CAS Latencies (tCL)                    5T, 4T, 3T
+Supported CAS Latencies (tCL)                    5T
 tCL-tRCD-tRP-tRAS                                5-5-5-15 as DDR2-666
-                                                 4-4-4-12 as DDR2-533
-                                                 3-3-3-9 as DDR2-400
-Minimum Cycle Time                               3.00 ns at CAS 5 (tCK min)
-                                                 3.75 ns at CAS 4
-                                                 5.00 ns at CAS 3
-Maximum Access Time                              0.45 ns at CAS 5 (tAC)
-                                                 0.50 ns at CAS 4
-                                                 0.60 ns at CAS 3
-Maximum Cycle Time (tCK max)                     8.00 ns (DDR2-250)
-
----=== Timings at Standard Speeds ===---
-tCL-tRCD-tRP-tRAS as DDR2-666                    5-5-5-15
-tCL-tRCD-tRP-tRAS as DDR2-533                    4-4-4-12
-tCL-tRCD-tRP-tRAS as DDR2-400                    3-3-3-9
+Minimum Cycle Time                               3.0 ns at CAS 5
+Maximum Access Time                              0.45 ns at CAS 5
+Maximum Cycle Time (tCK max)                     8 ns

 ---=== Timing Parameters ===---
 Address/Command Setup Time Before Clock (tIS)    0.20 ns
@@ -70,14 +37,14 @@
 Minimum Write to Read CMD Delay (tWTR)           7.50 ns
 Minimum Read to Pre-charge CMD Delay (tRTP)      7.50 ns
 Minimum Active to Auto-refresh Delay (tRC)       60.00 ns
-Minimum Recovery Delay (tRFC)                    127.50 ns
+Minimum Recovery Delay (tRFC)                    127 ns
 Maximum DQS to DQ Skew (tDQSQ)                   0.24 ns
 Maximum Read Data Hold Skew (tQHS)               0.34 ns

 ---=== Manufacturing Information ===---
-Manufacturer                                     Undefined
+Manufacturer JEDEC ID                            ff ff ff ff ff ff ff ff
+Manufacturing Location Code                      0xff
 Part Number                                      GU331G0AJEPR612L4C
-Revision Code                                    0x4200
-
-
-Number of SDRAM DIMMs detected and decoded: 1
+Manufacturing Date                               200-W0
+Assembly Serial Number                           0x00000000
+add spd backed by file images/undefined_pc2-5300_ddr2

Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
---
 commands/Kconfig      |  7 ++++++
 commands/Makefile     |  1 +
 commands/spd_decode.c | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 71 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index bb6674e..5571902 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2102,6 +2102,13 @@ config CMD_STATE
 	depends on STATE
 	prompt "state"
 
+config CMD_SPD_DECODE
+	tristate
+	prompt "spd_decode"
+	select DDR_SPD
+	help
+	  decode spd eeprom
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 3698347..13dbde5 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -112,3 +112,4 @@ obj-$(CONFIG_CMD_NV)		+= nv.o
 obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
 obj-$(CONFIG_CMD_STATE)		+= state.o
 obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
+obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
diff --git a/commands/spd_decode.c b/commands/spd_decode.c
new file mode 100644
index 0000000..2bedcf0
--- /dev/null
+++ b/commands/spd_decode.c
@@ -0,0 +1,63 @@
+/*
+ * This program is decoding and printing SPD contents
+ * in human readable format
+ * As an argument program, you must specify the file name.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
+ * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
+ * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
+ * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
+ * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
+ * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
+ * THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ * Copyright (C) 2015 Alexander Smirnov <alllecs@yandex.ru>
+ */
+
+#include <common.h>
+#include <command.h>
+#include <libfile.h>
+#include <malloc.h>
+#include <ddr_spd.h>
+
+static int do_spd_decode(int argc, char *argv[])
+{
+	int ret;
+	size_t size;
+	void *data;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	ret = read_file_2(argv[1], &size, &data, 256);
+	if (ret && ret != -EFBIG) {
+		printf("unable to read %s: %s\n", argv[1], strerror(-ret));
+		return COMMAND_ERROR;
+	}
+
+	printf("Decoding EEPROM: %s\n\n", argv[1]);
+	ddr_spd_print(data);
+
+	free(data);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(spd_decode)
+BAREBOX_CMD_HELP_TEXT("Decode a SPD EEPROM and print contents in human readable form")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(spd_decode)
+	.cmd	= do_spd_decode,
+	BAREBOX_CMD_DESC("Decode SPD EEPROM")
+	BAREBOX_CMD_OPTS("FILE")
+	BAREBOX_CMD_HELP(cmd_spd_decode_help)
+BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
