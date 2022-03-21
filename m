Delivery-date: Mon, 21 Mar 2022 14:18:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWHvL-001Onz-Ug
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 14:18:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWHvO-0007Qj-47
	for lore@pengutronix.de; Mon, 21 Mar 2022 14:18:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huRBWYXGXmC4W+VxIpPkqXJDvaw5e6MKgJcLOGtojfw=; b=cLx9vYUY1MPK4j
	VG6t7KHivWJRV5TiMUjfqYvgPyKSc7T+C23KoRFOv2cPCtGec+bdmIbE5wwUnzxRTnWRU98eMS5dz
	8hoUXXm+IwFiAMd4k0dJB/6/RAYvZ+1UlBTHUyChq3M8e7D3E8AuSOnG1XV1NJujhDS1O13UD84/b
	KPAuQ6R8gRRN35LOj33ARONp9ttcTNsCVEGYtuOOtMw71yzXRNmMu++Js2QrsUnCubVQRL0y+k4lB
	4tr/6A4kGN/SisUCMEjMne4GDF/TUxPL0xWCQLF7waL/rM+sk4Hk3NVBfUTCKjdrNg2ieZo3tqryZ
	fTBlPsmQylfif+/GGcTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWHtx-007pOL-6V; Mon, 21 Mar 2022 13:16:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWHtp-007pN3-AT
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 13:16:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1nWHtl-0007Iu-RO; Mon, 21 Mar 2022 14:16:37 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1nWHtl-005UH8-CQ; Mon, 21 Mar 2022 14:16:37 +0100
From: Steffen Trumtrar <str@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 21 Mar 2022 14:16:32 +0100
Message-Id: <20220321131632.1307943-2-str@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220321131632.1307943-1-str@pengutronix.de>
References: <20220321131632.1307943-1-str@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_061641_408967_7D3249A4 
X-CRM114-Status: GOOD (  16.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] net: phy: mv88e6xxx: add support for mv88e6250
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

barebox port of the linux patch:

  commit 1f71836f5d96e4c87fad16db86d324bee47e1d30
  Author: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
  Date:   Tue Jun 4 07:34:32 2019 +0000

      net: dsa: mv88e6xxx: add support for mv88e6250

      This adds support for the Marvell 88E6250. I've checked that each
      member in the ops-structure makes sense, and basic switchdev
      functionality works fine.

      It uses the new dual_chip option, and since its port registers start
      at SMI address 0x08 or 0x18 (i.e., always sw_addr + 0x08), we need to
      introduce a new compatible string in order for the auto-identification
      in mv88e6xxx_detect() to work.

      The chip has four per port 16-bits statistics registers, two of which
      correspond to the existing "sw_in_filtered" and "sw_out_filtered" (but
      at offsets 0x13 and 0x10 rather than 0x12 and 0x13, because why should
      this be easy...). Wiring up those four statistics seems to require
      introducing a STATS_TYPE_PORT_6250 bit or similar, which seems a tad
      ugly, so for now this just allows access to the STATS_TYPE_BANK0 ones.

      The chip does have ptp support, and the existing
      mv88e6352_{gpio,avb,ptp}_ops at first glance seem like they would work
      out-of-the-box, but for simplicity (and lack of testing) I'm eliding
      this.

      Reviewed-by: Andrew Lunn <andrew@lunn.ch>
      Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
      Signed-off-by: David S. Miller <davem@davemloft.net>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/phy/mv88e6xxx/chip.c | 28 ++++++++++++++++++++++++++++
 drivers/net/phy/mv88e6xxx/chip.h |  1 +
 drivers/net/phy/mv88e6xxx/port.h |  1 +
 3 files changed, 30 insertions(+)

diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index ae59d134e7..a7d707095b 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -36,6 +36,7 @@ enum mv88e6xxx_model {
 	MV88E6190X,
 	MV88E6191,
 	MV88E6240,
+	MV88E6250,
 	MV88E6290,
 	MV88E6320,
 	MV88E6321,
@@ -224,6 +225,18 @@ static const struct mv88e6xxx_ops mv88e6240_ops = {
 	.port_link_state = mv88e6352_port_link_state,
 };
 
+static const struct mv88e6xxx_ops mv88e6250_ops = {
+	/* MV88E6XXX_FAMILY_6250 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6250_port_set_speed,
+};
+
 static const struct mv88e6xxx_ops mv88e6290_ops = {
 	/* MV88E6XXX_FAMILY_6390 */
 	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
@@ -525,6 +538,17 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.ops = &mv88e6240_ops,
 	},
 
+	[MV88E6250] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6250,
+		.family = MV88E6XXX_FAMILY_6250,
+		.name = "Marvell 88E6250",
+		.num_ports = 7,
+		.port_base_addr = 0x08,
+		.global1_addr = 0xf,
+		.global2_addr = 0x7,
+		.ops = &mv88e6250_ops,
+	},
+
 	[MV88E6290] = {
 		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6290,
 		.family = MV88E6XXX_FAMILY_6390,
@@ -931,6 +955,10 @@ static const struct of_device_id mv88e6xxx_of_match[] = {
 		.compatible = "marvell,mv88e6085",
 		.data = &mv88e6xxx_table[MV88E6085],
 	},
+	{
+		.compatible = "marvell,mv88e6250",
+		.data = &mv88e6xxx_table[MV88E6250],
+	},
 	{
 		.compatible = "marvell,mv88e6190",
 		.data = &mv88e6xxx_table[MV88E6190],
diff --git a/drivers/net/phy/mv88e6xxx/chip.h b/drivers/net/phy/mv88e6xxx/chip.h
index 12037ca95c..30fdac9a9f 100644
--- a/drivers/net/phy/mv88e6xxx/chip.h
+++ b/drivers/net/phy/mv88e6xxx/chip.h
@@ -19,6 +19,7 @@ enum mv88e6xxx_family {
 	MV88E6XXX_FAMILY_6165,	/* 6123 6161 6165 */
 	MV88E6XXX_FAMILY_6185,	/* 6108 6121 6122 6131 6152 6155 6182 6185 */
 	MV88E6XXX_FAMILY_6320,	/* 6320 6321 */
+	MV88E6XXX_FAMILY_6250,	/* 6250 */
 	MV88E6XXX_FAMILY_6341,	/* 6141 6341 */
 	MV88E6XXX_FAMILY_6351,	/* 6171 6175 6350 6351 */
 	MV88E6XXX_FAMILY_6352,	/* 6172 6176 6240 6352 */
diff --git a/drivers/net/phy/mv88e6xxx/port.h b/drivers/net/phy/mv88e6xxx/port.h
index f5cf72932a..4bc5072948 100644
--- a/drivers/net/phy/mv88e6xxx/port.h
+++ b/drivers/net/phy/mv88e6xxx/port.h
@@ -90,6 +90,7 @@
 #define MV88E6XXX_PORT_SWITCH_ID_PROD_6191	0x1910
 #define MV88E6XXX_PORT_SWITCH_ID_PROD_6185	0x1a70
 #define MV88E6XXX_PORT_SWITCH_ID_PROD_6240	0x2400
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6250	0x2500
 #define MV88E6XXX_PORT_SWITCH_ID_PROD_6290	0x2900
 #define MV88E6XXX_PORT_SWITCH_ID_PROD_6321	0x3100
 #define MV88E6XXX_PORT_SWITCH_ID_PROD_6141	0x3400
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

