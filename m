Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jsw-0002T1-VE
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:32:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:31:53 +0200
Message-Id: <1301923918-28746-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
References: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] usb net: Add SMSC95xx support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/Kconfig    |    4 +
 drivers/net/usb/Makefile   |    1 +
 drivers/net/usb/smsc95xx.c |  938 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/usb/smsc95xx.h |  256 ++++++++++++
 4 files changed, 1199 insertions(+), 0 deletions(-)
 create mode 100644 drivers/net/usb/smsc95xx.c
 create mode 100644 drivers/net/usb/smsc95xx.h

diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
index 6482626..b53dcc7 100644
--- a/drivers/net/usb/Kconfig
+++ b/drivers/net/usb/Kconfig
@@ -8,4 +8,8 @@ config NET_USB_ASIX
 	select MIIDEV
 	bool "Asix compatible"
 
+config NET_USB_SMSC95XX
+	select MIIDEV
+	bool "SMSC95xx"
+
 endif
diff --git a/drivers/net/usb/Makefile b/drivers/net/usb/Makefile
index 555f8c2..564e44d 100644
--- a/drivers/net/usb/Makefile
+++ b/drivers/net/usb/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_NET_USB)			+= usbnet.o
 obj-$(CONFIG_NET_USB_ASIX)		+= asix.o
