Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X59ne-0001F5-Df
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 08:33:55 +0000
Received: by mail-la0-f48.google.com with SMTP id el20so5785536lab.21
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 01:33:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 Jul 2014 12:33:17 +0400
Message-Id: <1404981199-21293-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 3/5] i2c: import SMBus stuff from linux
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/i2c.c | 368 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c.h |  64 ++++++++++
 2 files changed, 432 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 9873957..167a5e4 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -159,6 +159,374 @@ int i2c_master_recv(struct i2c_client *client, char *buf, int count)
 }
 EXPORT_SYMBOL(i2c_master_recv);
 
+/* The SMBus parts */
+
+#define POLY    (0x1070U << 3)
+static u8 crc8(u16 data)
+{
+	int i;
+
+	for (i = 0; i < 8; i++) {
+		if (data & 0x8000)
+			data = data ^ POLY;
+		data = data << 1;
+	}
+	return (u8)(data >> 8);
+}
+
+/* Incremental CRC8 over count bytes in the array pointed to by p */
+static u8 i2c_smbus_pec(u8 crc, u8 *p, size_t count)
+{
+	int i;
+
+	for (i = 0; i < count; i++)
+		crc = crc8((crc ^ p[i]) << 8);
+	return crc;
+}
+
+/* Assume a 7-bit address, which is reasonable for SMBus */
+static u8 i2c_smbus_msg_pec(u8 pec, struct i2c_msg *msg)
+{
+	/* The address will be sent first */
+	u8 addr = (msg->addr << 1) | !!(msg->flags & I2C_M_RD);
+	pec = i2c_smbus_pec(pec, &addr, 1);
+
+	/* The data buffer follows */
+	return i2c_smbus_pec(pec, msg->buf, msg->len);
+}
+
+/* Used for write only transactions */
+static inline void i2c_smbus_add_pec(struct i2c_msg *msg)
+{
+	msg->buf[msg->len] = i2c_smbus_msg_pec(0, msg);
+	msg->len++;
+}
+
+/* Return <0 on CRC error
+   If there was a write before this read (most cases) we need to take the
+   partial CRC from the write part into account.
+   Note that this function does modify the message (we need to decrease the
+   message length to hide the CRC byte from the caller). */
+static int i2c_smbus_check_pec(u8 cpec, struct i2c_msg *msg)
+{
+	u8 rpec = msg->buf[--msg->len];
+	cpec = i2c_smbus_msg_pec(cpec, msg);
+
+	if (rpec != cpec) {
+		pr_debug("i2c-core: Bad PEC 0x%02x vs. 0x%02x\n",
+			rpec, cpec);
+		return -EBADMSG;
+	}
+	return 0;
+}
+
+/**
+ * i2c_smbus_read_byte - SMBus "receive byte" protocol
+ * @client: Handle to slave device
+ *
+ * This executes the SMBus "receive byte" protocol, returning negative errno
+ * else the byte received from the device.
+ */
+s32 i2c_smbus_read_byte(const struct i2c_client *client)
+{
+	union i2c_smbus_data data;
+	int status;
+
+	status = i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+				I2C_SMBUS_READ, 0,
+				I2C_SMBUS_BYTE, &data);
+	return (status < 0) ? status : data.byte;
+}
+EXPORT_SYMBOL(i2c_smbus_read_byte);
+
+/**
+ * i2c_smbus_write_byte - SMBus "send byte" protocol
+ * @client: Handle to slave device
+ * @value: Byte to be sent
+ *
+ * This executes the SMBus "send byte" protocol, returning negative errno
+ * else zero on success.
+ */
+s32 i2c_smbus_write_byte(const struct i2c_client *client, u8 value)
+{
+	return i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+	                      I2C_SMBUS_WRITE, value, I2C_SMBUS_BYTE, NULL);
+}
+EXPORT_SYMBOL(i2c_smbus_write_byte);
+
+/**
+ * i2c_smbus_read_byte_data - SMBus "read byte" protocol
+ * @client: Handle to slave device
+ * @command: Byte interpreted by slave
+ *
+ * This executes the SMBus "read byte" protocol, returning negative errno
+ * else a data byte received from the device.
+ */
+s32 i2c_smbus_read_byte_data(const struct i2c_client *client, u8 command)
+{
+	union i2c_smbus_data data;
+	int status;
+
+	status = i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+				I2C_SMBUS_READ, command,
+				I2C_SMBUS_BYTE_DATA, &data);
+	return (status < 0) ? status : data.byte;
+}
+EXPORT_SYMBOL(i2c_smbus_read_byte_data);
+
+/**
+ * i2c_smbus_write_byte_data - SMBus "write byte" protocol
+ * @client: Handle to slave device
+ * @command: Byte interpreted by slave
+ * @value: Byte being written
+ *
+ * This executes the SMBus "write byte" protocol, returning negative errno
+ * else zero on success.
+ */
+s32 i2c_smbus_write_byte_data(const struct i2c_client *client, u8 command,
+			      u8 value)
+{
+	union i2c_smbus_data data;
+	data.byte = value;
+	return i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+			      I2C_SMBUS_WRITE, command,
+			      I2C_SMBUS_BYTE_DATA, &data);
+}
+EXPORT_SYMBOL(i2c_smbus_write_byte_data);
+
+/**
+ * i2c_smbus_read_word_data - SMBus "read word" protocol
+ * @client: Handle to slave device
+ * @command: Byte interpreted by slave
+ *
+ * This executes the SMBus "read word" protocol, returning negative errno
+ * else a 16-bit unsigned "word" received from the device.
+ */
+s32 i2c_smbus_read_word_data(const struct i2c_client *client, u8 command)
+{
+	union i2c_smbus_data data;
+	int status;
+
+	status = i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+				I2C_SMBUS_READ, command,
+				I2C_SMBUS_WORD_DATA, &data);
+	return (status < 0) ? status : data.word;
+}
+EXPORT_SYMBOL(i2c_smbus_read_word_data);
+
+/**
+ * i2c_smbus_write_word_data - SMBus "write word" protocol
+ * @client: Handle to slave device
+ * @command: Byte interpreted by slave
+ * @value: 16-bit "word" being written
+ *
+ * This executes the SMBus "write word" protocol, returning negative errno
+ * else zero on success.
+ */
+s32 i2c_smbus_write_word_data(const struct i2c_client *client, u8 command,
+			      u16 value)
+{
+	union i2c_smbus_data data;
+	data.word = value;
+	return i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+			      I2C_SMBUS_WRITE, command,
+			      I2C_SMBUS_WORD_DATA, &data);
+}
+EXPORT_SYMBOL(i2c_smbus_write_word_data);
+
+/* Returns the number of read bytes */
+s32 i2c_smbus_read_i2c_block_data(const struct i2c_client *client, u8 command,
+				  u8 length, u8 *values)
+{
+	union i2c_smbus_data data;
+	int status;
+
+	if (length > I2C_SMBUS_BLOCK_MAX)
+		length = I2C_SMBUS_BLOCK_MAX;
+	data.block[0] = length;
+	status = i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+				I2C_SMBUS_READ, command,
+				I2C_SMBUS_I2C_BLOCK_DATA, &data);
+	if (status < 0)
+		return status;
+
+	memcpy(values, &data.block[1], data.block[0]);
+	return data.block[0];
+}
+EXPORT_SYMBOL(i2c_smbus_read_i2c_block_data);
+
+s32 i2c_smbus_write_i2c_block_data(const struct i2c_client *client, u8 command,
+				   u8 length, const u8 *values)
+{
+	union i2c_smbus_data data;
+
+	if (length > I2C_SMBUS_BLOCK_MAX)
+		length = I2C_SMBUS_BLOCK_MAX;
+	data.block[0] = length;
+	memcpy(data.block + 1, values, length);
+	return i2c_smbus_xfer(client->adapter, client->addr, 0 /* client->flags */,
+			      I2C_SMBUS_WRITE, command,
+			      I2C_SMBUS_I2C_BLOCK_DATA, &data);
+}
+EXPORT_SYMBOL(i2c_smbus_write_i2c_block_data);
+
+/* Simulate a SMBus command using the i2c protocol
+   No checking of parameters is done!  */
+static s32 i2c_smbus_xfer_emulated(struct i2c_adapter *adapter, u16 addr,
+				   unsigned short flags,
+				   char read_write, u8 command, int size,
+				   union i2c_smbus_data *data)
+{
+	/* So we need to generate a series of msgs. In the case of writing, we
+	  need to use only one message; when reading, we need two. We initialize
+	  most things with sane defaults, to keep the code below somewhat
+	  simpler. */
+	unsigned char msgbuf0[I2C_SMBUS_BLOCK_MAX+3];
+	unsigned char msgbuf1[I2C_SMBUS_BLOCK_MAX+2];
+	int num = read_write == I2C_SMBUS_READ ? 2 : 1;
+	int i;
+	u8 partial_pec = 0;
+	int status;
+	struct i2c_msg msg[2] = {
+		{
+			.addr = addr,
+			.flags = flags,
+			.len = 1,
+			.buf = msgbuf0,
+		}, {
+			.addr = addr,
+			.flags = flags | I2C_M_RD,
+			.len = 0,
+			.buf = msgbuf1,
+		},
+	};
+
+	msgbuf0[0] = command;
+	switch (size) {
+	case I2C_SMBUS_QUICK:
+		msg[0].len = 0;
+		/* Special case: The read/write field is used as data */
+		msg[0].flags = flags | (read_write == I2C_SMBUS_READ ?
+					I2C_M_RD : 0);
+		num = 1;
+		break;
+	case I2C_SMBUS_BYTE:
+		if (read_write == I2C_SMBUS_READ) {
+			/* Special case: only a read! */
+			msg[0].flags = I2C_M_RD | flags;
+			num = 1;
+		}
+		break;
+	case I2C_SMBUS_BYTE_DATA:
+		if (read_write == I2C_SMBUS_READ)
+			msg[1].len = 1;
+		else {
+			msg[0].len = 2;
+			msgbuf0[1] = data->byte;
+		}
+		break;
+	case I2C_SMBUS_WORD_DATA:
+		if (read_write == I2C_SMBUS_READ)
+			msg[1].len = 2;
+		else {
+			msg[0].len = 3;
+			msgbuf0[1] = data->word & 0xff;
+			msgbuf0[2] = data->word >> 8;
+		}
+		break;
+	case I2C_SMBUS_I2C_BLOCK_DATA:
+		if (read_write == I2C_SMBUS_READ) {
+			msg[1].len = data->block[0];
+		} else {
+			msg[0].len = data->block[0] + 1;
+			if (msg[0].len > I2C_SMBUS_BLOCK_MAX + 1) {
+				dev_err(&adapter->dev,
+					"Invalid block write size %d\n",
+					data->block[0]);
+				return -EINVAL;
+			}
+			for (i = 1; i <= data->block[0]; i++)
+				msgbuf0[i] = data->block[i];
+		}
+		break;
+	default:
+		dev_err(&adapter->dev, "Unsupported transaction %d\n", size);
+		return -EOPNOTSUPP;
+	}
+
+	i = ((flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK
+				      && size != I2C_SMBUS_I2C_BLOCK_DATA);
+	if (i) {
+		/* Compute PEC if first message is a write */
+		if (!(msg[0].flags & I2C_M_RD)) {
+			if (num == 1) /* Write only */
+				i2c_smbus_add_pec(&msg[0]);
+			else /* Write followed by read */
+				partial_pec = i2c_smbus_msg_pec(0, &msg[0]);
+		}
+		/* Ask for PEC if last message is a read */
+		if (msg[num-1].flags & I2C_M_RD)
+			msg[num-1].len++;
+	}
+
+	status = i2c_transfer(adapter, msg, num);
+	if (status < 0)
+		return status;
+
+	/* Check PEC if last message is a read */
+	if (i && (msg[num-1].flags & I2C_M_RD)) {
+		status = i2c_smbus_check_pec(partial_pec, &msg[num-1]);
+		if (status < 0)
+			return status;
+	}
+
+	if (read_write == I2C_SMBUS_READ)
+		switch (size) {
+		case I2C_SMBUS_BYTE:
+			data->byte = msgbuf0[0];
+			break;
+		case I2C_SMBUS_BYTE_DATA:
+			data->byte = msgbuf1[0];
+			break;
+		case I2C_SMBUS_WORD_DATA:
+			data->word = msgbuf1[0] | (msgbuf1[1] << 8);
+			break;
+		case I2C_SMBUS_I2C_BLOCK_DATA:
+			for (i = 0; i < data->block[0]; i++)
+				data->block[i+1] = msgbuf1[i];
+			break;
+		}
+	return 0;
+}
+
+/**
+ * i2c_smbus_xfer - execute SMBus protocol operations
+ * @adapter: Handle to I2C bus
+ * @addr: Address of SMBus slave on that bus
+ * @flags: I2C_CLIENT_* flags (usually zero or I2C_CLIENT_PEC)
+ * @read_write: I2C_SMBUS_READ or I2C_SMBUS_WRITE
+ * @command: Byte interpreted by slave, for protocols which use such bytes
+ * @protocol: SMBus protocol operation to execute, such as I2C_SMBUS_PROC_CALL
+ * @data: Data to be read or written
+ *
+ * This executes an SMBus protocol operation, and returns a negative
+ * errno code else zero on success.
+ */
+s32 i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr, unsigned short flags,
+		   char read_write, u8 command, int protocol,
+		   union i2c_smbus_data *data)
+{
+	s32 res;
+
+	flags &= I2C_M_TEN | I2C_CLIENT_PEC | I2C_CLIENT_SCCB;
+
+	res = i2c_smbus_xfer_emulated(adapter, addr, flags, read_write,
+				      command, protocol, data);
+
+	return res;
+}
+EXPORT_SYMBOL(i2c_smbus_xfer);
+
 int i2c_read_reg(struct i2c_client *client, u32 addr, u8 *buf, u16 count)
 {
 	u8 msgbuf[2];
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index a107f5e..43038ec 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -85,6 +85,70 @@ struct i2c_client {
 
 #define to_i2c_client(a)	container_of(a, struct i2c_client, dev)
 
+/*flags for the client struct: */
+#define I2C_CLIENT_PEC	0x04		/* Use Packet Error Checking */
+#define I2C_CLIENT_TEN	0x10		/* we have a ten bit chip address */
+					/* Must equal I2C_M_TEN below */
+#define I2C_CLIENT_WAKE	0x80		/* for board_info; true iff can wake */
+#define I2C_CLIENT_SCCB	0x9000		/* Use Omnivision SCCB protocol */
+					/* Must match I2C_M_STOP|IGNORE_NAK */
+
+/*
+ * Data for SMBus Messages
+ */
+#define I2C_SMBUS_BLOCK_MAX	32	/* As specified in SMBus standard */
+union i2c_smbus_data {
+	__u8 byte;
+	__u16 word;
+	__u8 block[I2C_SMBUS_BLOCK_MAX + 2]; /* block[0] is used for length */
+			       /* and one more for user-space compatibility */
+};
+
+/* i2c_smbus_xfer read or write markers */
+#define I2C_SMBUS_READ	1
+#define I2C_SMBUS_WRITE	0
+
+/* SMBus transaction types (size parameter in the above functions)
+   Note: these no longer correspond to the (arbitrary) PIIX4 internal codes! */
+#define I2C_SMBUS_QUICK		    0
+#define I2C_SMBUS_BYTE		    1
+#define I2C_SMBUS_BYTE_DATA	    2
+#define I2C_SMBUS_WORD_DATA	    3
+#define I2C_SMBUS_PROC_CALL	    4
+#define I2C_SMBUS_BLOCK_DATA	    5
+#define I2C_SMBUS_I2C_BLOCK_BROKEN  6
+#define I2C_SMBUS_BLOCK_PROC_CALL   7		/* SMBus 2.0 */
+#define I2C_SMBUS_I2C_BLOCK_DATA    8
+
+/* This is the very generalized SMBus access routine. You probably do not
+   want to use this, though; one of the functions below may be much easier,
+   and probably just as fast.
+   Note that we use i2c_adapter here, because you do not need a specific
+   smbus adapter to call this function. */
+extern s32 i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
+			  unsigned short flags, char read_write, u8 command,
+			  int size, union i2c_smbus_data *data);
+
+/* Now follow the 'nice' access routines. These also document the calling
+   conventions of i2c_smbus_xfer. */
+
+extern s32 i2c_smbus_read_byte(const struct i2c_client *client);
+extern s32 i2c_smbus_write_byte(const struct i2c_client *client, u8 value);
+extern s32 i2c_smbus_read_byte_data(const struct i2c_client *client,
+				    u8 command);
+extern s32 i2c_smbus_write_byte_data(const struct i2c_client *client,
+				     u8 command, u8 value);
+extern s32 i2c_smbus_read_word_data(const struct i2c_client *client,
+				    u8 command);
+extern s32 i2c_smbus_write_word_data(const struct i2c_client *client,
+				     u8 command, u16 value);
+
+/* Returns the number of read bytes */
+extern s32 i2c_smbus_read_i2c_block_data(const struct i2c_client *client,
+					 u8 command, u8 length, u8 *values);
+extern s32 i2c_smbus_write_i2c_block_data(const struct i2c_client *client,
+					  u8 command, u8 length,
+					  const u8 *values);
 
 /**
  * struct i2c_board_info - template for device creation
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
