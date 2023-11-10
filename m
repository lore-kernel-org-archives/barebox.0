Delivery-date: Fri, 10 Nov 2023 14:02:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9K-005rj7-0F
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9H-0005JT-LF
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DbTM85uwoO0Tm1JdPha/yqSOOUyqy09oXpkyba32IOk=; b=1+F8O6YfvYzjer6oisVJWo6Y9V
	VovIHcAZ8G9NW99bi4b2Hbf+Q964nZfYD5xwZOkKr1vZ+PB0aptt/q5sgBuJ/s68O9O+RlxP4B7+r
	cPkse8aQqH3t2ODuSI4Uq7gMfm7AzEgWtNXywTbcHzPQk26rkll/9VmwvpnSdBG2iCcnefm5Rjvwj
	leeHJW1lmYZIfAuES42cliTj6+W+PrslQr3UlGBSb7J9DtxGxdlWPlcgz4g8kertqXyJtLZXv0vOc
	4U94Ih9k6bh/kAjaSYvy6VPQdEaUDHibCfxjUvUhktPglpbAs9/yNn2frBVkQbvw6q3dldsaa8ajK
	gGriKXag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R84-008m4g-03;
	Fri, 10 Nov 2023 13:00:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwG-1U
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DbTM85uwoO0Tm1JdPha/yqSOOUyqy09oXpkyba32IOk=; b=d8dViKQ0dZLkXw73w4Tnie+vYh
	ONLiv87vf26LWmxRg4Rj/VZVAy/E/26PVdhKObQlnn3HdLh0LNQ8f+7Ys1OXfPOB7PqZ20/HxOHs+
	2ltznRo6vkOEAhk1HMUzmqohUhHmthZMcjjJcIjHL4zP1O8vSO94Pq0p65EzsmJZw3QNkOHr4m+WW
	vhqxsKvBPSpAJAL4JjdTnHyAVFZ0AcCxQiZySllwvcFBGD8wDERrDPQQyIqt7HfQqKvMthrpcl56t
	omjS9lYRSCZmjVMavHyEP1T/7bARpA9dcBOtc2dGxN1wGFuQED14bKK8Z+2uBY8JZSeed8LCN55Wy
	f2sVzXUw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3o-0Q
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-000438-Ek; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Yz-7Z; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096Ma-0a;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:18 +0100
Message-Id: <20231110130028.2123895-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_790645_24CDEB9F 
X-CRM114-Status: GOOD (  21.46  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/13] ddr: imx8m: move get_trained_CDD() to SoC code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

get_trained_CDD() will be implemented differently on i.MX9, so move
the function to the i.MX8M specific file and add a hook to struct
dram_controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_train.c   |   2 +-
 drivers/ddr/imx/ddrphy_utils.c   | 169 ------------------------------
 drivers/ddr/imx/imx8m_ddr_init.c | 171 +++++++++++++++++++++++++++++++
 include/soc/imx8m/ddr.h          |   5 +-
 4 files changed, 173 insertions(+), 174 deletions(-)

diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index 1683ffd9a8..36fb6d3c11 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -159,7 +159,7 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 		ddrphy_init_read_msg_block(fsp_msg->fw_type);
 
 		if (fsp_msg->fw_type != FW_2D_IMAGE)
-			get_trained_CDD(i);
+			dram->get_trained_CDD(dram, i);
 
 		dwc_ddrphy_apb_wr(0xd0000, 0x1);
 
diff --git a/drivers/ddr/imx/ddrphy_utils.c b/drivers/ddr/imx/ddrphy_utils.c
index 353a265136..db94b85b74 100644
--- a/drivers/ddr/imx/ddrphy_utils.c
+++ b/drivers/ddr/imx/ddrphy_utils.c
@@ -362,172 +362,3 @@ void ddrphy_init_set_dfi_clk(unsigned int drate_mhz, enum ddrc_type type)
 void ddrphy_init_read_msg_block(enum fw_type type)
 {
 }
