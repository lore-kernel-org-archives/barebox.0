Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.gnudd.com ([77.43.112.34])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhliG-00042X-8t
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 21:48:29 +0000
Date: Thu, 1 Oct 2015 23:48:01 +0200
From: Alessandro Rubini <rubini@gnudd.com>
Message-ID: <20151001214801.GA731@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] at91sam9x5: for ROM base address (bugfix for nand ECC)
To: barebox@lists.infradead.org
Cc: Federico Braghiroli <braghiroli@amelchem.com>, Edoardo Scaglia <scaglia@amelchem.com>

From: Edoardo Scaglia <scaglia@amelchem.com>

The ROM base address in the 9x5 processors lives at 1M, not 4M,
where SMD is, as defined later in the same file.

The ROM includes some tables that are used to build error-correction data
for NAND memory.  By using the wrong address, we get wrong data and
the result is undetected bit flips (data at 0x408000 is all zeroes).

Thus, even though our kernel was fixing bit errors in NAND, barebox
was not fixing them. With UBI (our situation) we got I/O errors because
the checksum verification for data nodes failed.

Using the proper address corrects the problem: barebox reports a
"bitflip" message, consistent with the kernel message for the same
file, and the files are properly loaded and booted.

Note: the kernel has the same wrong define, but then the magic number
0x00108000 as spelled in arch/arm/boot/dts/at91sam9x5.dtsi is used
instead of the symbolic name.

Signed-off-by: Edoardo Scaglia <scaglia@amelchem.com>
Signed-off-by: Federico Braghiroli <braghiroli@amelchem.com>
Signed-off-by: Alessndro Rubini <rubini@gnudd.com>
---
 arch/arm/mach-at91/include/mach/at91sam9x5.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 7ba2e3b..e230577 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -144,7 +144,7 @@
 #define AT91SAM9X5_SRAM_BASE	0x00300000	/* Internal SRAM base address */
 #define AT91SAM9X5_SRAM_SIZE	SZ_32K		/* Internal SRAM size (32Kb) */
 
-#define AT91SAM9X5_ROM_BASE	0x00400000	/* Internal ROM base address */
+#define AT91SAM9X5_ROM_BASE	0x00100000	/* Internal ROM base address */
 #define AT91SAM9X5_ROM_SIZE	SZ_64K		/* Internal ROM size (64Kb) */
 
 #define AT91SAM9X5_SMD_BASE	0x00400000	/* SMD Controller */
-- 
1.7.7.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
