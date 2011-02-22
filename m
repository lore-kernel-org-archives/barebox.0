Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrzfE-0003Zc-Ch
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 21:20:57 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 22 Feb 2011 22:20:49 +0100
Message-Id: <1298409650-28408-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1298409650-28408-1-git-send-email-jbe@pengutronix.de>
References: <1298409650-28408-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] mini2440: Add more info about possible SDRAM and flash
	devices
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

It seems there are various combinations of the mini2440 in the wild. Not only
the SDRAM differ, but more important the NAND also differs.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/mini2440.c |   54 ++++++++++++++++++++++++----------
 1 files changed, 38 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index ab309a0..6842a79 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -316,23 +316,45 @@ This system is based on a Samsung S3C2440 CPU. The card is shipped with:
 - 12 MHz crystal reference
 - 32.768 kHz crystal reference
 - SDRAM 64 MiB (one bank only)
-   - HY57V561620 (two devices for 64 MiB to form a 32 bit bus)
-     - 4M x 16bit x 4 Banks Mobile SDRAM
-     - 8192 refresh cycles / 64 ms
-     - CL2\@100 MHz
-     - 133 MHz max
-     - collumn address size is 9 bits
-     - row address size is 13 bits
-   - MT48LC16M16 (two devices for 64 MiB to form a 32 bit bus)
-     - 4M x 16bit x 4 Banks Mobile SDRAM
-     - commercial & industrial type
-     - 8192 refresh cycles / 64 ms
-     - CL2\@100 MHz
-     - 133 MHz max
-     - collumn address size is 9 bits
-     - row address size is 13 bits
+   - Hynix SDRAM
+    - HY57V561620FTP-H (two devices for 64 MiB to form a 32 bit bus)
+      - 4M x 16bit x 4 Banks Mobile SDRAM
+      - 8192 refresh cycles / 64 ms
+      - CL2\@100 MHz
+      - 133 MHz max
+      - collumn address size is 9 bits
+      - row address size is 13 bits
+   - Micron SDRAM
+    - MT48LC16M16A2-75IT (two devices for 64 MiB to form a 32 bit bus)
+    - MT48LC16M16A2-7E (two devices for 64 MiB to form a 32 bit bus)
+      - 4M x 16bit x 4 Banks Mobile SDRAM
+      - commercial & industrial type
+      - 8192 refresh cycles / 64 ms
+      - CL2\@100 MHz
+      - 133 MHz max
+      - collumn address size is 9 bits
+      - row address size is 13 bits
 - NAND Flash 128MiB...1GiB
-   - K9Fxx08
+   - K9F1208U0C
+      - VID: 0xec, DID: 0x76
+      - Samsung/64MiB 3,3V 8-bit
+      - 512 + 8 bytes per page
+      - 16 kiB block size
+   - K9F1G08UOB
+      - VID: 0xec, DID: 0xf1
+      - Samsung/128MiB 3,3V 8-bit
+      - 2048 + 64 bytes per page
+      - 128 kiB block size
+   - K9F2G08UOB
+      - VID: 0xec, DID: 0xda
+      - Samsung/256MiB 3,3V 8-bit
+      - 2048 + 64 bytes per page
+      - 128 kiB block size
+   - K9K8G08U0A
+      - VID: 0xec, DID: 0xd3
+      - Samsung/1GiB 3,3V 8-bit
+      - 2048 + 64 bytes per page
+      - 128 kiB block size
 - NOR Flash (up to 22 address lines available)
    - AM29LV160DB, 2 MiB
    - SST39VF1601, 2 MiB
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