-
-static unsigned int g_cdd_rr_max[4];
-static unsigned int g_cdd_rw_max[4];
-static unsigned int g_cdd_wr_max[4];
-static unsigned int g_cdd_ww_max[4];
-
-static unsigned int look_for_max(unsigned int data[], unsigned int addr_start,
-				 unsigned int addr_end)
-{
-	unsigned int i, imax = 0;
-
-	for (i = addr_start; i <= addr_end; i++) {
-		if (((data[i] >> 7) == 0) && (data[i] > imax))
-			imax = data[i];
-	}
-
-	return imax;
-}
-
-void get_trained_CDD(u32 fsp)
-{
-	unsigned int i, ddr_type, tmp;
-	unsigned int cdd_cha[12], cdd_chb[12];
-	unsigned int cdd_cha_rr_max, cdd_cha_rw_max, cdd_cha_wr_max, cdd_cha_ww_max;
-	unsigned int cdd_chb_rr_max, cdd_chb_rw_max, cdd_chb_wr_max, cdd_chb_ww_max;
-
-	ddr_type = reg32_read(DDRC_MSTR(0)) & 0x3f;
-	if (ddr_type == 0x20) {
-		for (i = 0; i < 6; i++) {
-			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
-					 (0x54013UL + i) * 4);
-			cdd_cha[i * 2] = tmp & 0xff;
-			cdd_cha[i * 2 + 1] = (tmp >> 8) & 0xff;
-		}
-
-		for (i = 0; i < 7; i++) {
-			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
-					 (0x5402cUL + i) * 4);
-			if (i == 0) {
-				cdd_cha[0] = (tmp >> 8) & 0xff;
-			} else if (i == 6) {
-				cdd_cha[11] = tmp & 0xff;
-			} else {
-				cdd_chb[ i * 2 - 1] = tmp & 0xff;
-				cdd_chb[i * 2] = (tmp >> 8) & 0xff;
-			}
-		}
-
-		cdd_cha_rr_max = look_for_max(cdd_cha, 0, 1);
-		cdd_cha_rw_max = look_for_max(cdd_cha, 2, 5);
-		cdd_cha_wr_max = look_for_max(cdd_cha, 6, 9);
-		cdd_cha_ww_max = look_for_max(cdd_cha, 10, 11);
-		cdd_chb_rr_max = look_for_max(cdd_chb, 0, 1);
-		cdd_chb_rw_max = look_for_max(cdd_chb, 2, 5);
-		cdd_chb_wr_max = look_for_max(cdd_chb, 6, 9);
-		cdd_chb_ww_max = look_for_max(cdd_chb, 10, 11);
-		g_cdd_rr_max[fsp] =  cdd_cha_rr_max > cdd_chb_rr_max ? cdd_cha_rr_max : cdd_chb_rr_max;
-		g_cdd_rw_max[fsp] =  cdd_cha_rw_max > cdd_chb_rw_max ? cdd_cha_rw_max : cdd_chb_rw_max;
-		g_cdd_wr_max[fsp] =  cdd_cha_wr_max > cdd_chb_wr_max ? cdd_cha_wr_max : cdd_chb_wr_max;
-		g_cdd_ww_max[fsp] =  cdd_cha_ww_max > cdd_chb_ww_max ? cdd_cha_ww_max : cdd_chb_ww_max;
-	} else {
-		unsigned int ddr4_cdd[64];
-
-		for( i = 0; i < 29; i++) {
-			tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) +
-					 (0x54012UL + i) * 4);
-			ddr4_cdd[i * 2] = tmp & 0xff;
-			ddr4_cdd[i * 2 + 1] = (tmp >> 8) & 0xff;
-		}
-
-		g_cdd_rr_max[fsp] = look_for_max(ddr4_cdd, 1, 12);
-		g_cdd_ww_max[fsp] = look_for_max(ddr4_cdd, 13, 24);
-		g_cdd_rw_max[fsp] = look_for_max(ddr4_cdd, 25, 40);
-		g_cdd_wr_max[fsp] = look_for_max(ddr4_cdd, 41, 56);
-	}
-}
-
-void update_umctl2_rank_space_setting(unsigned int pstat_num,
-				      enum ddrc_type type)
-{
-	unsigned int i,ddr_type;
-	unsigned int rdata, tmp, tmp_t;
-	unsigned int ddrc_w2r,ddrc_r2w,ddrc_wr_gap,ddrc_rd_gap;
-	unsigned long addr_slot;
-
-	ddr_type = reg32_read(DDRC_MSTR(0)) & 0x3f;
-	for (i = 0; i < pstat_num; i++) {
-		addr_slot = i ? (i + 1) * 0x1000 : 0;
-		if (ddr_type == 0x20) {
-			/* update r2w:[13:8], w2r:[5:0] */
-			rdata = reg32_read(DDRC_DRAMTMG2(0) + addr_slot);
-			ddrc_w2r = rdata & 0x3f;
-			if (type == DDRC_TYPE_MP)
-				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1);
-			else
-				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1) + 1;
-			ddrc_w2r = (tmp > 0x3f) ? 0x3f : tmp;
-
-			ddrc_r2w = (rdata >> 8) & 0x3f;
-			if (type == DDRC_TYPE_MP)
-				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1);
-			else
-				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1) + 1;
-			ddrc_r2w = (tmp > 0x3f) ? 0x3f : tmp;
-
-			tmp_t = (rdata & 0xffffc0c0) | (ddrc_r2w << 8) | ddrc_w2r;
-			reg32_write((DDRC_DRAMTMG2(0) + addr_slot), tmp_t);
-		} else {
-			/* update w2r:[5:0] */
-			rdata = reg32_read(DDRC_DRAMTMG9(0) + addr_slot);
-			ddrc_w2r = rdata & 0x3f;
-			if (type == DDRC_TYPE_MP)
-				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1);
-			else
-				tmp = ddrc_w2r + (g_cdd_wr_max[i] >> 1) + 1;
-			ddrc_w2r = (tmp > 0x3f) ? 0x3f : tmp;
-			tmp_t = (rdata & 0xffffffc0) | ddrc_w2r;
-			reg32_write((DDRC_DRAMTMG9(0) + addr_slot), tmp_t);
-
-			/* update r2w:[13:8] */
-			rdata = reg32_read(DDRC_DRAMTMG2(0) + addr_slot);
-			ddrc_r2w = (rdata >> 8) & 0x3f;
-			if (type == DDRC_TYPE_MP)
-				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1);
-			else
-				tmp = ddrc_r2w + (g_cdd_rw_max[i] >> 1) + 1;
-			ddrc_r2w = (tmp > 0x3f) ? 0x3f : tmp;
-
-			tmp_t = (rdata & 0xffffc0ff) | (ddrc_r2w << 8);
-			reg32_write((DDRC_DRAMTMG2(0) + addr_slot), tmp_t);
-		}
-
-		if (type != DDRC_TYPE_MQ) {
-			/* update rankctl: wr_gap:11:8; rd:gap:7:4; quasi-dymic, doc wrong(static) */
-			rdata = reg32_read(DDRC_RANKCTL(0) + addr_slot);
-			ddrc_wr_gap = (rdata >> 8) & 0xf;
-			if (type == DDRC_TYPE_MP)
-				tmp = ddrc_wr_gap + (g_cdd_ww_max[i] >> 1);
-			else
-				tmp = ddrc_wr_gap + (g_cdd_ww_max[i] >> 1) + 1;
-			ddrc_wr_gap = (tmp > 0xf) ? 0xf : tmp;
-
-			ddrc_rd_gap = (rdata >> 4) & 0xf;
-			if (type == DDRC_TYPE_MP)
-				tmp = ddrc_rd_gap + (g_cdd_rr_max[i] >> 1);
-			else
-				tmp = ddrc_rd_gap + (g_cdd_rr_max[i] >> 1) + 1;
-			ddrc_rd_gap = (tmp > 0xf) ? 0xf : tmp;
-
-			tmp_t = (rdata & 0xfffff00f) | (ddrc_wr_gap << 8) | (ddrc_rd_gap << 4);
-			reg32_write((DDRC_RANKCTL(0) + addr_slot), tmp_t);
-		}
-	}
-
-	if (type == DDRC_TYPE_MQ) {
-		/* update rankctl: wr_gap:11:8; rd:gap:7:4; quasi-dymic, doc wrong(static) */
-		rdata = reg32_read(DDRC_RANKCTL(0));
-		ddrc_wr_gap = (rdata >> 8) & 0xf;
-		tmp = ddrc_wr_gap + (g_cdd_ww_max[0] >> 1) + 1;
-		ddrc_wr_gap = (tmp > 0xf) ? 0xf : tmp;
-
-		ddrc_rd_gap = (rdata >> 4) & 0xf;
-		tmp = ddrc_rd_gap + (g_cdd_rr_max[0] >> 1) + 1;
-		ddrc_rd_gap = (tmp > 0xf) ? 0xf : tmp;
-
-		tmp_t = (rdata & 0xfffff00f) | (ddrc_wr_gap << 8) | (ddrc_rd_gap << 4);
-		reg32_write(DDRC_RANKCTL(0), tmp_t);
-	}
-}
diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index 8acacfac35..1e704ef8fc 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -43,6 +43,175 @@ static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 	}
 }
 
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
+static void get_trained_CDD(struct dram_controller *dram, u32 fsp)
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
+static void update_umctl2_rank_space_setting(unsigned int pstat_num,
+					     enum ddrc_type type)
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
+
 /*
  * We store the timing parameters here. the TF-A will pick these up.
  * Note that the timing used we leave the driver with is a PLL bypass 25MHz
@@ -59,6 +228,8 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 
 	pr_debug("start DRAM init\n");
 
+	dram->get_trained_CDD = get_trained_CDD;
+
 	/* Step1: Follow the power up procedure */
 	switch (dram->ddrc_type) {
 	case DDRC_TYPE_MQ:
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 18d7c96193..c89dfe78cf 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -387,6 +387,7 @@ struct dram_timing_info {
 struct dram_controller {
 	enum ddrc_type ddrc_type;
 	enum dram_type dram_type;
+	void (*get_trained_CDD)(struct dram_controller *dram, u32 fsp);
 };
 
 extern struct dram_timing_info dram_timing;
@@ -460,10 +461,6 @@ int wait_ddrphy_training_complete(void);
 void ddrphy_init_set_dfi_clk(unsigned int drate, enum ddrc_type ddrc_type);
 void ddrphy_init_read_msg_block(enum fw_type fw_type);
 
-void update_umctl2_rank_space_setting(unsigned int pstat_num,
-				      enum ddrc_type ddrc_type);
-void get_trained_CDD(unsigned int fsp);
-
 #define reg32_write(a, v)	writel(v, a)
 #define reg32_read(a)		readl(a)
 
-- 
2.39.2



