Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr30050.outbound.protection.outlook.com ([40.107.3.50]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fWMMt-0002zQ-NQ
 for barebox@lists.infradead.org; Fri, 22 Jun 2018 13:44:53 +0000
From: Mogens Lauridsen <mll@covidence.com>
Message-ID: <5B2CFD40.3020108@covidence.com>
Date: Fri, 22 Jun 2018 15:44:32 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: imx53 hang in barebox boot
To: barebox@lists.infradead.org

Hi,

During production of our i.MX53 based board we sometimes find a board 
which hang in boot/barebox. It happens in something like 5% of the 
production.

I have done some debugging, and it seems like it can be fixed by 
removing "imx5_setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR);" from 
imx53.c.

In the function "imx53_init_lowlevel_early" PLL3 is first set to 400MHz, 
then some peripheral is switched to PLL3 and finally PLL3 is set to 
216MHz. Is 400MHz too high for the PLL/peripheral so it can't always lock?

I would think that PLL3 should be set to 216MHz in the first place and 
not change later. Or am I missing something?

Kind regards
Mogens Lauridsen


void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
{
     void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
     u32 r;

     imx5_init_lowlevel();

     /*
      * AIPS setup - Only setup MPROTx registers.
      * The PACR default values are good.
      * Set all MPROTx to be non-bufferable, trusted for R/W,
      * not forced to user-mode.
      */
     writel(0x77777777, MX53_AIPS1_BASE_ADDR + 0);
     writel(0x77777777, MX53_AIPS1_BASE_ADDR + 4);
     writel(0x77777777, MX53_AIPS2_BASE_ADDR + 0);
     writel(0x77777777, MX53_AIPS2_BASE_ADDR + 4);

     /* Gate of clocks to the peripherals first */
     writel(0x3fffffff, ccm + MX5_CCM_CCGR0);
     writel(0x00000000, ccm + MX5_CCM_CCGR1);
     writel(0x00000000, ccm + MX5_CCM_CCGR2);
     writel(0x00000000, ccm + MX5_CCM_CCGR3);
     writel(0x00030000, ccm + MX5_CCM_CCGR4);
     writel(0x00fff030, ccm + MX5_CCM_CCGR5);
     writel(0x0f00030f, ccm + MX5_CCM_CCGR6);
     writel(0x00000000, ccm + MX53_CCM_CCGR7);

     /* Switch ARM to step clock */
     writel(0x4, ccm + MX5_CCM_CCSR);

     if (cpufreq_mhz == 1000)
         imx5_setup_pll_1000((void __iomem *)MX53_PLL1_BASE_ADDR);
     else
         imx5_setup_pll_800((void __iomem *)MX53_PLL1_BASE_ADDR);

     imx5_setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR); 
<------------------- 400MHz

         /* Switch peripheral to PLL3 */
     writel(0x00015154, ccm + MX5_CCM_CBCMR);
     writel(0x02888945 | (1<<16), ccm + MX5_CCM_CBCDR);

     /* make sure change is effective */
     while (readl(ccm + MX5_CCM_CDHIPR));

     imx5_setup_pll_400((void __iomem *)MX53_PLL2_BASE_ADDR);

     /* Switch peripheral to PLL2 */
     r = 0x00808145 |
         (2 << 10) |
         (0 << 16) |
         (1 << 19);

     writel(r, ccm + MX5_CCM_CBCDR);

     writel(0x00016154, ccm + MX5_CCM_CBCMR);

     r = readl(ccm + MX5_CCM_CSCMR1);

     /* change uart clk parent to pll2 */
     r &= ~MX5_CCM_CSCMR1_UART_CLK_SEL_MASK;
     r |= 1 << MX5_CCM_CSCMR1_UART_CLK_SEL_OFFSET;

     /* USB phy clock from osc */
     r &= ~(1 << MX5_CCM_CSCMR1_USB_PHY_CLK_SEL_OFFSET);

     writel(r, ccm + MX5_CCM_CSCMR1);

     /* make sure change is effective */
     while (readl(ccm + MX5_CCM_CDHIPR));

     imx5_setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR); 
<------------------- 216MHz
     imx5_setup_pll_455((void __iomem *)MX53_PLL4_BASE_ADDR);

     /* Set the platform clock dividers */
     writel(0x00000124, MX53_ARM_BASE_ADDR + 0x14);

     writel(0, ccm + MX5_CCM_CACRR);

     /* Switch ARM back to PLL 1. */
     writel(0, ccm + MX5_CCM_CCSR);

     /* make uart div = 6*/
     r = readl(ccm + MX5_CCM_CSCDR1);
     r &= ~0x3f;
     r |= 0x0a;

     r &= ~MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK;
     r &= ~MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK;
     r |= 1 << MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET;

     r &= ~MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PRED_MASK;
     r &= ~MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_MASK;
     r |= 1 << MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_OFFSET;

     r &= ~MX5_CCM_CSCDR1_USBOH3_CLK_PRED_MASK;
     r &= ~MX5_CCM_CSCDR1_USBOH3_CLK_PODF_MASK;

     r |= 3 << MX5_CCM_CSCDR1_USBOH3_CLK_PRED_OFFSET;
     r |= 1 << MX5_CCM_CSCDR1_USBOH3_CLK_PODF_OFFSET;

     writel(r, ccm + MX5_CCM_CSCDR1);

     /* Restore the default values in the Gate registers */
     writel(0xffffffff, ccm + MX5_CCM_CCGR0);
     writel(0xffffffff, ccm + MX5_CCM_CCGR1);
     writel(0xffffffff, ccm + MX5_CCM_CCGR2);
     writel(0xffffffff, ccm + MX5_CCM_CCGR3);
     writel(0xffffffff, ccm + MX5_CCM_CCGR4);
     writel(0xffffffff, ccm + MX5_CCM_CCGR5);
     writel(0xffffffff, ccm + MX5_CCM_CCGR6);
     writel(0xffffffff, ccm + MX53_CCM_CCGR7);

     writel(0, ccm + MX5_CCM_CCDR);
}


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
