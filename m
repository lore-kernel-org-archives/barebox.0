Delivery-date: Tue, 25 Mar 2025 16:54:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6bQ-0044Lm-28
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 16:54:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6bO-0005aD-RA
	for lore@pengutronix.de; Tue, 25 Mar 2025 16:54:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LBoSSvgJbv4mjHTs2j5CoHczOWlD87XwHVUCA5vhMmk=; b=B+52YTQ7fc+gXJ8FPg22t4dQlM
	CbK0H8rlsEkNWPyYViBFkXgPlrWxbmU0pao9KeVToKV8g59xcDCogpx9HlHcAAgmucoMGqHWU6j5X
	IaHZGp8jLu7iujzfbkClWe4Ncu2SVTAI1ywU0uG1UXIb5bRqSMhO8o+YRjH0Oa8YkW46WLXhjIl37
	soqWdsDrTMKEc0c0z5eQHZHV9PxR7DW0OGg9MAxITRo20y1ei5k8C65TipZGfz1EnaKdCpoR1CCw9
	TGGbDsDDcSpwtAUoXPvs7xzJujbsyUaBRAJZZv0ybjL1I4lhDeUC3Lg2ZGHc+WIOmzn9+ZLunw5vl
	tT1PF8Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6aZ-00000006OOz-1vbK;
	Tue, 25 Mar 2025 15:53:15 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6aW-00000006OOb-3d2c
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 15:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742917988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LBoSSvgJbv4mjHTs2j5CoHczOWlD87XwHVUCA5vhMmk=;
	b=H0qvUdg7DcwxZ9HxN9K2RFdii5v7foBRA14EtR8Yflov5d+iv4ysLBPY8kPGHo90Wfwx33
	PHLmUEQnWcAie99ts8wJOCsJGms1+gswry6BR1Fdm388+svMI3S7zY2j8/4QGUnDo8Xxyo
	8PiEE/Yvu5fh7mNjWDAeVCeUVASvqPAm9KNiaFCmA9cZkJCUujV9D25Ym5vBQbivjgFqLn
	Zpm574aDXw3YYsgslQeu4l9u5rgGCvo4bHQzKwMCJZDXsA+mMytYEntqe74sxlHeqvvwOC
	BRoorK8G5iLup+FZxg/IUUyRXcBCjyH/LKAMdhFKZt3y6ca7JmmU+bmnmxkSVA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id a5daae44 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 16:53:08 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 16:52:58 +0100
Message-ID: <20250325155258.31869-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_085313_390376_A6F4B9E4 
X-CRM114-Status: GOOD (  21.02  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: add explicit fallthrough and break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace existing fallthrough comments with the `fallthrough;` pseudo-keyword.
Add a few break statement when the last case of a switch is not empty, so it
will not be forgot when a new case is added at the end.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 arch/arm/cpu/interrupts_64.c                 | 6 +++---
 arch/arm/mach-omap/omap3_generic.c           | 8 ++------
 common/bootsource.c                          | 8 ++++----
 drivers/i2c/busses/i2c-designware.c          | 3 ++-
 drivers/i2c/busses/i2c-omap.c                | 3 ++-
 drivers/mfd/rave-sp.c                        | 5 +++--
 drivers/net/e1000/main.c                     | 7 +++----
 drivers/net/phy/mv88e6xxx/port.c             | 4 ++--
 drivers/net/usb/usbnet.c                     | 2 +-
 drivers/pci/pci-imx6.c                       | 4 ++--
 drivers/serial/serial_ns16550_pci.c          | 7 +++++--
 drivers/usb/gadget/epautoconf.c              | 3 ++-
 drivers/usb/gadget/function/f_mass_storage.c | 2 +-
 drivers/usb/gadget/function/u_serial.c       | 2 +-
 drivers/usb/host/xhci.c                      | 3 ++-
 drivers/usb/musb/musb_core.c                 | 2 +-
 drivers/usb/musb/musb_gadget_ep0.c           | 7 ++++---
 drivers/usb/musb/musb_host.c                 | 6 ++++--
 fs/jffs2/readinode.c                         | 2 +-
 lib/xymodem.c                                | 2 +-
 20 files changed, 46 insertions(+), 40 deletions(-)

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index 8933cfeb42..4d4ef2bab8 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -212,13 +212,13 @@ static int aarch64_init_vectors(void)
 	switch (el) {
 	case 3:
 		asm volatile("msr vbar_el3, %0" : : "r" (&vectors) : "cc");
-		/* Fall through */
+		fallthrough;
 	case 2:
 		asm volatile("msr vbar_el2, %0" : : "r" (&vectors) : "cc");
-		/* Fall through */
+		fallthrough;
 	case 1:
 		asm volatile("msr vbar_el1, %0" : : "r" (&vectors) : "cc");
-		/* Fall through */
+		fallthrough;
 	default:
 		break;
 	}
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index f69122b580..33f78dd2d5 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -117,11 +117,9 @@ u32 get_cpu_rev(void)
 			retval = OMAP36XX_ES1_1;
 			break;
 		case 2:
-			/*
-			 * Fall through the default case.
-			 */
 		default:
 			retval = OMAP36XX_ES1_2;
+			break;
 		}
 		break;
 	case CPU_3430:
