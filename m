Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWMrM-0008HY-4Q
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 14:48:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gWMrA-00063X-Ei
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 15:48:24 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Dec 2018 15:48:23 +0100
Message-Id: <20181210144824.4172-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] mfd: rave-sp: Add parameters to query IP address/netmask
To: barebox@lists.infradead.org

From: Andrey Smirnov <andrew.smirnov@gmail.com>

Unlike LCD type information, IP address as well as netmaks are not
stored in an easily usable format in RAVE SP EEPROM. In order to obtain
them we need to issue a special command to RAVE SP. For that purpose add
device "sp" and expose that data as a device parameters (sp.ipaddr and
sp.netmask, correspondingly)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/rave-sp.c       | 72 +++++++++++++++++++++++++++++++++++++
 include/linux/mfd/rave-sp.h |  1 +
 2 files changed, 73 insertions(+)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 469ce4cc0d08..b7efb62617dc 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -57,6 +57,8 @@
 #define RAVE_SP_TX_BUFFER_SIZE				\
 	(RAVE_SP_STX_ETX_SIZE + 2 * RAVE_SP_RX_BUFFER_SIZE)
 
+#define RAVE_SP_IPADDR_INVALID		U32_MAX
+
 /**
  * enum rave_sp_deframer_state - Possible state for de-framer
  *
@@ -183,6 +185,7 @@ struct rave_sp_variant {
  * @part_number_bootloader:	Bootloader version
  */
 struct rave_sp {
+	struct device_d dev;
 	struct serdev_device *serdev;
 	struct rave_sp_deframer deframer;
 	unsigned int ackid;
@@ -192,6 +195,9 @@ struct rave_sp {
 
 	const char *part_number_firmware;
 	const char *part_number_bootloader;
+
+	IPaddr_t ipaddr;
+	IPaddr_t netmask;
 };
 
 static bool rave_sp_id_is_event(u8 code)
@@ -718,6 +724,65 @@ static const struct of_device_id __maybe_unused rave_sp_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
+static int rave_sp_req_ip_addr(struct param_d *p, void *context)
+{
+	struct rave_sp *sp = context;
+	u8 cmd[] = {
+		[0] = RAVE_SP_CMD_REQ_IP_ADDR,
+		[1] = 0,
+		[2] = 0, 	/* FIXME: Support for RJU? */
+		[3] = 0,	/* Add support for IPs other than "self" */
+	};
+	struct {
+		__le32 ipaddr;
+		__le32 netmask;
+	} __packed rsp;
+	int ret;
+
+	/*
+	 * We only query RAVE SP device for IP/Netmask once, after
+	 * that we just "serve" cached data.
+	 */
+	if (sp->ipaddr != RAVE_SP_IPADDR_INVALID)
+		return 0;
+
+	ret = rave_sp_exec(sp, &cmd, sizeof(cmd), &rsp, sizeof(rsp));
+	if (ret < 0)
+		return ret;
+
+	sp->ipaddr  = le32_to_cpu(rsp.ipaddr);
+	sp->netmask = le32_to_cpu(rsp.netmask);
+
+	return 0;
+}
+
+static int rave_sp_add_params(struct rave_sp *sp)
+{
+	struct device_d *dev = &sp->dev;
+	struct param_d *p;
+	int ret;
+
+	dev->parent = sp->serdev->dev;
+	dev_set_name(dev, "sp");
+	dev->id = DEVICE_ID_SINGLE;
+
+	ret = register_device(dev);
+	if (ret)
+		return ret;
+
+	p = dev_add_param_ip(dev, "ipaddr", NULL, rave_sp_req_ip_addr,
+			     &sp->ipaddr, sp);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	p = dev_add_param_ip(dev, "netmask", NULL, rave_sp_req_ip_addr,
+			     &sp->netmask, sp);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
 static int rave_sp_probe(struct device_d *dev)
 {
 	struct serdev_device *serdev = to_serdev_device(dev->parent);
@@ -733,6 +798,7 @@ static int rave_sp_probe(struct device_d *dev)
 
 	sp = xzalloc(sizeof(*sp));
 	sp->serdev = serdev;
+	sp->ipaddr = RAVE_SP_IPADDR_INVALID;
 	dev->priv = sp;
 	serdev->dev = dev;
 	serdev->receive_buf = rave_sp_receive_buf;
@@ -773,6 +839,12 @@ static int rave_sp_probe(struct device_d *dev)
 	dev_info(dev, "Firmware version: %s",   sp->part_number_firmware);
 	dev_info(dev, "Bootloader version: %s", sp->part_number_bootloader);
 
+	ret = rave_sp_add_params(sp);
+	if (ret) {
+		dev_err(dev, "Failed to add parameters to RAVE SP\n");
+		return ret;
+	}
+
 	return of_platform_populate(dev->device_node, NULL, dev);
 }
 
diff --git a/include/linux/mfd/rave-sp.h b/include/linux/mfd/rave-sp.h
index 50c9865c00da..37a37788d885 100644
--- a/include/linux/mfd/rave-sp.h
+++ b/include/linux/mfd/rave-sp.h
@@ -28,6 +28,7 @@ enum rave_sp_command {
 
 	RAVE_SP_CMD_JUMP_TO_BOOTLOADER		= 0xB0,
 	RAVE_SP_CMD_BOOTLOADER			= 0xB1,
+	RAVE_SP_CMD_REQ_IP_ADDR			= 0xB2,
 	RAVE_SP_CMD_REQ_COPPER_REV		= 0xB6,
 	RAVE_SP_CMD_GET_I2C_DEVICE_STATUS	= 0xBA,
 	RAVE_SP_CMD_GET_SP_SILICON_REV		= 0xB9,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
