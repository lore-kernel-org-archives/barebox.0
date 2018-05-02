Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x234.google.com ([2607:f8b0:400e:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDxYv-0001KO-Om
 for barebox@lists.infradead.org; Wed, 02 May 2018 19:37:17 +0000
Received: by mail-pg0-x234.google.com with SMTP id k11-v6so10246782pgo.10
 for <barebox@lists.infradead.org>; Wed, 02 May 2018 12:37:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  2 May 2018 12:36:52 -0700
Message-Id: <20180502193653.12960-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180502193653.12960-1-andrew.smirnov@gmail.com>
References: <20180502193653.12960-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND PATCH v2 1/2] mfd: Port RAVE SP driver from Linux kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port MFD driver for RAVE SP from Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/Kconfig         |   8 +
 drivers/mfd/Makefile        |   1 +
 drivers/mfd/rave-sp.c       | 758 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/rave-sp.h |  78 +++++
 4 files changed, 845 insertions(+)
 create mode 100644 drivers/mfd/rave-sp.c
 create mode 100644 include/linux/mfd/rave-sp.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 521cf042a..d04431fbc 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -53,4 +53,12 @@ config MFD_TWL6030
 	select MFD_TWLCORE
 	bool "TWL6030 driver"
 
+config RAVE_SP_CORE
+	tristate "RAVE SP MCU core driver"
+	depends on SERIAL_DEV_BUS
+	select CRC_CCITT
+	help
+	  Select this to get support for the Supervisory Processor
+	  device found on several devices in RAVE line of hardware.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 041915a7c..8b23a1023 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
 obj-$(CONFIG_MFD_TWLCORE)	+= twl-core.o
 obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
 obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
+obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
new file mode 100644
index 000000000..d55e913ff
--- /dev/null
+++ b/drivers/mfd/rave-sp.c
@@ -0,0 +1,758 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Multifunction core driver for Zodiac Inflight Innovations RAVE
+ * Supervisory Processor(SP) MCU that is connected via dedicated UART
+ * port
+ *
+ * Copyright (C) 2017 Zodiac Inflight Innovations
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of_device.h>
+
+#include <asm/unaligned.h>
+
+#include <linux/crc-ccitt.h>
+#include <linux/mfd/rave-sp.h>
+
+#define DUMP_PREFIX_NONE 0
+
+/*
+ * UART protocol using following entities:
+ *  - message to MCU => ACK response
+ *  - event from MCU => event ACK
+ *
+ * Frame structure:
+ * <STX> <DATA> <CHECKSUM> <ETX>
+ * Where:
+ * - STX - is start of transmission character
+ * - ETX - end of transmission
+ * - DATA - payload
+ * - CHECKSUM - checksum calculated on <DATA>
+ *
+ * If <DATA> or <CHECKSUM> contain one of control characters, then it is
+ * escaped using <DLE> control code. Added <DLE> does not participate in
+ * checksum calculation.
+ */
+#define RAVE_SP_STX			0x02
+#define RAVE_SP_ETX			0x03
+#define RAVE_SP_DLE			0x10
+
+#define RAVE_SP_MAX_DATA_SIZE		64
+#define RAVE_SP_CHECKSUM_SIZE		2  /* Worst case scenario on RDU2 */
+/*
+ * We don't store STX, ETX and unescaped bytes, so Rx is only
+ * DATA + CSUM
+ */
+#define RAVE_SP_RX_BUFFER_SIZE				\
+	(RAVE_SP_MAX_DATA_SIZE + RAVE_SP_CHECKSUM_SIZE)
+
+#define RAVE_SP_STX_ETX_SIZE		2
+/*
+ * For Tx we have to have space for everything, STX, EXT and
+ * potentially stuffed DATA + CSUM data + csum
+ */
+#define RAVE_SP_TX_BUFFER_SIZE				\
+	(RAVE_SP_STX_ETX_SIZE + 2 * RAVE_SP_RX_BUFFER_SIZE)
+
+#define RAVE_SP_BOOT_SOURCE_GET		0
+#define RAVE_SP_BOOT_SOURCE_SET		1
+
+#define RAVE_SP_RDU2_BOARD_TYPE_RMB	0
+#define RAVE_SP_RDU2_BOARD_TYPE_DEB	1
+
+#define RAVE_SP_BOOT_SOURCE_SD		0
+#define RAVE_SP_BOOT_SOURCE_EMMC	1
+#define RAVE_SP_BOOT_SOURCE_NOR		2
+
+/**
+ * enum rave_sp_deframer_state - Possible state for de-framer
+ *
+ * @RAVE_SP_EXPECT_SOF:		 Scanning input for start-of-frame marker
+ * @RAVE_SP_EXPECT_DATA:	 Got start of frame marker, collecting frame
+ * @RAVE_SP_EXPECT_ESCAPED_DATA: Got escape character, collecting escaped byte
+ */
+enum rave_sp_deframer_state {
+	RAVE_SP_EXPECT_SOF,
+	RAVE_SP_EXPECT_DATA,
+	RAVE_SP_EXPECT_ESCAPED_DATA,
+};
+
+/**
+ * struct rave_sp_deframer - Device protocol deframer
+ *
+ * @state:  Current state of the deframer
+ * @data:   Buffer used to collect deframed data
+ * @length: Number of bytes de-framed so far
+ */
+struct rave_sp_deframer {
+	enum rave_sp_deframer_state state;
+	unsigned char data[RAVE_SP_RX_BUFFER_SIZE];
+	size_t length;
+};
+
+/**
+ * struct rave_sp_reply - Reply as per RAVE device protocol
+ *
+ * @length:	Expected reply length
+ * @data:	Buffer to store reply payload in
+ * @code:	Expected reply code
+ * @ackid:	Expected reply ACK ID
+ * @completion: Successful reply reception completion
+ */
+struct rave_sp_reply {
+	size_t length;
+	void  *data;
+	u8     code;
+	u8     ackid;
+
+	bool   received;
+};
+
+/**
+ * struct rave_sp_checksum - Variant specific checksum implementation details
+ *
+ * @length:	Caculated checksum length
+ * @subroutine:	Utilized checksum algorithm implementation
+ */
+struct rave_sp_checksum {
+	size_t length;
+	void (*subroutine)(const u8 *, size_t, u8 *);
+};
+
+/**
+ * struct rave_sp_variant_cmds - Variant specific command routines
+ *
+ * @translate:	Generic to variant specific command mapping routine
+ */
+struct rave_sp_variant_cmds {
+	int (*translate)(enum rave_sp_command);
+};
+
+/**
+ * struct rave_sp_variant - RAVE supervisory processor core variant
+ *
+ * @checksum:	Variant specific checksum implementation
+ * @cmd:	Variant specific command pointer table
+ *
+ */
+struct rave_sp_variant {
+	const struct rave_sp_checksum *checksum;
+	struct rave_sp_variant_cmds cmd;
+};
+
+/**
+ * struct rave_sp - RAVE supervisory processor core
+ *
+ * @serdev:			Pointer to underlying serdev
+ * @deframer:			Stored state of the protocol deframer
+ * @ackid:			ACK ID used in last reply sent to the device
+ * @bus_lock:			Lock to serialize access to the device
+ * @reply_lock:			Lock protecting @reply
+ * @reply:			Pointer to memory to store reply payload
+ *
+ * @variant:			Device variant specific information
+ * @event_notifier_list:	Input event notification chain
+ *
+ * @part_number_firmware:	Firmware version
+ * @part_number_bootloader:	Bootloader version
+ */
+struct rave_sp {
+	struct serdev_device *serdev;
+	struct rave_sp_deframer deframer;
+	unsigned int ackid;
+	struct rave_sp_reply *reply;
+
+	const struct rave_sp_variant *variant;
+
+	const char *part_number_firmware;
+	const char *part_number_bootloader;
+};
+
+struct rave_sp_version {
+	u8     hardware;
+	__le16 major;
+	u8     minor;
+	u8     letter[2];
+} __packed;
+
+struct rave_sp_status {
+	struct rave_sp_version bootloader_version;
+	struct rave_sp_version firmware_version;
+	u16 rdu_eeprom_flag;
+	u16 dds_eeprom_flag;
+	u8  pic_flag;
+	u8  orientation;
+	u32 etc;
+	s16 temp[2];
+	u8  backlight_current[3];
+	u8  dip_switch;
+	u8  host_interrupt;
+	u16 voltage_28;
+	u8  i2c_device_status;
+	u8  power_status;
+	u8  general_status;
+#define RAVE_SP_STATUS_GS_FIRMWARE_MODE	BIT(1)
+
+	u8  deprecated1;
+	u8  power_led_status;
+	u8  deprecated2;
+	u8  periph_power_shutoff;
+} __packed;
+
+static bool rave_sp_id_is_event(u8 code)
+{
+	return (code & 0xF0) == RAVE_SP_EVNT_BASE;
+}
+
+static void csum_8b2c(const u8 *buf, size_t size, u8 *crc)
+{
+	*crc = *buf++;
+	size--;
+
+	while (size--)
+		*crc += *buf++;
+
+	*crc = 1 + ~(*crc);
+}
+
+static void csum_ccitt(const u8 *buf, size_t size, u8 *crc)
+{
+	const u16 calculated = crc_ccitt_false(0xffff, buf, size);
+
+	/*
+	 * While the rest of the wire protocol is little-endian,
+	 * CCITT-16 CRC in RDU2 device is sent out in big-endian order.
+	 */
+	put_unaligned_be16(calculated, crc);
+}
+
+static void *stuff(unsigned char *dest, const unsigned char *src, size_t n)
+{
+	while (n--) {
+		const unsigned char byte = *src++;
+
+		switch (byte) {
+		case RAVE_SP_STX:
+		case RAVE_SP_ETX:
+		case RAVE_SP_DLE:
+			*dest++ = RAVE_SP_DLE;
+			/* FALLTHROUGH */
+		default:
+			*dest++ = byte;
+		}
+	}
+
+	return dest;
+}
+
+static int rave_sp_write(struct rave_sp *sp, const u8 *data, u8 data_size)
+{
+	const size_t checksum_length = sp->variant->checksum->length;
+	unsigned char frame[RAVE_SP_TX_BUFFER_SIZE];
+	unsigned char crc[RAVE_SP_CHECKSUM_SIZE];
+	unsigned char *dest = frame;
+	size_t length;
+
+	if (WARN_ON(checksum_length > sizeof(crc)))
+		return -ENOMEM;
+
+	if (WARN_ON(data_size > sizeof(frame)))
+		return -ENOMEM;
+
+	sp->variant->checksum->subroutine(data, data_size, crc);
+
+	*dest++ = RAVE_SP_STX;
+	dest = stuff(dest, data, data_size);
+	dest = stuff(dest, crc, checksum_length);
+	*dest++ = RAVE_SP_ETX;
+
+	length = dest - frame;
+
+	if (IS_ENABLED(DEBUG))
+		print_hex_dump(0, "rave-sp tx: ", DUMP_PREFIX_NONE,
+			       16, 1, frame, length, false);
+
+	return serdev_device_write(sp->serdev, frame, length, SECOND);
+}
+
+static u8 rave_sp_reply_code(u8 command)
+{
+	/*
+	 * There isn't a single rule that describes command code ->
+	 * ACK code transformation, but, going through various
+	 * versions of ICDs, there appear to be three distinct groups
+	 * that can be described by simple transformation.
+	 */
+	switch (command) {
+	case 0xA0 ... 0xBE:
+		/*
+		 * Commands implemented by firmware found in RDU1 and
+		 * older devices all seem to obey the following rule
+		 */
+		return command + 0x20;
+	case 0xE0 ... 0xEF:
+		/*
+		 * Events emitted by all versions of the firmare use
+		 * least significant bit to get an ACK code
+		 */
+		return command | 0x01;
+	default:
+		/*
+		 * Commands implemented by firmware found in RDU2 are
+		 * similar to "old" commands, but they use slightly
+		 * different offset
+		 */
+		return command + 0x40;
+	}
+}
+
+int rave_sp_exec(struct rave_sp *sp,
+		 void *__data,  size_t data_size,
+		 void *reply_data, size_t reply_data_size)
+{
+	struct device_d *dev = sp->serdev->dev;
+	struct rave_sp_reply reply = {
+		.data     = reply_data,
+		.length   = reply_data_size,
+		.received = false,
+	};
+	unsigned char *data = __data;
+	int command, ret = 0;
+	u8 ackid;
+	uint64_t start = get_time_ns();
+
+	command = sp->variant->cmd.translate(data[0]);
+	if (command < 0)
+		return command;
+
+	ackid       = sp->ackid++;
+	reply.ackid = ackid;
+	reply.code  = rave_sp_reply_code((u8)command),
+
+	sp->reply = &reply;
+
+	data[0] = command;
+	data[1] = ackid;
+
+	rave_sp_write(sp, data, data_size);
+	/*
+	 * is_timeout will implicitly poll serdev via poller
+	 * infrastructure
+	 */
+	while (!is_timeout(start, SECOND) && !reply.received)
+		;
+
+	if (!reply.received) {
+		dev_err(dev, "Command timeout\n");
+		ret = -ETIMEDOUT;
+		sp->reply = NULL;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(rave_sp_exec);
+
+static void rave_sp_receive_event(struct rave_sp *sp,
+				  const unsigned char *data, size_t length)
+{
+	u8 cmd[] = {
+		[0] = rave_sp_reply_code(data[0]),
+		[1] = data[1],
+	};
+
+	/*
+	 * The only thing we do for event, in case we get one, is to
+	 * acknowledge it to prevent RAVE SP from spamming us
+	 */
+	rave_sp_write(sp, cmd, sizeof(cmd));
+}
+
+static void rave_sp_receive_reply(struct rave_sp *sp,
+				  const unsigned char *data, size_t length)
+{
+	struct device_d *dev = sp->serdev->dev;
+	struct rave_sp_reply *reply;
+	const  size_t payload_length = length - 2;
+
+	reply = sp->reply;
+
+	if (reply) {
+		if (reply->code == data[0] && reply->ackid == data[1] &&
+		    payload_length >= reply->length) {
+			/*
+			 * We are relying on memcpy(dst, src, 0) to be a no-op
+			 * when handling commands that have a no-payload reply
+			 */
+			memcpy(reply->data, &data[2], reply->length);
+			reply->received = true;
+			sp->reply = NULL;
+		} else {
+			dev_err(dev, "Ignoring incorrect reply\n");
+			dev_dbg(dev, "Code:   expected = 0x%08x received = 0x%08x\n",
+				reply->code, data[0]);
+			dev_dbg(dev, "ACK ID: expected = 0x%08x received = 0x%08x\n",
+				reply->ackid, data[1]);
+			dev_dbg(dev, "Length: expected = %zu received = %zu\n",
+				reply->length, payload_length);
+		}
+	}
+
+}
+
+static void rave_sp_receive_frame(struct rave_sp *sp,
+				  const unsigned char *data,
+				  size_t length)
+{
+	const size_t checksum_length = sp->variant->checksum->length;
+	const size_t payload_length  = length - checksum_length;
+	const u8 *crc_reported       = &data[payload_length];
+	struct device_d *dev         = sp->serdev->dev;
+	u8 crc_calculated[checksum_length];
+
+	if (IS_ENABLED(DEBUG))
+		print_hex_dump(0, "rave-sp rx: ", DUMP_PREFIX_NONE,
+			       16, 1, data, length, false);
+
+	if (unlikely(length <= checksum_length)) {
+		dev_warn(dev, "Dropping short frame\n");
+		return;
+	}
+
+	sp->variant->checksum->subroutine(data, payload_length,
+					  crc_calculated);
+
+	if (memcmp(crc_calculated, crc_reported, checksum_length)) {
+		dev_warn(dev, "Dropping bad frame\n");
+		return;
+	}
+
+	if (rave_sp_id_is_event(data[0]))
+		rave_sp_receive_event(sp, data, length);
+	else
+		rave_sp_receive_reply(sp, data, length);
+}
+
+static int rave_sp_receive_buf(struct serdev_device *serdev,
+			       const unsigned char *buf, size_t size)
+{
+	struct device_d *dev = serdev->dev;
+	struct rave_sp *sp = dev->priv;
+	struct rave_sp_deframer *deframer = &sp->deframer;
+	const unsigned char *src = buf;
+	const unsigned char *end = buf + size;
+
+	while (src < end) {
+		const unsigned char byte = *src++;
+
+		switch (deframer->state) {
+		case RAVE_SP_EXPECT_SOF:
+			if (byte == RAVE_SP_STX)
+				deframer->state = RAVE_SP_EXPECT_DATA;
+			break;
+
+		case RAVE_SP_EXPECT_DATA:
+			/*
+			 * Treat special byte values first
+			 */
+			switch (byte) {
+			case RAVE_SP_ETX:
+				rave_sp_receive_frame(sp,
+						      deframer->data,
+						      deframer->length);
+				/*
+				 * Once we extracted a complete frame
+				 * out of a stream, we call it done
+				 * and proceed to bailing out while
+				 * resetting the framer to initial
+				 * state, regardless if we've consumed
+				 * all of the stream or not.
+				 */
+				goto reset_framer;
+			case RAVE_SP_STX:
+				dev_warn(dev, "Bad frame: STX before ETX\n");
+				/*
+				 * If we encounter second "start of
+				 * the frame" marker before seeing
+				 * corresponding "end of frame", we
+				 * reset the framer and ignore both:
+				 * frame started by first SOF and
+				 * frame started by current SOF.
+				 *
+				 * NOTE: The above means that only the
+				 * frame started by third SOF, sent
+				 * after this one will have a chance
+				 * to get throught.
+				 */
+				goto reset_framer;
+			case RAVE_SP_DLE:
+				deframer->state = RAVE_SP_EXPECT_ESCAPED_DATA;
+				/*
+				 * If we encounter escape sequence we
+				 * need to skip it and collect the
+				 * byte that follows. We do it by
+				 * forcing the next iteration of the
+				 * encompassing while loop.
+				 */
+				continue;
+			}
+			/*
+			 * For the rest of the bytes, that are not
+			 * speical snoflakes, we do the same thing
+			 * that we do to escaped data - collect it in
+			 * deframer buffer
+			 */
+
+			/* FALLTHROUGH */
+
+		case RAVE_SP_EXPECT_ESCAPED_DATA:
+			if (deframer->length == sizeof(deframer->data)) {
+				dev_warn(dev, "Bad frame: Too long\n");
+				/*
+				 * If the amount of data we've
+				 * accumulated for current frame so
+				 * far starts to exceed the capacity
+				 * of deframer's buffer, there's
+				 * nothing else we can do but to
+				 * discard that data and start
+				 * assemblying a new frame again
+				 */
+				goto reset_framer;
+			}
+
+			deframer->data[deframer->length++] = byte;
+
+			/*
+			 * We've extracted out special byte, now we
+			 * can go back to regular data collecting
+			 */
+			deframer->state = RAVE_SP_EXPECT_DATA;
+			break;
+		}
+	}
+
+	/*
+	 * The only way to get out of the above loop and end up here
+	 * is throught consuming all of the supplied data, so here we
+	 * report that we processed it all.
+	 */
+	return size;
+
+reset_framer:
+	/*
+	 * NOTE: A number of codepaths that will drop us here will do
+	 * so before consuming all 'size' bytes of the data passed by
+	 * serdev layer. We rely on the fact that serdev layer will
+	 * re-execute this handler with the remainder of the Rx bytes
+	 * once we report actual number of bytes that we processed.
+	 */
+	deframer->state  = RAVE_SP_EXPECT_SOF;
+	deframer->length = 0;
+
+	return src - buf;
+}
+
+static int rave_sp_rdu1_cmd_translate(enum rave_sp_command command)
+{
+	if (command >= RAVE_SP_CMD_STATUS &&
+	    command <= RAVE_SP_CMD_CONTROL_EVENTS)
+		return command;
+
+	return -EINVAL;
+}
+
+static int rave_sp_rdu2_cmd_translate(enum rave_sp_command command)
+{
+	if (command >= RAVE_SP_CMD_GET_FIRMWARE_VERSION &&
+	    command <= RAVE_SP_CMD_GET_GPIO_STATE)
+		return command;
+
+	if (command == RAVE_SP_CMD_REQ_COPPER_REV) {
+		/*
+		 * As per RDU2 ICD 3.4.47 CMD_GET_COPPER_REV code is
+		 * different from that for RDU1 and it is set to 0x28.
+		 */
+		return 0x28;
+	}
+
+	return rave_sp_rdu1_cmd_translate(command);
+}
+
+static int rave_sp_default_cmd_translate(enum rave_sp_command command)
+{
+	/*
+	 * All of the following command codes were taken from "Table :
+	 * Communications Protocol Message Types" in section 3.3
+	 * "MESSAGE TYPES" of Rave PIC24 ICD.
+	 */
+	switch (command) {
+	case RAVE_SP_CMD_GET_FIRMWARE_VERSION:
+		return 0x11;
+	case RAVE_SP_CMD_GET_BOOTLOADER_VERSION:
+		return 0x12;
+	case RAVE_SP_CMD_BOOT_SOURCE:
+		return 0x14;
+	case RAVE_SP_CMD_SW_WDT:
+		return 0x1C;
+	case RAVE_SP_CMD_RESET:
+		return 0x1E;
+	case RAVE_SP_CMD_RESET_REASON:
+		return 0x1F;
+	case RAVE_SP_CMD_BOOTLOADER:
+		return 0x2A;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const char *devm_rave_sp_version(struct device_d *dev,
+					struct rave_sp_version *version)
+{
+       /*
+        * NOTE: The format string below uses %02d to display u16
+        * intentionally for the sake of backwards compatibility with
+        * legacy software.
+        */
+       return basprintf("%02d%02d%02d.%c%c\n",
+			version->hardware,
+			le16_to_cpu(version->major),
+			version->minor,
+			version->letter[0],
+			version->letter[1]);
+}
+
+static int rave_sp_get_status(struct rave_sp *sp)
+{
+	struct device_d *dev = sp->serdev->dev;
+	u8 cmd[] = {
+		[0] = RAVE_SP_CMD_STATUS,
+		[1] = 0
+	};
+	struct rave_sp_status status;
+	const char *mode;
+	int ret;
+
+	ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status, sizeof(status));
+	if (ret)
+		return ret;
+
+	if (status.general_status & RAVE_SP_STATUS_GS_FIRMWARE_MODE)
+		mode = "Application";
+	else
+		mode = "Bootloader";
+
+	dev_info(dev, "Device is in %s mode\n", mode);
+
+	sp->part_number_firmware   = devm_rave_sp_version(dev,
+						   &status.firmware_version);
+	sp->part_number_bootloader = devm_rave_sp_version(dev,
+						   &status.bootloader_version);
+	return 0;
+}
+
+static const struct rave_sp_checksum rave_sp_checksum_8b2c = {
+	.length     = 1,
+	.subroutine = csum_8b2c,
+};
+
+static const struct rave_sp_checksum rave_sp_checksum_ccitt = {
+	.length     = 2,
+	.subroutine = csum_ccitt,
+};
+
+static const struct rave_sp_variant rave_sp_legacy = {
+	.checksum = &rave_sp_checksum_8b2c,
+	.cmd = {
+		.translate = rave_sp_default_cmd_translate,
+	},
+};
+
+static const struct rave_sp_variant rave_sp_rdu1 = {
+	.checksum = &rave_sp_checksum_8b2c,
+	.cmd = {
+		.translate = rave_sp_rdu1_cmd_translate,
+	},
+};
+
+static const struct rave_sp_variant rave_sp_rdu2 = {
+	.checksum = &rave_sp_checksum_ccitt,
+	.cmd = {
+		.translate = rave_sp_rdu2_cmd_translate,
+	},
+};
+
+static const struct of_device_id __maybe_unused rave_sp_dt_ids[] = {
+	{ .compatible = "zii,rave-sp-niu",  .data = &rave_sp_legacy },
+	{ .compatible = "zii,rave-sp-mezz", .data = &rave_sp_legacy },
+	{ .compatible = "zii,rave-sp-esb",  .data = &rave_sp_legacy },
+	{ .compatible = "zii,rave-sp-rdu1", .data = &rave_sp_rdu1   },
+	{ .compatible = "zii,rave-sp-rdu2", .data = &rave_sp_rdu2   },
+	{ /* sentinel */ }
+};
+
+static int rave_sp_probe(struct device_d *dev)
+{
+	struct serdev_device *serdev = to_serdev_device(dev->parent);
+	struct rave_sp *sp;
+	u32 baud;
+	int ret;
+
+	if (of_property_read_u32(dev->device_node, "current-speed", &baud)) {
+		dev_err(dev,
+			"'current-speed' is not specified in device node\n");
+		return -EINVAL;
+	}
+
+	sp = xzalloc(sizeof(*sp));
+	sp->serdev = serdev;
+	dev->priv = sp;
+	serdev->dev = dev;
+	serdev->receive_buf = rave_sp_receive_buf;
+	serdev->polling_interval = 500 * MSECOND;
+	/*
+	 * We have to set polling window to 200ms initially in order
+	 * to avoid timing out on get_status below when coming out of
+	 * power-cycle induced reset. It's adjusted right after
+	 */
+	serdev->polling_window = 200 * MSECOND;
+
+	sp->variant = of_device_get_match_data(dev);
+	if (!sp->variant)
+		return -ENODEV;
+
+	ret = serdev_device_open(serdev);
+	if (ret)
+		return ret;
+
+	serdev_device_set_baudrate(serdev, baud);
+
+	ret = rave_sp_get_status(sp);
+	if (ret) {
+		dev_warn(dev, "Failed to get firmware status: %d\n", ret);
+		return ret;
+	}
+	/*
+	 * 10ms is just a setting that was arrived at empirically when
+	 * trying to make sure that EEPROM or MAC address access
+	 * commnads to not time out.
+	 */
+	serdev->polling_window = 10 * MSECOND;
+
+	/*
+	 * Those strings already have a \n embedded, so there's no
+	 * need to have one in format string.
+	 */
+	dev_info(dev, "Firmware version: %s",   sp->part_number_firmware);
+	dev_info(dev, "Bootloader version: %s", sp->part_number_bootloader);
+
+	return of_platform_populate(dev->device_node, NULL, dev);
+}
+
+static struct driver_d rave_sp_drv = {
+	.name = "rave-sp",
+	.probe = rave_sp_probe,
+	.of_compatible = DRV_OF_COMPAT(rave_sp_dt_ids),
+};
+console_platform_driver(rave_sp_drv);
diff --git a/include/linux/mfd/rave-sp.h b/include/linux/mfd/rave-sp.h
new file mode 100644
index 000000000..e0d97a55d
--- /dev/null
+++ b/include/linux/mfd/rave-sp.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+
+/*
+ * Core definitions for RAVE SP MFD driver.
+ *
+ * Copyright (C) 2017 Zodiac Inflight Innovations
+ */
+
+#ifndef _LINUX_RAVE_SP_H_
+#define _LINUX_RAVE_SP_H_
+
+/* #include <linux/notifier.h> */
+
+enum rave_sp_command {
+	RAVE_SP_CMD_GET_FIRMWARE_VERSION	= 0x20,
+	RAVE_SP_CMD_GET_BOOTLOADER_VERSION	= 0x21,
+	RAVE_SP_CMD_BOOT_SOURCE			= 0x26,
+	RAVE_SP_CMD_GET_BOARD_COPPER_REV	= 0x2B,
+	RAVE_SP_CMD_GET_GPIO_STATE		= 0x2F,
+
+	RAVE_SP_CMD_STATUS			= 0xA0,
+	RAVE_SP_CMD_SW_WDT			= 0xA1,
+	RAVE_SP_CMD_PET_WDT			= 0xA2,
+	RAVE_SP_CMD_SET_BACKLIGHT		= 0xA6,
+	RAVE_SP_CMD_RESET			= 0xA7,
+	RAVE_SP_CMD_RESET_REASON		= 0xA8,
+
+	RAVE_SP_CMD_JUMP_TO_BOOTLOADER		= 0xB0,
+	RAVE_SP_CMD_BOOTLOADER			= 0xB1,
+	RAVE_SP_CMD_REQ_COPPER_REV		= 0xB6,
+	RAVE_SP_CMD_GET_I2C_DEVICE_STATUS	= 0xBA,
+	RAVE_SP_CMD_GET_SP_SILICON_REV		= 0xB9,
+	RAVE_SP_CMD_CONTROL_EVENTS		= 0xBB,
+
+	RAVE_SP_EVNT_BASE			= 0xE0,
+};
+
+enum rave_sp_bootloader_command {
+	RAVE_SP_BOOTLOADER_CMD_QUERY_DEVICE	= 0xA1,
+	RAVE_SP_BOOTLOADER_CMD_ERASE_APP	= 0xA3,
+	RAVE_SP_BOOTLOADER_CMD_PROGRAM_DEVICE	= 0xA4,
+	RAVE_SP_BOOTLOADER_CMD_PROGRAM_COMPLETE = 0xA5,
+	RAVE_SP_BOOTLOADER_CMD_READ_APP		= 0xA6,
+	RAVE_SP_BOOTLOADER_CMD_RESET_DEVICE	= 0xA7,
+	RAVE_SP_BOOTLOADER_CMD_LAUNCH_APP	= 0xA8,
+};
+
+struct rave_sp;
+
+static inline unsigned long rave_sp_action_pack(u8 event, u8 value)
+{
+	return ((unsigned long)value << 8) | event;
+}
+
+static inline u8 rave_sp_action_unpack_event(unsigned long action)
+{
+	return action;
+}
+
+static inline u8 rave_sp_action_unpack_value(unsigned long action)
+{
+	return action >> 8;
+}
+
+int rave_sp_exec(struct rave_sp *sp,
+		 void *__data,  size_t data_size,
+		 void *reply_data, size_t reply_data_size);
+
+struct device;
+/* int devm_rave_sp_register_event_notifier(struct device *dev, */
+/* 					 struct notifier_block *nb); */
+
+bool rave_sp_is_in_bootloader_mode(struct rave_sp *sp);
+const struct firmware *rave_sp_get_firmware(struct rave_sp *sp);
+void rave_sp_release_firmware(struct rave_sp *sp);
+void rave_sp_set_update_fw_status(struct rave_sp *sp, int status);
+
+#endif /* _LINUX_RAVE_SP_H_ */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
