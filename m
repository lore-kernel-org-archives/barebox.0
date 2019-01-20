Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gl6WV-0001hS-BL
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 06:24:02 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 09:23:52 +0300
Message-Id: <20190120062352.29764-1-shc_work@mail.ru>
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
Subject: [PATCH] treewide: Remove trailing whitespaces and tabs
To: barebox@lists.infradead.org

Just a cleanup over barebox tree

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c  | 4 ++--
 arch/arm/mach-imx/include/mach/iomux-mx8.h | 2 +-
 arch/arm/mach-mvebu/armada-370-xp.c        | 6 +++---
 common/image-fit.c                         | 2 +-
 drivers/clk/imx/clk-imx7.c                 | 2 +-
 drivers/efi/efi-device.c                   | 2 +-
 drivers/pci/pcie-designware-host.c         | 2 +-
 fs/cramfs/cramfs.c                         | 2 +-
 scripts/kconfig/gconf.c                    | 2 +-
 scripts/socfpga_mkimage.c                  | 2 +-
 10 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c b/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
index 44103b5..39addea 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
@@ -12,7 +12,7 @@ void ddr_cfg_phy(void);
 void ddr_init(void)
 {
 	volatile unsigned int tmp, tmp_t;
-	
+
 	/** Initialize DDR clock and DDRC registers **/
 	reg32_write(0x3038a088,0x7070000);
 	reg32_write(0x3038a084,0x4030000);
@@ -177,7 +177,7 @@ void ddr_init(void)
 	reg32_write(DDRC_SWCTL(0), 0x0000);
 	/*
 	 * ------------------- 9 -------------------
-	 * Set DFIMISC.dfi_init_start to 1 
+	 * Set DFIMISC.dfi_init_start to 1
 	 *  -----------------------------------------
 	 */
 	reg32_write(DDRC_DFIMISC(0), 0x00000030);
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8.h b/arch/arm/mach-imx/include/mach/iomux-mx8.h
index 1caa223..9660697 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx8.h
@@ -163,7 +163,7 @@ enum {
 	IMX8MQ_PAD_SD1_DATA5__USDHC1_DATA5			= IOMUX_PAD(0x0324, 0x00BC, 0, 0x0000, 0, 0),
 	IMX8MQ_PAD_SD1_DATA5__GPIO2_IO7				= IOMUX_PAD(0x0324, 0x00BC, 5, 0x0000, 0, 0),
 
-	IMX8MQ_PAD_SD1_DATA6__USDHC1_DATA6			= IOMUX_PAD(0x0328, 0x00C0, 0, 0x0000, 0, 0),	   
+	IMX8MQ_PAD_SD1_DATA6__USDHC1_DATA6			= IOMUX_PAD(0x0328, 0x00C0, 0, 0x0000, 0, 0),
 	IMX8MQ_PAD_SD1_DATA6__GPIO2_IO8				= IOMUX_PAD(0x0328, 0x00C0, 5, 0x0000, 0, 0),
 
 	IMX8MQ_PAD_SD1_DATA7__USDHC1_DATA7			= IOMUX_PAD(0x032C, 0x00C4, 0, 0x0000, 0, 0),
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 0612830..2589f4f 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -105,12 +105,12 @@ static void setup_usb_phys(void)
 
 	/* Power up PLL and PHY channel */
 	setbits_le32(MV_USB_PHY_PLL_REG(2), BIT(9));
- 
+
 	/* Assert VCOCAL_START */
 	setbits_le32(MV_USB_PHY_PLL_REG(1), BIT(21));
- 
+
 	mdelay(1);
- 
+
 	/*
 	 * USB PHY init (change from defaults) specific for 40nm (78X30 78X60)
 	 */
diff --git a/common/image-fit.c b/common/image-fit.c
index 87a55b7..6ac4644 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -368,7 +368,7 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
  out_sl:
 	string_list_free(&inc_nodes);
 	string_list_free(&exc_props);
- 
+
 	return ret;
 }
 
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 97fe7ab..781bc43 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -743,7 +743,7 @@ static int imx7_ccm_probe(struct device_d *dev)
 		"enet_axi_post_div", base + 0x4700, 0);
 	clks[IMX7D_ENET1_TIME_ROOT_CLK] = imx_clk_gate2_shared2("enet1_time_root_clk",
 		"enet1_time_post_div", base + 0x4700, 0);
-	clks[IMX7D_ENET2_IPG_ROOT_CLK] = imx_clk_gate2_shared2("enet2_ipg_root_clk", 
+	clks[IMX7D_ENET2_IPG_ROOT_CLK] = imx_clk_gate2_shared2("enet2_ipg_root_clk",
 		"enet_axi_post_div", base + 0x4710, 0);
 	clks[IMX7D_ENET2_TIME_ROOT_CLK] = imx_clk_gate2_shared2("enet2_time_root_clk",
 		"enet2_time_post_div", base + 0x4710, 0);
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index b7dea7c..5cc68fb 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -551,7 +551,7 @@ static int do_efi_protocol_dump(int argc, char **argv)
 
 		if (len != 36)
 			return -EINVAL;
-		
+
 		read_xbit(s, a, 32);
 		if (*s != '-')
 			return -EINVAL;
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 6cc4b93..cc6a41b 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -391,7 +391,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 		pci->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pci);
 		dev_dbg(pci->dev, "iATU unroll: %s\n",
 			pci->iatu_unroll_enabled ? "enabled" : "disabled");
-		
+
 		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
 					  pp->mem_bus_addr, pp->mem_size);
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index a3ce354..093657f 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -335,7 +335,7 @@ static struct inode *cramfs_alloc_inode(struct super_block *sb)
 	struct cramfs_inode_info *info;
 
 	info = xzalloc(sizeof(*info));
- 
+
 	return &info->i_inode;
 }
 
diff --git a/scripts/kconfig/gconf.c b/scripts/kconfig/gconf.c
index 36f5784..0ac700b 100644
--- a/scripts/kconfig/gconf.c
+++ b/scripts/kconfig/gconf.c
@@ -640,7 +640,7 @@ on_set_option_mode3_activate(GtkMenuItem *menuitem, gpointer user_data)
 void on_introduction1_activate(GtkMenuItem * menuitem, gpointer user_data)
 {
 	GtkWidget *dialog;
-	const gchar *intro_text = 
+	const gchar *intro_text =
 	    "Welcome to gkc, the GTK+ graphical configuration tool\n"
 	    "For each option, a blank box indicates the feature is disabled, a\n"
 	    "check indicates it is enabled, and a dot indicates that it is to\n"
diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
index fedcfb5..03150cc 100644
--- a/scripts/socfpga_mkimage.c
+++ b/scripts/socfpga_mkimage.c
@@ -157,7 +157,7 @@ uint32_t crc32(uint32_t crc, void *_buf, int length)
 	return crc;
 }
 
-/* Create an ARM relative branch instuction 
+/* Create an ARM relative branch instuction
  * branch is where the instruction will be placed and dest points to where
  * it should branch too. */
 static void branch(uint8_t *branch, uint8_t *dest)
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
