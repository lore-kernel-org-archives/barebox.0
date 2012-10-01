Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TIimt-0000Ts-HP
 for barebox@lists.infradead.org; Mon, 01 Oct 2012 16:24:08 +0000
Received: by bkwj4 with SMTP id j4so4739383bkw.36
 for <barebox@lists.infradead.org>; Mon, 01 Oct 2012 09:24:04 -0700 (PDT)
Date: Mon, 1 Oct 2012 18:24:01 +0200
From: Christoph Fritz <chf.fritz@googlemail.com>
Message-ID: <20121001162400.GA29504@lovely.krouter>
References: <1347391260.4361.12.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347391260.4361.12.camel@mars>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: regression: ARM: pca100: Use _text rather than TEXT_BASE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 09:21:00PM +0200, Christoph Fritz wrote:
> Hi Sascha,
> 
> your commit 244198e "ARM boards: Use _text rather than TEXT_BASE"
> breaks board pca100 (phycard-i.MX27): It doesn't boot.
> 
> Revering the patch fixes the problem.
> 
> Any ideas?

*ping*

---
Subject: [PATCH] ARM: pca100: revert TEXT_BASE changes

This reverts commit 244198ea8bdf592799ebfd430fe9ab165284e480
its changes for pca100.
---
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S |    8 ++++++--
 arch/arm/boards/phycard-i.MX27/pca100.c        |    2 +-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 0907382..7b700c5 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -115,7 +115,7 @@ board_init_lowlevel:
 	bhi	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =_text
+	ldr	r1, =TEXT_BASE
 
 copy_loop:
 	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
@@ -125,7 +125,11 @@ copy_loop:
 
 	ldr	pc, =1f			/* Jump to SDRAM                    */
 1:
-	b	nand_boot		/* Load barebox from NAND Flash      */
+	bl	nand_boot		/* Load barebox from NAND Flash      */
+
+	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
+	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
+					/* to SDRAM                            */
 
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index b77e532..3e60ccd 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -339,7 +339,7 @@ console_initcall(pca100_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image(_text, barebox_image_size);
+	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
 }
 #endif
 
-- 
1.7.2.5

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
