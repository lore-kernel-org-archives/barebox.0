Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kafxy-000885-GE
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 14:10:19 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1kafxw-0005id-US
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 15:10:17 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  5 Nov 2020 15:10:15 +0100
Message-Id: <20201105141015.1695515-3-l.stach@pengutronix.de>
In-Reply-To: <20201105141015.1695515-1-l.stach@pengutronix.de>
References: <20201105141015.1695515-1-l.stach@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 3/3] ddr: imx8m: add workaround for DDRPHY rank to rank issue
To: barebox@lists.infradead.org

This is a port of upstream U-Boot commit b335966958a9. Sadly there is no
more information to be found about the issue. The currently available
errata documents don't mention this issue at all and the U-Boot commit
doesn't tell much either, however this commit has been pointed out by
NXP engineers as a solution to reports of board instabilities.

| drivers: ddr: imx Workaround for i.MX8M DDRPHY rank to rank issue
|
| Add logic to automatically update umctl2's setting based
| on phy training CDD value for rank to rank space issue
|
| Acked-by: Ye Li <ye.li@nxp.com>
| Signed-off-by: Oliver Chen <Oliver.Chen@nxp.com>
| Signed-off-by: Jacky Bai <ping.bai@nxp.com>
| Signed-off-by: Peng Fan <peng.fan@nxp.com>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
This fixes a severe instability caused by memory corruptions in the
booted Linux system on the i.MX8MM EVK board I'm working with. This
commit has not been tested on i.MX8MP, yet.
---
 drivers/ddr/imx8m/ddr_init.c     |   3 +
 drivers/ddr/imx8m/ddrphy_train.c |   5 +
 drivers/ddr/imx8m/ddrphy_utils.c | 169 +++++++++++++++++++++++++++++++
 include/soc/imx8m/ddr.h          |   4 +
 4 files changed, 181 insertions(+)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 230fa7ef4266..1cd7b7406dc7 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -134,6 +134,9 @@ static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	/* Step15: Set SWCTL.sw_done to 0 */
 	reg32_write(DDRC_SWCTL(0), 0x00000000);
 
+	/* Apply rank-to-rank workaround */
+	update_umctl2_rank_space_setting(dram_timing->fsp_msg_num - 1, type);
+
 	/* Step16: Set DFIMISC.dfi_init_start to 1 */
 	setbits_le32(DDRC_DFIMISC(0), (0x1 << 5));
 
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index ca0bb2f57bb7..9280c853aa1c 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -93,7 +93,12 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing)
 
 		/* Read the Message Block results */
 		dwc_ddrphy_apb_wr(0xd0000, 0x0);
+
 		ddrphy_init_read_msg_block(fsp_msg->fw_type);
+
+		if (fsp_msg->fw_type != FW_2D_IMAGE)
+			get_trained_CDD(i);
+
 		dwc_ddrphy_apb_wr(0xd0000, 0x1);
 
 		fsp_msg++;
diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 222b61be3d55..c48372491015 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -306,3 +306,172 @@ void ddrphy_init_set_dfi_clk(unsigned int drate)
 void ddrphy_init_read_msg_block(enum fw_type type)
 {
 }