@@ -149,11 +147,9 @@ u32 get_cpu_rev(void)
 				retval = OMAP34XX_ES3;
 				break;
 			case 4:
-				/*
-				 * Same as default case
-				 */
 			default:
 				retval = OMAP34XX_ES3_1;
+				break;
 			}
 		}
 	}
diff --git a/common/bootsource.c b/common/bootsource.c
index 4bccdfdb70..d054427c6e 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -58,10 +58,10 @@ const char *bootsource_get_alias_stem(enum bootsource src)
 	case BOOTSOURCE_SPI_EEPROM:
 	case BOOTSOURCE_SPI_NOR:
 		return bootsource_str[BOOTSOURCE_SPI];
-	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
-	case BOOTSOURCE_I2C:	/* FALLTHROUGH */
-	case BOOTSOURCE_MMC:	/* FALLTHROUGH */
-	case BOOTSOURCE_SPI:	/* FALLTHROUGH */
+	case BOOTSOURCE_SERIAL:
+	case BOOTSOURCE_I2C:
+	case BOOTSOURCE_MMC:
+	case BOOTSOURCE_SPI:
 	case BOOTSOURCE_CAN:
 		return bootsource_str[src];
 	default:
diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index 3ba10e172a..83bf0ec3e9 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -565,7 +565,8 @@ static int i2c_dw_probe(struct device *pdev)
 	default:
 		dev_warn(pdev, "requested bitrate (%d) is not supported.\n"
 			 " Falling back to 100kHz", bitrate);
-	case 100000:		/* FALLTHROUGH */
+		fallthrough;
+	case 100000:
 		ic_con = DW_IC_CON_SPEED_STD;
 		break;
 	}
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 0ee4c70de5..a1a6cefd60 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1123,7 +1123,7 @@ i2c_omap_probe(struct device *pdev)
 		major = OMAP_I2C_REV_SCHEME_0_MAJOR(i2c_omap->rev);
 		break;
 	case OMAP_I2C_SCHEME_1:
-		/* FALLTHROUGH */
+		fallthrough;
 	default:
 		i2c_omap->regs = (u8 *)reg_map_ip_v2;
 		rev = (rev << 16) |
@@ -1131,6 +1131,7 @@ i2c_omap_probe(struct device *pdev)
 		minor = OMAP_I2C_REV_SCHEME_1_MINOR(rev);
 		major = OMAP_I2C_REV_SCHEME_1_MAJOR(rev);
 		i2c_omap->rev = rev;
+		break;
 	}
 
 	i2c_omap->errata = 0;
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index c7968b75f5..ff21a81026 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -237,9 +237,10 @@ static void *stuff(unsigned char *dest, const unsigned char *src, size_t n)
 		case RAVE_SP_ETX:
 		case RAVE_SP_DLE:
 			*dest++ = RAVE_SP_DLE;
-			/* FALLTHROUGH */
+			fallthrough;
 		default:
 			*dest++ = byte;
+			break;
 		}
 	}
 