+obj-$(CONFIG_NET_USB_SMSC95XX)		+= smsc95xx.o
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
new file mode 100644
index 0000000..ae137fb
--- /dev/null
+++ b/drivers/net/usb/smsc95xx.c
@@ -0,0 +1,938 @@
+/***************************************************************************
+ *
+ * Copyright (C) 2007-2008 SMSC
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
+ *
+ *****************************************************************************/
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <net.h>
+#include <usb/usb.h>
+#include <usb/usbnet.h>
+#include <malloc.h>
+#include <asm/byteorder.h>
+#include <errno.h>
+#include <miidev.h>
+#include "smsc95xx.h"
+
+#define SMSC_CHIPNAME			"smsc95xx"
+#define SMSC_DRIVER_VERSION		"1.0.4"
+#define HS_USB_PKT_SIZE			(512)
+#define FS_USB_PKT_SIZE			(64)
+#define DEFAULT_HS_BURST_CAP_SIZE	(16 * 1024 + 5 * HS_USB_PKT_SIZE)
+#define DEFAULT_FS_BURST_CAP_SIZE	(6 * 1024 + 33 * FS_USB_PKT_SIZE)
+#define DEFAULT_BULK_IN_DELAY		(0x00002000)
+#define MAX_SINGLE_PACKET_SIZE		(2048)
+#define LAN95XX_EEPROM_MAGIC		(0x9500)
+#define EEPROM_MAC_OFFSET		(0x01)
+#define DEFAULT_TX_CSUM_ENABLE		(1)
+#define DEFAULT_RX_CSUM_ENABLE		(1)
+#define SMSC95XX_INTERNAL_PHY_ID	(1)
+#define SMSC95XX_TX_OVERHEAD		(8)
+#define SMSC95XX_TX_OVERHEAD_CSUM	(12)
+
+#define ETH_ALEN 6
+#define NET_IP_ALIGN	2
+#define ETH_FRAME_LEN	1514	/* Max. octets in frame sans FCS */
+#define ETH_P_8021Q	0x8100	/* 802.1Q VLAN Extended Header  */
+
+#define netdev_warn(x, fmt, arg...)	printf(fmt, ##arg)
+#ifdef DEBUG
+#define netif_dbg(x, y, z, fmt, arg...)	printf(fmt, ##arg)
+#else
+#define netif_dbg(x, y, z, fmt, arg...)	do {} while(0)
+#endif
+
+#define FLOW_CTRL_RX	0x02
+
+struct smsc95xx_priv {
+	u32 mac_cr;
+	int use_tx_csum;
+	int use_rx_csum;
+};
+
+static int turbo_mode = 0;
+
+static int smsc95xx_read_reg(struct usbnet *dev, u32 index, u32 *data)
+{
+	int ret;
+
+	ret = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
+		USB_VENDOR_REQUEST_READ_REGISTER,
+		USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
+		00, index, data, 4, USB_CTRL_GET_TIMEOUT);
+
+	if (ret < 0)
+		netdev_warn(dev->net, "Failed to read register index 0x%08x\n", index);
+
+	le32_to_cpus(data);
+
+	debug("%s: 0x%08x 0x%08x\n", __func__, index, *data);
+
+	return ret;
+}
+
+static int smsc95xx_write_reg(struct usbnet *dev, u32 index, u32 data)
+{
+	int ret;
+
+	cpu_to_le32s(&data);
+
+	ret = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, 0),
+		USB_VENDOR_REQUEST_WRITE_REGISTER,
+		USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
+		00, index, &data, 4, USB_CTRL_SET_TIMEOUT);
+
+	if (ret < 0)
+		netdev_warn(dev->net, "Failed to write register index 0x%08x\n", index);
+
+	debug("%s: 0x%08x 0x%08x\n", __func__, index, data);
+
+	return ret;
+}
+
+/* Loop until the read is completed with timeout
+ * called with phy_mutex held */
+static int smsc95xx_phy_wait_not_busy(struct usbnet *dev)
+{
+	u32 val;
+	int timeout = 1000;
+
+	do {
+		smsc95xx_read_reg(dev, MII_ADDR, &val);
+		if (!(val & MII_BUSY_))
+			return 0;
+		udelay(100);
+	} while (--timeout);
+
+	return -EIO;
+}
+
+static int smsc95xx_mdio_read(struct mii_device *mdev, int phy_id, int idx)
+{
+	struct eth_device *eth = mdev->edev;
+	struct usbnet *dev = eth->priv;
+	u32 val, addr;
+
+	/* confirm MII not busy */
+	if (smsc95xx_phy_wait_not_busy(dev)) {
+		netdev_warn(dev->net, "MII is busy in smsc95xx_mdio_read\n");
+		return -EIO;
+	}
+
+	/* set the address, index & direction (read from PHY) */
+	addr = (phy_id << 11) | (idx << 6) | MII_READ_;
+	smsc95xx_write_reg(dev, MII_ADDR, addr);
+
+	if (smsc95xx_phy_wait_not_busy(dev)) {
+		netdev_warn(dev->net, "Timed out reading MII reg %02X\n", idx);
+		return -EIO;
+	}
+
+	smsc95xx_read_reg(dev, MII_DATA, &val);
+
+	return val & 0xffff;
+}
+
+static int smsc95xx_mdio_write(struct mii_device *mdev, int phy_id, int idx,
+		int regval)
+{
+	struct eth_device *eth = mdev->edev;
+	struct usbnet *dev = eth->priv;
+	u32 val, addr;
+
+	/* confirm MII not busy */
+	if (smsc95xx_phy_wait_not_busy(dev)) {
+		netdev_warn(dev->net, "MII is busy in smsc95xx_mdio_write\n");
+		return -EBUSY;
+	}
+
+	val = regval;
+	smsc95xx_write_reg(dev, MII_DATA, val);
+
+	/* set the address, index & direction (write to PHY) */
+	addr = (phy_id << 11) | (idx << 6) | MII_WRITE_;
+	smsc95xx_write_reg(dev, MII_ADDR, addr);
+
+	if (smsc95xx_phy_wait_not_busy(dev))
+		netdev_warn(dev->net, "Timed out writing MII reg %02X\n", idx);
+
+	return 0;
+}
+
+static int smsc95xx_wait_eeprom(struct usbnet *dev)
+{
+	int timeout = 1000;
+	u32 val;
+
+	do {
+		smsc95xx_read_reg(dev, E2P_CMD, &val);
+		if (!(val & E2P_CMD_BUSY_) || (val & E2P_CMD_TIMEOUT_))
+			break;
+		udelay(100);
+	} while (--timeout);
+
+	if (val & (E2P_CMD_TIMEOUT_ | E2P_CMD_BUSY_)) {
+		netdev_warn(dev->net, "EEPROM read operation timeout\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int smsc95xx_eeprom_confirm_not_busy(struct usbnet *dev)
+{
+	int timeout = 1000;
+	u32 val;
+
+	do {
+		smsc95xx_read_reg(dev, E2P_CMD, &val);
+
+		if (!(val & E2P_CMD_BUSY_))
+			return 0;
+		udelay(100);
+	} while (--timeout);
+
+	netdev_warn(dev->net, "EEPROM is busy\n");
+	return -EIO;
+}
+
+static int smsc95xx_read_eeprom(struct usbnet *dev, u32 offset, u32 length,
+				u8 *data)
+{
+	u32 val;
+	int i, ret;
+
+	ret = smsc95xx_eeprom_confirm_not_busy(dev);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < length; i++) {
+		val = E2P_CMD_BUSY_ | E2P_CMD_READ_ | (offset & E2P_CMD_ADDR_);
+		smsc95xx_write_reg(dev, E2P_CMD, val);
+
+		ret = smsc95xx_wait_eeprom(dev);
+		if (ret < 0)
+			return ret;
+
+		smsc95xx_read_reg(dev, E2P_DATA, &val);
+
+		data[i] = val & 0xFF;
+		offset++;
+	}
+
+	return 0;
+}
+
+#define GPIO_CFG_GPEN_		(0xff000000)
+#define GPIO_CFG_GPO0_EN_	(0x01000000)
+#define GPIO_CFG_GPTYPE		(0x00ff0000)
+#define GPIO_CFG_GPO0_TYPE	(0x00010000)
+#define GPIO_CFG_GPDIR_		(0x0000ff00)
+#define GPIO_CFG_GPO0_DIR_	(0x00000100)
+#define GPIO_CFG_GPDATA_	(0x000000ff)
+#define GPIO_CFG_GPO0_DATA_	(0x00000001)
+#define LED_GPIO_CFG_FDX_LED	(0x00010000)
+#define LED_GPIO_CFG_GPBUF_08_	(0x00000100)
+#define LED_GPIO_CFG_GPDIR_08_	(0x00000010)
+#define LED_GPIO_CFG_GPDATA_08_	(0x00000001)
+#define LED_GPIO_CFG_GPCTL_LED_	(0x00000001)
+
+#if 0
+static int smsc95xx_enable_gpio(struct usbnet *dev, int gpio, int type)
+{
+	int ret = -1;
+	u32 val, reg;
+	int dir_shift, enable_shift, type_shift;
+
+	if (gpio < 8) {
+		reg = GPIO_CFG;
+		enable_shift = 24 + gpio;
+		type_shift = 16 + gpio;
+		dir_shift = 8 + gpio;
+	} else {
+		gpio -= 8;
+		reg = LED_GPIO_CFG;
+		enable_shift = 16 + gpio * 4;
+		type_shift = 8 + gpio;
+		dir_shift = 4 + gpio;
+	}
+
+	ret = smsc95xx_read_reg(dev, reg, &val);
+	if (ret < 0)
+		return ret;
+
+	val &= ~(1 << enable_shift);
+
+	if (type)
+		val &= ~(1 << type_shift);
+	else
+		val |= (1 << type_shift);
+
+	val |= (1 << dir_shift);
+
+	ret = smsc95xx_write_reg(dev, reg, val);
+
+	return ret < 0 ? ret : 0;
+}
+
+static int smsc95xx_gpio_set_value(struct usbnet *dev, int gpio, int value)
+{
+	int ret = -1;
+	u32 tmp, reg;
+
+	if (gpio > 10)
+		return -EINVAL;
+
+	smsc95xx_enable_gpio(dev, gpio, 0);
+
+	if (gpio < 8) {
+		reg = GPIO_CFG;
+	} else {
+		reg = LED_GPIO_CFG;
+		gpio -= 8;
+	}
+
+	ret = smsc95xx_read_reg(dev, reg, &tmp);
+	if (ret < 0)
+		return ret;
+
+	if (value)
+		tmp |= 1 << gpio;
+	else
+		tmp &= ~(1 << gpio);
+
+	ret = smsc95xx_write_reg(dev, reg, tmp);
+
+	return ret < 0 ? ret : 0;
+}
+#endif
+
+static void smsc95xx_set_multicast(struct usbnet *dev)
+{
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
+	u32 hash_hi = 0;
+	u32 hash_lo = 0;
+
+	netif_dbg(dev, drv, dev->net, "receive own packets only\n");
+	pdata->mac_cr &= ~(MAC_CR_PRMS_ | MAC_CR_MCPAS_ | MAC_CR_HPFILT_);
+
+	/* Initiate async writes, as we can't wait for completion here */
+	smsc95xx_write_reg(dev, HASHH, hash_hi);
+	smsc95xx_write_reg(dev, HASHL, hash_lo);
+	smsc95xx_write_reg(dev, MAC_CR, pdata->mac_cr);
+}
+
+/* Enable or disable Tx & Rx checksum offload engines */
+static int smsc95xx_set_csums(struct usbnet *dev)
+{
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
+	u32 read_buf;
+	int ret = smsc95xx_read_reg(dev, COE_CR, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read COE_CR: %d\n", ret);
+		return ret;
+	}
+
+	if (pdata->use_tx_csum)
+		read_buf |= Tx_COE_EN_;
+	else
+		read_buf &= ~Tx_COE_EN_;
+
+	if (pdata->use_rx_csum)
+		read_buf |= Rx_COE_EN_;
+	else
+		read_buf &= ~Rx_COE_EN_;
+
+	ret = smsc95xx_write_reg(dev, COE_CR, read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write COE_CR: %d\n", ret);
+		return ret;
+	}
+
+	netif_dbg(dev, hw, dev->net, "COE_CR = 0x%08x\n", read_buf);
+	return 0;
+}
+
+static int smsc95xx_set_ethaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct usbnet *udev = container_of(edev, struct usbnet, edev);
+
+	u32 addr_lo = adr[0] | adr[1] << 8 |
+		adr[2] << 16 | adr[3] << 24;
+	u32 addr_hi = adr[4] | adr[5] << 8;
+	int ret;
+
+	ret = smsc95xx_write_reg(udev, ADDRL, addr_lo);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write ADDRL: %d\n", ret);
+		return ret;
+	}
+
+	ret = smsc95xx_write_reg(udev, ADDRH, addr_hi);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write ADDRH: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int smsc95xx_get_ethaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct usbnet *udev = container_of(edev, struct usbnet, edev);
+
+	/* try reading mac address from EEPROM */
+	if (smsc95xx_read_eeprom(udev, EEPROM_MAC_OFFSET, ETH_ALEN,
+			adr) == 0) {
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+/* starts the TX path */
+static void smsc95xx_start_tx_path(struct usbnet *dev)
+{
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
+	u32 reg_val;
+
+	/* Enable Tx at MAC */
+	pdata->mac_cr |= MAC_CR_TXEN_;
+
+	smsc95xx_write_reg(dev, MAC_CR, pdata->mac_cr);
+
+	/* Enable Tx at SCSRs */
+	reg_val = TX_CFG_ON_;
+	smsc95xx_write_reg(dev, TX_CFG, reg_val);
+}
+
+/* Starts the Receive path */
+static void smsc95xx_start_rx_path(struct usbnet *dev)
+{
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
+
+	pdata->mac_cr |= MAC_CR_RXEN_;
+
+	smsc95xx_write_reg(dev, MAC_CR, pdata->mac_cr);
+}
+
+static int smsc95xx_phy_initialize(struct usbnet *dev)
+{
+	int timeout = 0;
+	int phy_id = 1; /* FIXME */
+	uint16_t val, bmcr;
+
+	/* Initialize MII structure */
+	dev->miidev.read = smsc95xx_mdio_read;
+	dev->miidev.write = smsc95xx_mdio_write;
+	dev->miidev.address = 1; /* FIXME: asix_get_phy_addr(dev); */
+	dev->miidev.flags = 0;
+	dev->miidev.edev = &dev->edev;
+//	dev->miidev.name = dev->edev.name;
+
+	/* reset phy and wait for reset to complete */
+	smsc95xx_mdio_write(&dev->miidev, phy_id, MII_BMCR, BMCR_RESET);
+
+	do {
+		udelay(10 * 1000);
+		bmcr = smsc95xx_mdio_read(&dev->miidev, phy_id, MII_BMCR);
+		timeout++;
+	} while ((bmcr & MII_BMCR) && (timeout < 100));
+
+	if (timeout >= 100) {
+		netdev_warn(dev->net, "timeout on PHY Reset");
+		return -EIO;
+	}
+
+	smsc95xx_mdio_write(&dev->miidev, phy_id, MII_ADVERTISE,
+		ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP |
+		ADVERTISE_PAUSE_ASYM);
+
+	/* read to clear */
+	val = smsc95xx_mdio_read(&dev->miidev, phy_id, PHY_INT_SRC);
+
+	smsc95xx_mdio_write(&dev->miidev, phy_id, PHY_INT_MASK,
+		PHY_INT_MASK_DEFAULT_);
+
+	netif_dbg(dev, ifup, dev->net, "phy initialised successfully\n");
+	return 0;
+}
+
+static int smsc95xx_reset(struct usbnet *dev)
+{
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
+	u32 read_buf, write_buf, burst_cap = 0;
+	int ret = 0, timeout;
+
+	netif_dbg(dev, ifup, dev->net, "entering %s\n", __func__);
+
+	write_buf = HW_CFG_LRST_;
+	ret = smsc95xx_write_reg(dev, HW_CFG, write_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write HW_CFG_LRST_ bit in HW_CFG register, ret = %d\n",
+			    ret);
+		return ret;
+	}
+
+	timeout = 0;
+	do {
+		ret = smsc95xx_read_reg(dev, HW_CFG, &read_buf);
+		if (ret < 0) {
+			netdev_warn(dev->net, "Failed to read HW_CFG: %d\n", ret);
+			return ret;
+		}
+		udelay(1000 * 10);
+		timeout++;
+	} while ((read_buf & HW_CFG_LRST_) && (timeout < 100));
+
+	if (timeout >= 100) {
+		netdev_warn(dev->net, "timeout waiting for completion of Lite Reset\n");
+		return ret;
+	}
+
+	write_buf = PM_CTL_PHY_RST_;
+	ret = smsc95xx_write_reg(dev, PM_CTRL, write_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write PM_CTRL: %d\n", ret);
+		return ret;
+	}
+
+	timeout = 0;
+	do {
+		ret = smsc95xx_read_reg(dev, PM_CTRL, &read_buf);
+		if (ret < 0) {
+			netdev_warn(dev->net, "Failed to read PM_CTRL: %d\n", ret);
+			return ret;
+		}
+		udelay(1000 * 10);
+		timeout++;
+	} while ((read_buf & PM_CTL_PHY_RST_) && (timeout < 100));
+
+	if (timeout >= 100) {
+		netdev_warn(dev->net, "timeout waiting for PHY Reset\n");
+		return ret;
+	}
+
+	ret = smsc95xx_read_reg(dev, HW_CFG, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read HW_CFG: %d\n", ret);
+		return ret;
+	}
+
+	netif_dbg(dev, ifup, dev->net,
+		  "Read Value from HW_CFG : 0x%08x\n", read_buf);
+
+	read_buf |= HW_CFG_BIR_;
+
+	ret = smsc95xx_write_reg(dev, HW_CFG, read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write HW_CFG_BIR_ bit in HW_CFG register, ret = %d\n",
+			    ret);
+		return ret;
+	}
+
+	ret = smsc95xx_read_reg(dev, HW_CFG, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read HW_CFG: %d\n", ret);
+		return ret;
+	}
+	netif_dbg(dev, ifup, dev->net,
+		  "Read Value from HW_CFG after writing HW_CFG_BIR_: 0x%08x\n",
+		  read_buf);
+
+	if (!turbo_mode) {
+		burst_cap = 0;
+		dev->rx_urb_size = MAX_SINGLE_PACKET_SIZE;
+	} else if (0) { /* highspeed */
+		burst_cap = DEFAULT_HS_BURST_CAP_SIZE / HS_USB_PKT_SIZE;
+		dev->rx_urb_size = DEFAULT_HS_BURST_CAP_SIZE;
+	} else {
+		burst_cap = DEFAULT_FS_BURST_CAP_SIZE / FS_USB_PKT_SIZE;
+		dev->rx_urb_size = DEFAULT_FS_BURST_CAP_SIZE;
+	}
+
+	netif_dbg(dev, ifup, dev->net,
+		  "rx_urb_size=%ld\n", (ulong)dev->rx_urb_size);
+
+	ret = smsc95xx_write_reg(dev, BURST_CAP, burst_cap);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write BURST_CAP: %d\n", ret);
+		return ret;
+	}
+
+	ret = smsc95xx_read_reg(dev, BURST_CAP, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read BURST_CAP: %d\n", ret);
+		return ret;
+	}
+	netif_dbg(dev, ifup, dev->net,
+		  "Read Value from BURST_CAP after writing: 0x%08x\n",
+		  read_buf);
+
+	read_buf = DEFAULT_BULK_IN_DELAY;
+	ret = smsc95xx_write_reg(dev, BULK_IN_DLY, read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "ret = %d\n", ret);
+		return ret;
+	}
+
+	ret = smsc95xx_read_reg(dev, BULK_IN_DLY, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read BULK_IN_DLY: %d\n", ret);
+		return ret;
+	}
+	netif_dbg(dev, ifup, dev->net,
+		  "Read Value from BULK_IN_DLY after writing: 0x%08x\n",
+		  read_buf);
+
+	ret = smsc95xx_read_reg(dev, HW_CFG, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read HW_CFG: %d\n", ret);
+		return ret;
+	}
+	netif_dbg(dev, ifup, dev->net,
+		  "Read Value from HW_CFG: 0x%08x\n", read_buf);
+
+	if (turbo_mode)
+		read_buf |= (HW_CFG_MEF_ | HW_CFG_BCE_);
+
+	read_buf &= ~HW_CFG_RXDOFF_;
+
+	/* set Rx data offset=2, Make IP header aligns on word boundary. */
+	read_buf |= NET_IP_ALIGN << 9;
+
+	ret = smsc95xx_write_reg(dev, HW_CFG, read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write HW_CFG register, ret=%d\n",
+			    ret);
+		return ret;
+	}
+
+	ret = smsc95xx_read_reg(dev, HW_CFG, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read HW_CFG: %d\n", ret);
+		return ret;
+	}
+	netif_dbg(dev, ifup, dev->net,
+		  "Read Value from HW_CFG after writing: 0x%08x\n", read_buf);
+
+	write_buf = 0xFFFFFFFF;
+	ret = smsc95xx_write_reg(dev, INT_STS, write_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write INT_STS register, ret=%d\n",
+			    ret);
+		return ret;
+	}
+
+	ret = smsc95xx_read_reg(dev, ID_REV, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read ID_REV: %d\n", ret);
+		return ret;
+	}
+	netif_dbg(dev, ifup, dev->net, "ID_REV = 0x%08x\n", read_buf);
+
+	/* Configure GPIO pins as LED outputs */
+	write_buf = LED_GPIO_CFG_SPD_LED | LED_GPIO_CFG_LNK_LED |
+		LED_GPIO_CFG_FDX_LED;
+	ret = smsc95xx_write_reg(dev, LED_GPIO_CFG, write_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write LED_GPIO_CFG register, ret=%d\n",
+			    ret);
+		return ret;
+	}
+
+	/* Init Tx */
+	write_buf = 0;
+	ret = smsc95xx_write_reg(dev, FLOW, write_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write FLOW: %d\n", ret);
+		return ret;
+	}
+
+	read_buf = AFC_CFG_DEFAULT;
+	ret = smsc95xx_write_reg(dev, AFC_CFG, read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write AFC_CFG: %d\n", ret);
+		return ret;
+	}
+
+	/* Don't need mac_cr_lock during initialisation */
+	ret = smsc95xx_read_reg(dev, MAC_CR, &pdata->mac_cr);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read MAC_CR: %d\n", ret);
+		return ret;
+	}
+
+	/* Init Rx */
+	/* Set Vlan */
+	write_buf = (u32)ETH_P_8021Q;
+	ret = smsc95xx_write_reg(dev, VLAN1, write_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write VAN1: %d\n", ret);
+		return ret;
+	}
+
+	ret = smsc95xx_set_csums(dev);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to set csum offload: %d\n", ret);
+		return ret;
+	}
+
+	smsc95xx_set_multicast(dev);
+
+	if (smsc95xx_phy_initialize(dev) < 0)
+		return -EIO;
+
+	ret = smsc95xx_read_reg(dev, INT_EP_CTL, &read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to read INT_EP_CTL: %d\n", ret);
+		return ret;
+	}
+
+	/* enable PHY interrupts */
+	read_buf |= INT_EP_CTL_PHY_INT_;
+
+	ret = smsc95xx_write_reg(dev, INT_EP_CTL, read_buf);
+	if (ret < 0) {
+		netdev_warn(dev->net, "Failed to write INT_EP_CTL: %d\n", ret);
+		return ret;
+	}
+
+	smsc95xx_start_tx_path(dev);
+	smsc95xx_start_rx_path(dev);
+
+	netif_dbg(dev, ifup, dev->net, "%s: return 0\n", __func__);
+	return 0;
+}
+
+static struct usbnet *usbnet_global;
+
+static int smsc95xx_bind(struct usbnet *dev)
+{
+	struct smsc95xx_priv *pdata = NULL;
+	int ret;
+
+	printf(SMSC_CHIPNAME " v" SMSC_DRIVER_VERSION "\n");
+
+	ret = usbnet_get_endpoints(dev);
+	if (ret < 0) {
+		netdev_warn(dev->net, "usbnet_get_endpoints failed: %d\n", ret);
+		return ret;
+	}
+
+	dev->data[0] = (unsigned long)malloc(sizeof(struct smsc95xx_priv));
+
+	pdata = (struct smsc95xx_priv *)(dev->data[0]);
+	if (!pdata) {
+		netdev_warn(dev->net, "Unable to allocate struct smsc95xx_priv\n");
+		return -ENOMEM;
+	}
+
+	pdata->use_tx_csum = DEFAULT_TX_CSUM_ENABLE;
+	pdata->use_rx_csum = DEFAULT_RX_CSUM_ENABLE;
+
+	/* Init all registers */
+	ret = smsc95xx_reset(dev);
+
+	dev->edev.get_ethaddr = smsc95xx_get_ethaddr;
+	dev->edev.set_ethaddr = smsc95xx_set_ethaddr;
+	mii_register(&dev->miidev);
+
+	return 0;
+}
+
+static void smsc95xx_unbind(struct usbnet *dev)
+{
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
+	if (pdata) {
+		netif_dbg(dev, ifdown, dev->net, "free pdata\n");
+		free(pdata);
+		pdata = NULL;
+		dev->data[0] = 0;
+	}
+
+	usbnet_global = NULL;
+}
+
+static int smsc95xx_rx_fixup(struct usbnet *dev, void *buf, int len)
+{
+	while (len > 0) {
+		u32 header, align_count;
+		unsigned char *packet;
+		u16 size;
+
+		memcpy(&header, buf, sizeof(header));
+		le32_to_cpus(&header);
+		buf += 4 + NET_IP_ALIGN;
+		len -= 4 + NET_IP_ALIGN;
+		packet = buf;
+
+		/* get the packet length */
+		size = (u16)((header & RX_STS_FL_) >> 16);
+		align_count = (4 - ((size + NET_IP_ALIGN) % 4)) % 4;
+
+		if (header & RX_STS_ES_) {
+			netif_dbg(dev, rx_err, dev->net,
+				  "Error header=0x%08x\n", header);
+		} else {
+			/* ETH_FRAME_LEN + 4(CRC) + 2(COE) + 4(Vlan) */
+			if (size > (ETH_FRAME_LEN + 12)) {
+				netif_dbg(dev, rx_err, dev->net,
+					  "size err header=0x%08x\n", header);
+				return 0;
+			}
+
+			/* last frame in this batch */
+			if (len == size) {
+				net_receive(buf, len - 4);
+				return 1;
+			}
+
+			net_receive(packet, len - 4);
+		}
+
+		len -= size;
+
+		/* padding bytes before the next frame starts */
+		if (len)
+			len -= align_count;
+	}
+
+	if (len < 0) {
+		netdev_warn(dev->net, "invalid rx length<0 %d\n", len);
+		return 0;
+	}
+
+	return 1;
+}
+#if 0
+static u32 smsc95xx_calc_csum_preamble(struct sk_buff *skb)
+{
+	int len = skb->data - skb->head;
+	u16 high_16 = (u16)(skb->csum_offset + skb->csum_start - len);
+	u16 low_16 = (u16)(skb->csum_start - len);
+	return (high_16 << 16) | low_16;
+}
+#endif
+static int smsc95xx_tx_fixup(struct usbnet *dev,
+                                void *buf, int len,
+                                void *nbuf, int *nlen)
+{
+	u32 tx_cmd_a, tx_cmd_b;
+
+	tx_cmd_a = (u32)(len) | TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;
+	cpu_to_le32s(&tx_cmd_a);
+	memcpy(nbuf, &tx_cmd_a, 4);
+
+	tx_cmd_b = (u32)(len);
+	cpu_to_le32s(&tx_cmd_b);
+	memcpy(nbuf + 4, &tx_cmd_b, 4);
+
+	memcpy(nbuf + 8, buf, len);
+
+	*nlen = len + 8;
+
+	return 0;
+}
+
+static struct driver_info smsc95xx_info = {
+	.description	= "smsc95xx USB 2.0 Ethernet",
+	.bind		= smsc95xx_bind,
+	.unbind		= smsc95xx_unbind,
+	.rx_fixup	= smsc95xx_rx_fixup,
+	.tx_fixup	= smsc95xx_tx_fixup,
+};
+
+static const struct usb_device_id products[] = {
+	{
+		/* SMSC9500 USB Ethernet Device */
+		USB_DEVICE(0x0424, 0x9500),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9505 USB Ethernet Device */
+		USB_DEVICE(0x0424, 0x9505),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9500A USB Ethernet Device */
+		USB_DEVICE(0x0424, 0x9E00),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9505A USB Ethernet Device */
+		USB_DEVICE(0x0424, 0x9E01),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9512/9514 USB Hub & Ethernet Device */
+		USB_DEVICE(0x0424, 0xec00),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9500 USB Ethernet Device (SAL10) */
+		USB_DEVICE(0x0424, 0x9900),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9505 USB Ethernet Device (SAL10) */
+		USB_DEVICE(0x0424, 0x9901),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9500A USB Ethernet Device (SAL10) */
+		USB_DEVICE(0x0424, 0x9902),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9505A USB Ethernet Device (SAL10) */
+		USB_DEVICE(0x0424, 0x9903),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9512/9514 USB Hub & Ethernet Device (SAL10) */
+		USB_DEVICE(0x0424, 0x9904),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9500A USB Ethernet Device (HAL) */
+		USB_DEVICE(0x0424, 0x9905),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9505A USB Ethernet Device (HAL) */
+		USB_DEVICE(0x0424, 0x9906),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9500 USB Ethernet Device (Alternate ID) */
+		USB_DEVICE(0x0424, 0x9907),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9500A USB Ethernet Device (Alternate ID) */
+		USB_DEVICE(0x0424, 0x9908),
+		.driver_info = &smsc95xx_info,
+	}, {
+		/* SMSC9512/9514 USB Hub & Ethernet Device (Alternate ID) */
+		USB_DEVICE(0x0424, 0x9909),
+		.driver_info = &smsc95xx_info,
+	},
+	{ },		/* END */
+};
+
+static struct usb_driver smsc95xx_driver = {
+	.name =		"smsc95xx",
+	.id_table =	products,
+	.probe =	usbnet_probe,
+	.disconnect =	usbnet_disconnect,
+};
+
+static int __init smsc95xx_init(void)
+{
+	return usb_driver_register(&smsc95xx_driver);
+}
+device_initcall(smsc95xx_init);
diff --git a/drivers/net/usb/smsc95xx.h b/drivers/net/usb/smsc95xx.h
new file mode 100644
index 0000000..86bc449
--- /dev/null
+++ b/drivers/net/usb/smsc95xx.h
@@ -0,0 +1,256 @@
+ /***************************************************************************
+ *
+ * Copyright (C) 2007-2008 SMSC
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
+ *
+ *****************************************************************************/
+
+#ifndef _SMSC95XX_H
+#define _SMSC95XX_H
+
+/* Tx command words */
+#define TX_CMD_A_DATA_OFFSET_		(0x001F0000)
+#define TX_CMD_A_FIRST_SEG_		(0x00002000)
+#define TX_CMD_A_LAST_SEG_		(0x00001000)
+#define TX_CMD_A_BUF_SIZE_		(0x000007FF)
+
+#define TX_CMD_B_CSUM_ENABLE		(0x00004000)
+#define TX_CMD_B_ADD_CRC_DISABLE_	(0x00002000)
+#define TX_CMD_B_DISABLE_PADDING_	(0x00001000)
+#define TX_CMD_B_PKT_BYTE_LENGTH_	(0x000007FF)
+
+/* Rx status word */
+#define RX_STS_FF_			(0x40000000)	/* Filter Fail */
+#define RX_STS_FL_			(0x3FFF0000)	/* Frame Length */
+#define RX_STS_ES_			(0x00008000)	/* Error Summary */
+#define RX_STS_BF_			(0x00002000)	/* Broadcast Frame */
+#define RX_STS_LE_			(0x00001000)	/* Length Error */
+#define RX_STS_RF_			(0x00000800)	/* Runt Frame */
+#define RX_STS_MF_			(0x00000400)	/* Multicast Frame */
+#define RX_STS_TL_			(0x00000080)	/* Frame too long */
+#define RX_STS_CS_			(0x00000040)	/* Collision Seen */
+#define RX_STS_FT_			(0x00000020)	/* Frame Type */
+#define RX_STS_RW_			(0x00000010)	/* Receive Watchdog */
+#define RX_STS_ME_			(0x00000008)	/* Mii Error */
+#define RX_STS_DB_			(0x00000004)	/* Dribbling */
+#define RX_STS_CRC_			(0x00000002)	/* CRC Error */
+
+/* SCSRs */
+#define ID_REV				(0x00)
+#define ID_REV_CHIP_ID_MASK_		(0xFFFF0000)
+#define ID_REV_CHIP_REV_MASK_		(0x0000FFFF)
+#define ID_REV_CHIP_ID_9500_		(0x9500)
+
+#define INT_STS				(0x08)
+#define INT_STS_TX_STOP_		(0x00020000)
+#define INT_STS_RX_STOP_		(0x00010000)
+#define INT_STS_PHY_INT_		(0x00008000)
+#define INT_STS_TXE_			(0x00004000)
+#define INT_STS_TDFU_			(0x00002000)
+#define INT_STS_TDFO_			(0x00001000)
+#define INT_STS_RXDF_			(0x00000800)
+#define INT_STS_GPIOS_			(0x000007FF)
+
+#define RX_CFG				(0x0C)
+#define RX_FIFO_FLUSH_			(0x00000001)
+
+#define TX_CFG				(0x10)
+#define TX_CFG_ON_			(0x00000004)
+#define TX_CFG_STOP_			(0x00000002)
+#define TX_CFG_FIFO_FLUSH_		(0x00000001)
+
+#define HW_CFG				(0x14)
+#define HW_CFG_BIR_			(0x00001000)
+#define HW_CFG_LEDB_			(0x00000800)
+#define HW_CFG_RXDOFF_			(0x00000600)
+#define HW_CFG_DRP_			(0x00000040)
+#define HW_CFG_MEF_			(0x00000020)
+#define HW_CFG_LRST_			(0x00000008)
+#define HW_CFG_PSEL_			(0x00000004)
+#define HW_CFG_BCE_			(0x00000002)
+#define HW_CFG_SRST_			(0x00000001)
+
+#define PM_CTRL				(0x20)
+#define PM_CTL_DEV_RDY_			(0x00000080)
+#define PM_CTL_SUS_MODE_		(0x00000060)
+#define PM_CTL_SUS_MODE_0		(0x00000000)
+#define PM_CTL_SUS_MODE_1		(0x00000020)
+#define PM_CTL_SUS_MODE_2		(0x00000060)
+#define PM_CTL_PHY_RST_			(0x00000010)
+#define PM_CTL_WOL_EN_			(0x00000008)
+#define PM_CTL_ED_EN_			(0x00000004)
+#define PM_CTL_WUPS_			(0x00000003)
+#define PM_CTL_WUPS_NO_			(0x00000000)
+#define PM_CTL_WUPS_ED_			(0x00000001)
+#define PM_CTL_WUPS_WOL_		(0x00000002)
+#define PM_CTL_WUPS_MULTI_		(0x00000003)
+
+#define LED_GPIO_CFG			(0x24)
+#define LED_GPIO_CFG_SPD_LED		(0x01000000)
+#define LED_GPIO_CFG_LNK_LED		(0x00100000)
+#define LED_GPIO_CFG_FDX_LED		(0x00010000)
+
+#define GPIO_CFG			(0x28)
+
+#define AFC_CFG				(0x2C)
+
+/* Hi watermark = 15.5Kb (~10 mtu pkts) */
+/* low watermark = 3k (~2 mtu pkts) */
+/* backpressure duration = ~ 350us */
+/* Apply FC on any frame. */
+#define AFC_CFG_DEFAULT			(0x00F830A1)
+
+#define E2P_CMD				(0x30)
+#define E2P_CMD_BUSY_			(0x80000000)
+#define E2P_CMD_MASK_			(0x70000000)
+#define E2P_CMD_READ_			(0x00000000)
+#define E2P_CMD_EWDS_			(0x10000000)
+#define E2P_CMD_EWEN_			(0x20000000)
+#define E2P_CMD_WRITE_			(0x30000000)
+#define E2P_CMD_WRAL_			(0x40000000)
+#define E2P_CMD_ERASE_			(0x50000000)
+#define E2P_CMD_ERAL_			(0x60000000)
+#define E2P_CMD_RELOAD_			(0x70000000)
+#define E2P_CMD_TIMEOUT_		(0x00000400)
+#define E2P_CMD_LOADED_			(0x00000200)
+#define E2P_CMD_ADDR_			(0x000001FF)
+
+#define MAX_EEPROM_SIZE			(512)
+
+#define E2P_DATA			(0x34)
+#define E2P_DATA_MASK_			(0x000000FF)
+
+#define BURST_CAP			(0x38)
+
+#define GPIO_WAKE			(0x64)
+
+#define INT_EP_CTL			(0x68)
+#define INT_EP_CTL_INTEP_		(0x80000000)
+#define INT_EP_CTL_MACRTO_		(0x00080000)
+#define INT_EP_CTL_TX_STOP_		(0x00020000)
+#define INT_EP_CTL_RX_STOP_		(0x00010000)
+#define INT_EP_CTL_PHY_INT_		(0x00008000)
+#define INT_EP_CTL_TXE_			(0x00004000)
+#define INT_EP_CTL_TDFU_		(0x00002000)
+#define INT_EP_CTL_TDFO_		(0x00001000)
+#define INT_EP_CTL_RXDF_		(0x00000800)
+#define INT_EP_CTL_GPIOS_		(0x000007FF)
+
+#define BULK_IN_DLY			(0x6C)
+
+/* MAC CSRs */
+#define MAC_CR				(0x100)
+#define MAC_CR_RXALL_			(0x80000000)
+#define MAC_CR_RCVOWN_			(0x00800000)
+#define MAC_CR_LOOPBK_			(0x00200000)
+#define MAC_CR_FDPX_			(0x00100000)
+#define MAC_CR_MCPAS_			(0x00080000)
+#define MAC_CR_PRMS_			(0x00040000)
+#define MAC_CR_INVFILT_			(0x00020000)
+#define MAC_CR_PASSBAD_			(0x00010000)
+#define MAC_CR_HFILT_			(0x00008000)
+#define MAC_CR_HPFILT_			(0x00002000)
+#define MAC_CR_LCOLL_			(0x00001000)
+#define MAC_CR_BCAST_			(0x00000800)
+#define MAC_CR_DISRTY_			(0x00000400)
+#define MAC_CR_PADSTR_			(0x00000100)
+#define MAC_CR_BOLMT_MASK		(0x000000C0)
+#define MAC_CR_DFCHK_			(0x00000020)
+#define MAC_CR_TXEN_			(0x00000008)
+#define MAC_CR_RXEN_			(0x00000004)
+
+#define ADDRH				(0x104)
+
+#define ADDRL				(0x108)
+
+#define HASHH				(0x10C)
+
+#define HASHL				(0x110)
+
+#define MII_ADDR			(0x114)
+#define MII_WRITE_			(0x02)
+#define MII_BUSY_			(0x01)
+#define MII_READ_			(0x00) /* ~of MII Write bit */
+
+#define MII_DATA			(0x118)
+
+#define FLOW				(0x11C)
+#define FLOW_FCPT_			(0xFFFF0000)
+#define FLOW_FCPASS_			(0x00000004)
+#define FLOW_FCEN_			(0x00000002)
+#define FLOW_FCBSY_			(0x00000001)
+
+#define VLAN1				(0x120)
+
+#define VLAN2				(0x124)
+
+#define WUFF				(0x128)
+
+#define WUCSR				(0x12C)
+
+#define COE_CR				(0x130)
+#define Tx_COE_EN_			(0x00010000)
+#define Rx_COE_MODE_			(0x00000002)
+#define Rx_COE_EN_			(0x00000001)
+
+/* Vendor-specific PHY Definitions */
+
+/* Mode Control/Status Register */
+#define PHY_MODE_CTRL_STS		(17)
+#define MODE_CTRL_STS_EDPWRDOWN_	((u16)0x2000)
+#define MODE_CTRL_STS_ENERGYON_		((u16)0x0002)
+
+#define SPECIAL_CTRL_STS		(27)
+#define SPECIAL_CTRL_STS_OVRRD_AMDIX_	((u16)0x8000)
+#define SPECIAL_CTRL_STS_AMDIX_ENABLE_	((u16)0x4000)
+#define SPECIAL_CTRL_STS_AMDIX_STATE_	((u16)0x2000)
+
+#define PHY_INT_SRC			(29)
+#define PHY_INT_SRC_ENERGY_ON_		((u16)0x0080)
+#define PHY_INT_SRC_ANEG_COMP_		((u16)0x0040)
+#define PHY_INT_SRC_REMOTE_FAULT_	((u16)0x0020)
+#define PHY_INT_SRC_LINK_DOWN_		((u16)0x0010)
+
+#define PHY_INT_MASK			(30)
+#define PHY_INT_MASK_ENERGY_ON_		((u16)0x0080)
+#define PHY_INT_MASK_ANEG_COMP_		((u16)0x0040)
+#define PHY_INT_MASK_REMOTE_FAULT_	((u16)0x0020)
+#define PHY_INT_MASK_LINK_DOWN_		((u16)0x0010)
+#define PHY_INT_MASK_DEFAULT_		(PHY_INT_MASK_ANEG_COMP_ | \
+					 PHY_INT_MASK_LINK_DOWN_)
+
+#define PHY_SPECIAL			(31)
+#define PHY_SPECIAL_SPD_		((u16)0x001C)
+#define PHY_SPECIAL_SPD_10HALF_		((u16)0x0004)
+#define PHY_SPECIAL_SPD_10FULL_		((u16)0x0014)
+#define PHY_SPECIAL_SPD_100HALF_	((u16)0x0008)
+#define PHY_SPECIAL_SPD_100FULL_	((u16)0x0018)
+
+/* USB Vendor Requests */
+#define USB_VENDOR_REQUEST_WRITE_REGISTER	0xA0
+#define USB_VENDOR_REQUEST_READ_REGISTER	0xA1
+#define USB_VENDOR_REQUEST_GET_STATS		0xA2
+
+/* Interrupt Endpoint status word bitfields */
+#define INT_ENP_TX_STOP_		((u32)BIT(17))
+#define INT_ENP_RX_STOP_		((u32)BIT(16))
+#define INT_ENP_PHY_INT_		((u32)BIT(15))
+#define INT_ENP_TXE_			((u32)BIT(14))
+#define INT_ENP_TDFU_			((u32)BIT(13))
+#define INT_ENP_TDFO_			((u32)BIT(12))
+#define INT_ENP_RXDF_			((u32)BIT(11))
+
+#endif /* _SMSC95XX_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