+
+static unsigned int g_cdd_rr_max[4];
+static unsigned int g_cdd_rw_max[4];
+static unsigned int g_cdd_wr_max[4];
+static unsigned int g_cdd_ww_max[4];
+
+static unsigned int look_for_max(unsigned int data[], unsigned int addr_start,
+				 unsigned int addr_end)
+{
+	unsigned int i, imax = 0;
+
+	for (i = addr_start; i <= addr_end; i++) {
+		if (((data[i] >> 7) == 0) && (data[i] > imax))
+			imax = data[i];
+	}
+
+	return imax;
+}
+
+void get_trained_CDD(u32 fsp)
+{
+	unsigned int i, ddr_type, tmp;
+	unsigned int cdd_cha[12], cdd_chb[12];
+	unsigned int cdd_cha_rr_max, cdd_cha_rw_max, cdd_cha_wr_max, cdd_cha_ww_max;
+	unsigned int cdd_chb_rr_max, cdd_chb_rw_max, cdd_chb_wr_max, cdd_chb_ww_max;
+
+	ddr_type = reg32_read(DDRC_MSTR(0)) & 0x3f;
+	if (ddr_type == 0x20) {
+		for (i = 0; i < 6; i++) {
+			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
+					 (0x54013UL + i) * 4);
+			cdd_cha[i * 2] = tmp & 0xff;
+			cdd_cha[i * 2 + 1] = (tmp >> 8) & 0xff;
+		}
+
+		for (i = 0; i < 7; i++) {
+			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
+					 (0x5402cUL + i) * 4);
+			if (i == 0) {
+				cdd_cha[0] = (tmp >> 8) & 0xff;
+			} else if (i == 6) {
+				cdd_cha[11] = tmp & 0xff;
+			} else {
+				cdd_chb[ i * 2 - 1] = tmp & 0xff;
+				cdd_chb[i * 2] = (tmp >> 8) & 0xff;
+			}
+		}
+
+		cdd_cha_rr_max = look_for_max(cdd_cha, 0, 1);
+		cdd_cha_rw_max = look_for_max(cdd_cha, 2, 5);
+		cdd_cha_wr_max = look_for_max(cdd_cha, 6, 9);
+		cdd_cha_ww_max = look_for_max(cdd_cha, 10, 11);
+		cdd_chb_rr_max = look_for_max(cdd_chb, 0, 1);
+		cdd_chb_rw_max = look_for_max(cdd_chb, 2, 5);
+		cdd_chb_wr_max = look_for_max(cdd_chb, 6, 9);
+		cdd_chb_ww_max = look_for_max(cdd_chb, 10, 11);
+		g_cdd_rr_max[fsp] =  cdd_cha_rr_max > cdd_chb_rr_max ? cdd_cha_rr_max : cdd_chb_rr_max;
+		g_cdd_rw_max[fsp] =  cdd_cha_rw_max > cdd_chb_rw_max ? cdd_cha_rw_max : cdd_chb_rw_max;
+		g_cdd_wr_max[fsp] =  cdd_cha_wr_max > cdd_chb_wr_max ? cdd_cha_wr_max : cdd_chb_wr_max;
+		g_cdd_ww_max[fsp] =  cdd_cha_ww_max > cdd_chb_ww_max ? cdd_cha_ww_max : cdd_chb_ww_max;
+	} else {
+		unsigned int ddr4_cdd[64];
+
+		for( i = 0; i < 29; i++) {
+			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
+					 (0x54012UL + i) * 4);
+			ddr4_cdd[i * 2] = tmp & 0xff;
+			ddr4_cdd[i * 2 + 1] = (tmp >> 8) & 0xff;
+		}
+
+		g_cdd_rr_max[fsp] = look_for_max(ddr4_cdd, 1, 12);
+		g_cdd_ww_max[fsp] = look_for_max(ddr4_cdd, 13, 24);
+		g_cdd_rw_max[fsp] = look_for_max(ddr4_cdd, 25, 40);
+		g_cdd_wr_max[fsp] = look_for_max(ddr4_cdd, 41, 56);
+	}
+}
+
+void update_umctl2_rank_space_setting(unsigned int pstat_num,
+				      enum ddrc_type type)
+{
+	unsigned int i,ddr_type;
+	unsigned int rdata, tmp, tmp_t;
+	unsigned int ddrc_w2r,ddrc_r2w,ddrc_wr_gap,ddrc_rd_gap;
+	unsigned long addr_slot;
+
+	ddr_type = reg32_read(DDRC_MSTR(0)) & 0x3f;
+	for (i = 0; i < pstat_num; i++) {
+		addr_slot = i ? (i + 1) * 0x1000 : 0;
+		if (ddr_type == 0x20) {
+			/* update r2w:[13:8], w2r:[5:0] */
+			rdata = reg32_read(DDRC_DRAMTMG2(0) + addr_slot);
+			ddrc_w2r = rdata & 0x3f;
+			if (type == DDRC_TYPE_MP)
+				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1);
+			else
+				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1) + 1;
+			ddrc_w2r = (tmp > 0x3f) ? 0x3f : tmp;
+
+			ddrc_r2w = (rdata >> 8) & 0x3f;
+			if (type == DDRC_TYPE_MP)
+				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1);
+			else
+				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1) + 1;
+			ddrc_r2w = (tmp > 0x3f) ? 0x3f : tmp;
+
+			tmp_t = (rdata & 0xffffc0c0) | (ddrc_r2w << 8) | ddrc_w2r;
+			reg32_write((DDRC_DRAMTMG2(0) + addr_slot), tmp_t);
+		} else {
+			/* update w2r:[5:0] */
+			rdata = reg32_read(DDRC_DRAMTMG9(0) + addr_slot);
+			ddrc_w2r = rdata & 0x3f;
+			if (type == DDRC_TYPE_MP)
+				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1);
+			else
+				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1) + 1;
+			ddrc_w2r = (tmp > 0x3f) ? 0x3f : tmp;
+			tmp_t = (rdata & 0xffffffc0) | ddrc_w2r;
+			reg32_write((DDRC_DRAMTMG9(0) + addr_slot), tmp_t);
+
+			/* update r2w:[13:8] */
+			rdata = reg32_read(DDRC_DRAMTMG2(0) + addr_slot);
+			ddrc_r2w = (rdata >> 8) & 0x3f;
+			if (type == DDRC_TYPE_MP)
+				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1);
+			else
+				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1) + 1;
+			ddrc_r2w = (tmp > 0x3f) ? 0x3f : tmp;
+
+			tmp_t = (rdata & 0xffffc0ff) | (ddrc_r2w << 8);
+			reg32_write((DDRC_DRAMTMG2(0) + addr_slot), tmp_t);
+		}
+
+		if (type != DDRC_TYPE_MQ) {
+			/* update rankctl: wr_gap:11:8; rd:gap:7:4; quasi-dymic, doc wrong(static) */
+			rdata = reg32_read(DDRC_RANKCTL(0) + addr_slot);
+			ddrc_wr_gap = (rdata >> 8) & 0xf;
+			if (type == DDRC_TYPE_MP)
+				tmp = ddrc_wr_gap + (g_cdd_ww_max[i] >> 1);
+			else
+				tmp = ddrc_wr_gap + (g_cdd_ww_max[i] >> 1) + 1;
+			ddrc_wr_gap = (tmp > 0xf) ? 0xf : tmp;
+
+			ddrc_rd_gap = (rdata >> 4) & 0xf;
+			if (type == DDRC_TYPE_MP)
+				tmp = ddrc_rd_gap + (g_cdd_rr_max[i] >> 1);
+			else
+				tmp = ddrc_rd_gap + (g_cdd_rr_max[i] >> 1) + 1;
+			ddrc_rd_gap = (tmp > 0xf) ? 0xf : tmp;
+
+			tmp_t = (rdata & 0xfffff00f) | (ddrc_wr_gap << 8) | (ddrc_rd_gap << 4);
+			reg32_write((DDRC_RANKCTL(0) + addr_slot), tmp_t);
+		}
+	}
+
+	if (type == DDRC_TYPE_MQ) {
+		/* update rankctl: wr_gap:11:8; rd:gap:7:4; quasi-dymic, doc wrong(static) */
+		rdata = reg32_read(DDRC_RANKCTL(0));
+		ddrc_wr_gap = (rdata >> 8) & 0xf;
+		tmp = ddrc_wr_gap + (g_cdd_ww_max[0] >> 1) + 1;
+		ddrc_wr_gap = (tmp > 0xf) ? 0xf : tmp;
+
+		ddrc_rd_gap = (rdata >> 4) & 0xf;
+		tmp = ddrc_rd_gap + (g_cdd_rr_max[0] >> 1) + 1;
+		ddrc_rd_gap = (tmp > 0xf) ? 0xf : tmp;
+
+		tmp_t = (rdata & 0xfffff00f) | (ddrc_wr_gap << 8) | (ddrc_rd_gap << 4);
+		reg32_write(DDRC_RANKCTL(0), tmp_t);
+	}
+}
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 1408ffcfb557..a5a610909212 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -382,6 +382,10 @@ int wait_ddrphy_training_complete(void);
 void ddrphy_init_set_dfi_clk(unsigned int drate);
 void ddrphy_init_read_msg_block(enum fw_type type);
 
+void update_umctl2_rank_space_setting(unsigned int pstat_num,
+				      enum ddrc_type type);
+void get_trained_CDD(unsigned int fsp);
+
 #define reg32_write(a, v)	writel(v, a)
 #define reg32_read(a)		readl(a)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
