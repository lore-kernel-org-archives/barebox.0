Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward6l.mail.yandex.net ([2a02:6b8:0:1819::6])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAaBA-00032w-T5
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 08:49:09 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Thu,  2 Jul 2015 11:50:17 +0300
Message-Id: <1435827017-1999-4-git-send-email-alllecs@yandex.ru>
In-Reply-To: <1435827017-1999-1-git-send-email-alllecs@yandex.ru>
References: <1435827017-1999-1-git-send-email-alllecs@yandex.ru>
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
Subject: [RFC V4 3/3] add decode command (SPD EEPROM data decoder)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

decode-dimms perl script is used as prototype
(see https://github.com/groeck/i2c-tools/blob/master/eeprom/decode-dimms).

Here is a sample decode output:

barebox@barebox sandbox:/ decode env/crucial_pc2-6400_ddr2
Decoding EEPROM: env/crucial_pc2-6400_ddr2

---=== SPD EEPROM Information ===---
EEPROM Checksum of bytes 0-62                      OK (0xCA)
Total number of bytes in EEPROM                    256
Fundamental Memory type                            DDR2 SDRAM
SPD Revision                                       1.3

---=== Memory Characteristics ===---
Maximum module speed                               800 MHz (PC2-6400)
Size                                               1024 MB
Banks x Rows x Columns x Bits                      8 x 14 x 10 x 64
Ranks                                              1
SDRAM Device Width                                 8 bits
Module Height                                      30.0 mm
Module Type                                        SO-DIMM (67.6 mm)
DRAM Package                                       Planar
Voltage Interface Level                            SSTL 1.8V
Module Configuration Type                          No Parity
Refresh Rate                                       Reduced (7.8 us) - Self Refresh
Supported Burst Lengths                            4, 8
Supported CAS Latencies (tCL)                      6T
tCL-tRCD-tRP-tRAS                                  6-6-6-18 as DDR2-800
Minimum Cycle Time                                 2.5 ns at CAS 6
Maximum Access Time                                0.40 ns at CAS 6
Maximum Cycle Time (tCK max)                       8 ns

---=== Timing Parameters ===---
Address/Command Setup Time Before Clock (tIS)      0.17 ns
Address/Command Hold Time After Clock (tIH)        0.25 ns
Data Input Setup Time Before Strobe (tDS)          0.05 ns
Data Input Hold Time After Strobe (tDH)            0.12 ns
Minimum Row Precharge Delay (tRP)                  15.0 ns
Minimum Row Active to Row Active Delay (tRRD)      7.5 ns
Minimum RAS# to CAS# Delay (tRCD)                  15.0 ns
Minimum RAS# Pulse Width (tRAS)                    45 ns
Write Recovery Time (tWR)                          15.0 ns
Minimum Write to Read CMD Delay (tWTR)             7.5 ns
Minimum Read to Pre-charge CMD Delay (tRTP)        7.5 ns
Minimum Active to Auto-refresh Delay (tRC)         60 ns
Minimum Recovery Delay (tRFC)                      127 ns
Maximum DQS to DQ Skew (tDQSQ)                     0.20 ns
Maximum Read Data Hold Skew (tQHS)                 0.30 ns

---=== Manufacturing Information ===---
Manufacturer JEDEC ID                              7f 7f 7f 7f 7f 9b 00 00
Part Number                                        CT12864AC800.M8FM8
Manufacturing Date                                 2014-W24
Assembly Serial Number                             0x00000000

TODOs:

  * Timing Parameters section output format is slightly
    differ from decode-dimms' format;
  * supports only DDR2 SPD EEPROM.

Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
---
 commands/Kconfig  |  7 +++++++
 commands/Makefile |  1 +
 commands/decode.c | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 71 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index bb6674e..9230873 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2102,6 +2102,13 @@ config CMD_STATE
 	depends on STATE
 	prompt "state"
 
+config CMD_DECODE
+	tristate
+	prompt "decode"
+	select DDR_SPD
+	help
+	  decode spd eeprom
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 3698347..71cd877 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -112,3 +112,4 @@ obj-$(CONFIG_CMD_NV)		+= nv.o
 obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
 obj-$(CONFIG_CMD_STATE)		+= state.o
 obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
+obj-$(CONFIG_CMD_DECODE)	+= decode.o
diff --git a/commands/decode.c b/commands/decode.c
new file mode 100644
index 0000000..4fc9c99
--- /dev/null
+++ b/commands/decode.c
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
+ *
+ * Originally from https://github.com/groeck/i2c-tools/blob/master/eeprom/decode-dimms
+ */
+
+#include <common.h>
+#include <command.h>
+#include <libfile.h>
+#include <malloc.h>
+#include <ddr_spd.h>
+
+static int do_decode(int argc, char *argv[])
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
+BAREBOX_CMD_HELP_START(decode)
+BAREBOX_CMD_HELP_TEXT("Not enough or more than one argument to continue.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(decode)
+	.cmd	= do_decode,
+	BAREBOX_CMD_HELP(cmd_decode_help)
+BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