@@ -497,7 +498,7 @@ static int rave_sp_receive_buf(struct serdev_device *serdev,
 			 * deframer buffer
 			 */
 
-			/* FALLTHROUGH */
+			fallthrough;
 
 		case RAVE_SP_EXPECT_ESCAPED_DATA:
 			if (deframer->length == sizeof(deframer->data)) {
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 1f2f6fbe0b..08d8fba43b 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -304,7 +304,7 @@ static bool e1000_is_second_port(struct e1000_hw *hw)
 	case e1000_82571:
 		if (e1000_read_reg(hw, E1000_STATUS) & E1000_STATUS_FUNC_1)
 			return true;
-		/* Fallthrough */
+		fallthrough;
 	default:
 		return false;
 	}
@@ -785,7 +785,7 @@ static int e1000_open(struct eth_device *edev)
 		reg_data = e1000_read_reg_array(hw, E1000_FFLT, 1);
 		reg_data &= ~0x00100000;
 		e1000_write_reg_array(hw, E1000_FFLT, 1, reg_data);
-		/* Fall through */
+		fallthrough;
 	case e1000_82571:
 	case e1000_82572:
 	case e1000_ich8lan:
@@ -2795,8 +2795,7 @@ static int32_t e1000_get_phy_cfg_done(struct e1000_hw *hw)
 		/* Separate *_CFG_DONE_* bit for each port */
 		if (e1000_is_second_port(hw))
 			cfg_mask = E1000_EEPROM_CFG_DONE_PORT_1;
-		/* Fall Through */
-
+		fallthrough;
 	case e1000_82571:
 	case e1000_82572:
 	case e1000_igb:
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
index 2b3d86ddda..24b248e39d 100644
--- a/drivers/net/phy/mv88e6xxx/port.c
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -218,7 +218,7 @@ static int mv88e6xxx_port_set_speed(struct mv88e6xxx_chip *chip, int port,
 			MV88E6390_PORT_MAC_CTL_ALTSPEED;
 		break;
 	case 10000:
-		/* all bits set, fall through... */
+		/* all bits set */
 		fallthrough;
 	case SPEED_UNFORCED:
 		ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_UNFORCED;
@@ -619,7 +619,7 @@ int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
 					  status);
 			switch (i) {
 			case 4:
-			case 5:	/* FALLTHROUGH */
+			case 5:
 				if (cmode == MV88E6165_PORT_STS_CMODE_SGMII) {
 					/*
 					 * Port is configured to SGMII
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 7f6b13198f..91ce1f00fa 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -37,7 +37,7 @@ int usbnet_get_endpoints(struct usbnet *dev)
 				if (!usb_endpoint_dir_in(e))
 					continue;
 				intr = 1;
-				/* FALLTHROUGH */
+				fallthrough;
 			case USB_ENDPOINT_XFER_BULK:
 				break;
 			default:
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index ac62d961d9..17a572722d 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -304,7 +304,7 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 
 	switch (imx6_pcie->drvdata->variant) {
 	case IMX6QP:
-	case IMX6Q:		/* FALLTHROUGH */
+	case IMX6Q:
 		/* power up core phy and enable ref clock */
 		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 		gpr1 &= ~IMX6Q_GPR1_PCIE_TEST_PD;
@@ -481,7 +481,7 @@ static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
 		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 		break;
 	case IMX6QP:
-	case IMX6Q:	/* FALLTHROUGH */
+	case IMX6Q:
 		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 		gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
 		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
diff --git a/drivers/serial/serial_ns16550_pci.c b/drivers/serial/serial_ns16550_pci.c
index f82b5797ce..6f19dff740 100644
--- a/drivers/serial/serial_ns16550_pci.c
+++ b/drivers/serial/serial_ns16550_pci.c
@@ -561,12 +561,13 @@ pci_timedia_setup(struct serial_private *priv,
 		break;
 	case 3:
 		offset = board->uart_offset;
-		/* FALLTHROUGH */
+		fallthrough;
 	case 4: /* BAR 2 */
 	case 5: /* BAR 3 */
 	case 6: /* BAR 4 */
 	case 7: /* BAR 5 */
 		bar = idx - 2;
+		break;
 	}
 
 	return setup_port(priv, port, bar, offset, board->reg_shift);
@@ -592,6 +593,7 @@ titan_400l_800l_setup(struct serial_private *priv,
 	default:
 		bar = 4;
 		offset = (idx - 2) * board->uart_offset;
+		break;
 	}
 
 	return setup_port(priv, port, bar, offset, board->reg_shift);
@@ -745,7 +747,7 @@ static int pci_netmos_init(struct pci_dev *dev)
 			dev->subsystem_device == 0x0299)
 		return 0;
 
-	switch (dev->device) { /* FALLTHROUGH on all */
+	switch (dev->device) {
 	case PCI_DEVICE_ID_NETMOS_9904:
 	case PCI_DEVICE_ID_NETMOS_9912:
 	case PCI_DEVICE_ID_NETMOS_9922:
@@ -853,6 +855,7 @@ static int pci_ite887x_init(struct pci_dev *dev)
 	default:
 		moan_device("Unknown ITE887x", dev);
 		ret = -ENODEV;
+		break;
 	}
 
 	/* configure all serial ports */
diff --git a/drivers/usb/gadget/epautoconf.c b/drivers/usb/gadget/epautoconf.c
index ff16abaf12..fc76a1d443 100644
--- a/drivers/usb/gadget/epautoconf.c
+++ b/drivers/usb/gadget/epautoconf.c
@@ -86,6 +86,7 @@ ep_matches (
 			case USB_ENDPOINT_XFER_ISOC:
 				if ('s' != tmp[2])	// != "-iso"
 					return 0;
+				break;
 			}
 		} else {
 			tmp = ep->name + strlen (ep->name);
@@ -134,7 +135,7 @@ ep_matches (
 		/* INT:  limit 64 bytes full speed, 1024 high/super speed */
 		if (!gadget_is_dualspeed(gadget) && max > 64)
 			return 0;
-		/* FALLTHROUGH */
+		fallthrough;
 
 	case USB_ENDPOINT_XFER_ISOC:
 		/* ISO:  limit 1023 bytes full speed, 1024 high/super speed */
diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index e099123cea..e5d10a3e3e 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -1986,7 +1986,7 @@ static int do_scsi_command(struct fsg_common *common)
 	case SCSI_RELEASE:
 	case SCSI_RESERVE:
 	case SCSI_SEND_DIAG:
-		/* Fall through */
+		fallthrough;
 
 	default:
 unknown_cmnd:
diff --git a/drivers/usb/gadget/function/u_serial.c b/drivers/usb/gadget/function/u_serial.c
index ca4e77c5ff..a8f30944e8 100644
--- a/drivers/usb/gadget/function/u_serial.c
+++ b/drivers/usb/gadget/function/u_serial.c
@@ -181,7 +181,7 @@ static void gs_write_complete(struct usb_ep *ep, struct usb_request *req)
 		/* presumably a transient fault */
 		pr_warning("%s: unexpected %s status %d\n",
 				__func__, ep->name, req->status);
-		/* FALL THROUGH */
+		fallthrough;
 	case 0:
 		/* normal completion */
 		break;
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index bad247ff9e..27d4353597 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -327,7 +327,7 @@ static unsigned int xhci_get_endpoint_interval(struct usb_device *udev,
 								  endpt_desc);
 			break;
 		}
-		/* Fall through - SS and HS isoc/int have same decoding */
+		fallthrough; /* SS and HS isoc/int have same decoding */
 
 	case USB_SPEED_SUPER:
 		if (usb_endpoint_xfer_int(endpt_desc) ||
@@ -343,6 +343,7 @@ static unsigned int xhci_get_endpoint_interval(struct usb_device *udev,
 								endpt_desc);
 			break;
 		}
+		fallthrough;
 		/*
 		 * Fall through for interrupt endpoint interval decoding
 		 * since it uses the same rules as low speed interrupt
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 9c6c4e7bb4..8ae0fe08ed 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -623,7 +623,7 @@ static int ep_config_from_table(struct musb *musb)
 	switch (fifo_mode) {
 	default:
 		fifo_mode = 0;
-		/* FALLTHROUGH */
+		fallthrough;
 	case 0:
 		cfg = mode_0_cfg;
 		n = ARRAY_SIZE(mode_0_cfg);
diff --git a/drivers/usb/musb/musb_gadget_ep0.c b/drivers/usb/musb/musb_gadget_ep0.c
index eed02a8581..268f67b820 100644
--- a/drivers/usb/musb/musb_gadget_ep0.c
+++ b/drivers/usb/musb/musb_gadget_ep0.c
@@ -736,7 +736,7 @@ irqreturn_t musb_g_ep0_irq(struct musb *musb)
 			musb_writeb(mbase, MUSB_TESTMODE,
 					musb->test_mode_nr);
 		}
-		/* FALLTHROUGH */
+		fallthrough;
 
 	case MUSB_EP0_STAGE_STATUSOUT:
 		/* end of sequence #1: write to host (TX state) */
@@ -768,7 +768,7 @@ irqreturn_t musb_g_ep0_irq(struct musb *musb)
 		 */
 		retval = IRQ_HANDLED;
 		musb->ep0_state = MUSB_EP0_STAGE_SETUP;
-		/* FALLTHROUGH */
+		fallthrough;
 
 	case MUSB_EP0_STAGE_SETUP:
 setup:
@@ -1025,7 +1025,7 @@ static int musb_g_ep0_halt(struct usb_ep *e, int value)
 	case MUSB_EP0_STAGE_ACKWAIT:	/* STALL for zero-length data */
 	case MUSB_EP0_STAGE_RX:		/* control-OUT data */
 		csr = musb_readw(regs, MUSB_CSR0);
-		/* FALLTHROUGH */
+		fallthrough;
 
 	/* It's also OK to issue stalls during callbacks when a non-empty
 	 * DATA stage buffer has been read (or even written).
@@ -1041,6 +1041,7 @@ static int musb_g_ep0_halt(struct usb_ep *e, int value)
 	default:
 		dev_dbg(musb->controller, "ep0 can't halt in state %d\n", musb->ep0_state);
 		status = -EINVAL;
+		break;
 	}
 
 cleanup:
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 8176accb4f..3b5fde42b1 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -824,7 +824,7 @@ static bool musb_h_ep0_continue(struct musb *musb, u16 len, struct urb *urb)
 			musb->ep0_stage = MUSB_EP0_OUT;
 			more = true;
 		}
-		/* FALLTHROUGH */
+		fallthrough;
 	case MUSB_EP0_OUT:
 		fifo_count = min_t(size_t, qh->maxpacket,
 				   urb->transfer_buffer_length -
@@ -1498,6 +1498,7 @@ int musb_urb_enqueue(
 		break;
 	default:
 		type_reg |= 0x40;
+		break;
 	}
 	qh->type_reg = type_reg;
 
@@ -1512,7 +1513,7 @@ int musb_urb_enqueue(
 			interval = max_t(u8, epd->bInterval, 1);
 			break;
 		}
-		/* FALLTHROUGH */
+		fallthrough;
 	case USB_ENDPOINT_XFER_ISOC:
 		/* ISO always uses logarithmic encoding */
 		interval = min_t(u8, epd->bInterval, 16);
@@ -1533,6 +1534,7 @@ int musb_urb_enqueue(
 		 * The upside of disabling it is simpler transfer scheduling.
 		 */
 		interval = 0;
+		break;
 	}
 	qh->intv_reg = interval;
 
diff --git a/fs/jffs2/readinode.c b/fs/jffs2/readinode.c
index 4634ee5818..d56001e5cb 100644
--- a/fs/jffs2/readinode.c
+++ b/fs/jffs2/readinode.c
@@ -1248,7 +1248,7 @@ static int jffs2_do_read_inode_internal(struct jffs2_sb_info *c,
 			dbg_readinode("symlink's target '%s' cached\n", f->target);
 		}
 
-		/* fall through... */
+		fallthrough;
 
 	case S_IFBLK:
 	case S_IFCHR:
diff --git a/lib/xymodem.c b/lib/xymodem.c
index 136741ab4a..84a9115771 100644
--- a/lib/xymodem.c
+++ b/lib/xymodem.c
@@ -461,7 +461,7 @@ static int xymodem_handle(struct xyz_ctxt *proto)
 			if (crc_tries++ > MAX_RETRIES_WITH_CRC)
 				proto->crc_mode = CRC_ADD8;
 			xy_putc(proto->cdev, invite);
-			/* Fall through */
+			fallthrough;
 		case PROTO_STATE_RECEIVE_BODY:
 			rc = xy_read_block(proto, &blk, 3 * SECOND);
 			if (rc > 0) {
-- 
2.48.1



