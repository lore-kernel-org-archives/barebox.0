Delivery-date: Mon, 09 Feb 2026 12:13:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpPD9-00AXDu-0B
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 12:13:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpPD7-0001tp-9e
	for lore@pengutronix.de; Mon, 09 Feb 2026 12:13:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=so1fhKQhMdyPYMm/stcJcCwNeYLgjNvzxfqkypZVIWM=; b=GmTh9c1PFS759B/nMuyGhG6F+z
	EL2o/AA9aAlRmaE0Z8PSc9d23Mk1uenat/HuiltWB5lI6BeJGMTK6NuKUDNZjJ/c2f7rHyU3DMAjA
	7gTk4J30n/cDq33pd+qiWpcKYJsSUQZi3YNLkoteSLp4c7CqbtIryjSNlrLhMxyg8cXgpon+qUKq6
	4P0zCMOla0Z7AKNTTBerl/c5X6D59VHm/tRWYkJQ21wF8c7C9DIvAQOAbNoGpONnkjLV7YHy6lRDo
	n7ZJZ9tUa1Q87U4o2AAS+kkngF6aKK2d/BCcdHaBGsLisLr5HcWPgZJS6qfYjBQ/9jKiZ1jaSXth7
	A5oJdqyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpPCa-0000000FHML-1op7;
	Mon, 09 Feb 2026 11:13:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpPCX-0000000FHLb-0Yuz
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 11:13:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpPCU-0001lr-3U; Mon, 09 Feb 2026 12:13:06 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpPCU-004siN-1t;
	Mon, 09 Feb 2026 12:13:05 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpPCT-007zBy-2f;
	Mon, 09 Feb 2026 12:13:05 +0100
Date: Mon, 9 Feb 2026 12:13:05 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260209111305.iy3cja5l2ixudzh5@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-3-a80b234ce1a1@pengutronix.de>
 <aYmiyyuM-0o17VfI@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYmiyyuM-0o17VfI@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_031309_483755_90F8A909 
X-CRM114-Status: GOOD (  43.19  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] mfd: Add Hexagon EFI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-09, Sascha Hauer wrote:
> On Thu, Feb 05, 2026 at 04:45:05PM +0100, Marco Felsch wrote:
> > This adds the EFI core driver to communicate with the system
> > co-processor.
> 
> This EFI doesn't have anything to do with the Extensible Firmware
> Interface, right? Could you add some note what it means to commit
> message, Kconfig and to the description in hgs-efi.c to avoid confusion?

Sure!

> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/mfd/Kconfig   |   8 +
> >  drivers/mfd/Makefile  |   1 +
> >  drivers/mfd/hgs-efi.c | 473 ++++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/mfd/hgs-efi.h |  46 +++++
> >  4 files changed, 528 insertions(+)
> > 
> > diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> > index 471f85cd63dad30b39017f694b594b768e463a15..f09e3903bcb50556b1556a84500ae73d91a5a63d 100644
> > --- a/drivers/mfd/Kconfig
> > +++ b/drivers/mfd/Kconfig
> > @@ -158,4 +158,12 @@ config MFD_ATMEL_SMC
> >  	bool
> >  	select MFD_SYSCON
> >  
> > +config MFD_HGS_EFI
> > +	tristate "Hexagon Geosystems EFI core driver"
> > +	depends on SERIAL_DEV_BUS
> > +	select CRC16
> > +	help
> > +	  Select this to get support for the EFI Co-Processor
> > +	  device found on several devices in the System1600 platform.
> > +
> >  endmenu
> > diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> > index 88480f70640d464e0e12241ec422a63ca860330d..9d27b0bc336a908f1245eb7f1d257a23e271ebd7 100644
> > --- a/drivers/mfd/Makefile
> > +++ b/drivers/mfd/Makefile
> > @@ -27,3 +27,4 @@ obj-$(CONFIG_MFD_ATMEL_SMC)	+= atmel-smc.o
> >  obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
> >  obj-$(CONFIG_MFD_PCA9450)	+= pca9450.o
> >  obj-$(CONFIG_MFD_TPS65219)	+= tps65219.o
> > +obj-$(CONFIG_MFD_HGS_EFI)	+= hgs-efi.o
> > diff --git a/drivers/mfd/hgs-efi.c b/drivers/mfd/hgs-efi.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..e548a6b209a6f64cecd8d56edcaa565b0b6d2657
> > --- /dev/null
> > +++ b/drivers/mfd/hgs-efi.c
> > @@ -0,0 +1,473 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: 2025 Pengutronix
> > +
> > +/*
> > + * Multifunction core driver for Hexagon Geosystems EFI MCU that is connected
> > + * via dedicated UART port. The communication protocol between both parties is
> > + * called Sensor Protocol (SEP).
> > + *
> > + * Based on drivers/mfd/rave-sp.c
> > + */
> > +
> > +#include <asm/unaligned.h>
> > +#include <common.h>
> > +#include <init.h>
> > +#include <of_device.h>
> > +#include <mfd/hgs-efi.h>
> > +#include <linux/crc16.h>
> > +#include <linux/ctype.h>
> > +#include <linux/string.h>
> > +#include <mfd/hgs-efi.h>
> > +
> > +#define HGS_EFI_SEP_ASCII_SYNCBYTE		'S'
> > +#define HGS_EFI_SEP_ASCII_MSG_TYPE_CMD		'C'
> > +#define HGS_EFI_SEP_ASCII_MSG_TYPE_EVENT	'E'
> > +#define HGS_EFI_SEP_ASCII_MSG_TYPE_REPLY	'R'
> > +#define HGS_EFI_SEP_ASCII_DELIM			','
> > +#define HGS_EFI_SEP_ASCII_HDR_END		':'
> > +
> > +/* Non addressed ascii header format */
> > +struct hgs_efi_sep_ascii_hdr {
> > +	u8 syncbyte;
> > +	u8 msg_type;
> > +	u8 msg_id[5]; /* u16 dec number */
> > +	u8 delim;
> > +	u8 crc16[4];  /* u16 hex number */
> > +	u8 hdr_end;
> > +} __packed;
> > +
> > +#define HGS_EFI_SEP_RX_BUFFER_SIZE	64
> > +#define HGS_EFI_SEP_FRAME_PREAMBLE_SZ	2
> > +#define HGS_EFI_SEP_FRAME_POSTAMBLE_SZ	2
> > +
> > +enum hgs_efi_sep_deframer_state {
> > +	HGS_EFI_SEP_EXPECT_SOF,
> > +	HGS_EFI_SEP_EXPECT_DATA,
> > +};
> > +
> > +/**
> > + * struct hgs_efi_deframer - Device protocol deframer
> > + *
> > + * @state:  Current state of the deframer
> > + * @data:   Buffer used to collect deframed data
> > + * @length: Number of bytes de-framed so far
> > + */
> > +struct hgs_efi_deframer {
> > +	enum hgs_efi_sep_deframer_state state;
> > +	unsigned char data[HGS_EFI_SEP_RX_BUFFER_SIZE];
> > +	size_t length;
> > +};
> > +
> > +/**
> > + * struct hgs_efi_reply - Reply as per SEP
> > + *
> > + * @length:	Expected reply length
> > + * @data:	Buffer to store reply payload in
> > + * @msg_id:	Expected SEP msg-id
> > + * @received:   Successful reply reception
> > + */
> > +struct hgs_efi_reply {
> > +	size_t length;
> > +	void  *data;
> > +	u16    msg_id;
> > +	bool   received;
> > +};
> > +
> > +struct hgs_efi_sep_coder {
> > +	int (*encode)(struct hgs_efi *efi, struct hgs_sep_cmd *cmd, u8 *buf);
> > +	int (*process_frame)(struct hgs_efi *efi, void *buf, size_t size);
> > +	unsigned int sep_header_hdrsize;
> > +	char sep_sof_char;
> > +};
> > +
> > +struct hgs_efi {
> > +	struct device dev;
> > +	struct serdev_device *serdev;
> > +	const struct hgs_efi_sep_coder *coder;
> > +	struct hgs_efi_deframer deframer;
> > +	struct hgs_efi_reply *reply;
> > +};
> > +
> > +static void hgs_efi_write(struct hgs_efi *efi, const u8 *data, size_t data_size)
> > +{
> > +	print_hex_dump_bytes("hgs-efi tx: ", DUMP_PREFIX_NONE, data, data_size);
> > +
> > +	/* timeout is ignored, instead polling_window is used */
> > +	serdev_device_write(efi->serdev, data, data_size, SECOND);
> > +}
> > +
> > +int hgs_efi_exec(struct hgs_efi *efi, struct hgs_sep_cmd *cmd)
> > +{
> > +	struct device *dev = efi->serdev->dev;
> > +	struct hgs_efi_reply reply = {
> > +		.msg_id   = cmd->msg_id,
> > +		.data     = cmd->reply_data,
> > +		.length   = cmd->reply_data_size,
> > +		.received = false,
> > +	};
> > +	unsigned int max_msg_len;
> > +	u8 *msg, *p;
> > +	int ret;
> > +
> > +	switch (cmd->type) {
> > +	case HGS_SEP_MSG_TYPE_COMMAND:
> > +	case HGS_SEP_MSG_TYPE_EVENT:
> > +		break;
> > +	case HGS_SEP_MSG_TYPE_REPLY:
> > +		dev_warn(dev, "MCU initiated communication is not supported yet!\n");
> > +		return -EINVAL;
> > +	default:
> > +		dev_warn(dev, "Unknown EFI msg-type %#x\n", cmd->type);
> > +		return -EINVAL;
> > +	}
> > +
> > +	max_msg_len = HGS_EFI_SEP_FRAME_PREAMBLE_SZ +
> > +		      HGS_EFI_SEP_FRAME_POSTAMBLE_SZ +
> > +		      efi->coder->sep_header_hdrsize + cmd->payload_size;
> > +	msg = p = xzalloc(max_msg_len);
> > +	if (!msg) {
> > +		dev_err(dev, "No memory\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	/* MCU serial flush preamble */
> > +	*p++ = '\r';
> > +	*p++ = '\n';
> > +
> > +	ret = efi->coder->encode(efi, cmd, p);
> > +	if (ret < 0) {
> > +		free(msg);
> > +		return ret;
> > +	}
> > +
> > +	p += ret;
> > +
> > +	/* SEP postamble */
> > +	*p++ = '\r';
> > +	*p++ = '\n';
> > +
> > +	efi->reply = &reply;
> > +	hgs_efi_write(efi, msg, p - msg);
> > +
> > +	free(msg);
> > +
> > +	if (cmd->type == HGS_SEP_MSG_TYPE_EVENT) {
> > +		efi->reply = NULL;
> > +		return 0;
> > +	}
> > +
> > +	/*
> > +	 * is_timeout will implicitly poll serdev via poller
> > +	 * infrastructure
> > +	 */
> > +	ret = wait_on_timeout(SECOND, reply.received);
> > +	if (ret)
> > +		dev_err(dev, "Command timeout\n");
> > +
> > +	efi->reply = NULL;
> > +
> > +	return ret;
> > +}
> > +
> > +#define HGS_SEP_DOUBLE_QUOTE_SUB_VAL	0x1a
> > +
> > +char *hgs_efi_extract_str_response(u8 *buf)
> > +{
> > +	unsigned char *start;
> > +	unsigned char *end;
> > +	unsigned char *p;
> > +	size_t i;
> > +
> > +	if (!buf || buf[0] != '"') {
> > +		pr_warn("hgs-efi: No start \" char found in string response\n");
> 
> Add above the includes:
> 
> #define pr_fmt(fmt) "hgs-efi: " fmt
> 
> And drp the prefix here.

Will do.

> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	start = &buf[1];
> > +	end = strrchr(start, '"');
> > +	if (!end) {
> > +		pr_warn("hgs-efi: No end \" char found in string response\n");
> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +	*end = '\0';
> > +
> > +	/*
> > +	 * Last step, check for substition val in string reply
> > +	 * and re-substitute it.
> > +	 */
> > +	p = start;
> > +	for (i = 0; i < strlen(start); i++)
> > +		if (*p == HGS_SEP_DOUBLE_QUOTE_SUB_VAL)
> > +			*p = '"';
> > +
> > +	return start;
> > +}
> > +
> > +static int hgs_sep_ascii_encode(struct hgs_efi *efi, struct hgs_sep_cmd *cmd,
> > +				u8 *buf)
> > +{
> > +	struct device *dev = efi->serdev->dev;
> > +	size_t hdr_len;
> > +	char msg_type;
> > +	char *hdr;
> > +
> > +	switch (cmd->type) {
> > +	case HGS_SEP_MSG_TYPE_COMMAND:
> > +		msg_type = 'C';
> > +		break;
> > +	case HGS_SEP_MSG_TYPE_EVENT:
> > +		msg_type = 'E';
> > +		break;
> > +	default:
> > +		/* Should never happen */
> > +		return -EINVAL;
> > +	}
> > +
> > +	/*
> > +	 * The ASCII coder doesn't care about the CRC, also the CRC handling
> > +	 * has a few flaws. Therefore skip it for now.
> > +	 */
> > +	hdr = xasprintf("S%c%u:", msg_type, cmd->msg_id);
> 
> xasprintf also doesn't fail.

Thanks

> > +	if (!hdr) {
> > +		dev_err(dev, "No memory\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	/* Now copy the header and the payload to the buffer */
> > +	hdr_len = strlen(hdr);
> > +	memcpy(buf, hdr, hdr_len);
> 
> You could simplify the above by doing:
> 
> 	hdr_len = sprintf(buf, "S%c%u:", msg_type, cmd->msg_id);

Thats a good point, thanks!

> 
> > +	memcpy(buf + hdr_len, cmd->payload, cmd->payload_size);
> > +
> > +	free(hdr);
> > +
> > +	return hdr_len + cmd->payload_size;
> > +}
> > +
> > +static int
> > +hgs_sep_process_ascii_frame(struct hgs_efi *efi, void *_buf, size_t size)
> > +{
> > +	struct device *dev = efi->serdev->dev;
> > +	unsigned char *payload;
> > +	unsigned int copy_bytes;
> > +	unsigned int msgid;
> > +	size_t payload_len;
> > +	u8 *buf = _buf;
> > +	size_t hdrlen;
> > +	char *p;
> > +	int ret;
> > +
> > +	/*
> > +	 * Non addressing ASCII format:
> > +	 * S[MsgType][MsgID](,[CRC]):[Payload]
> > +	 */
> > +	if (buf[1] != HGS_EFI_SEP_ASCII_MSG_TYPE_REPLY) {
> 
> check buf[0] != 0 before looking at buf[1]?

I could do this, but this function is only called if buf[0] has the
correct value (see: HGS_EFI_SEP_EXPECT_SOF).

> > +		dev_warn(dev, "Invalid msg-type %c(%#x)\n", *buf, *buf);
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Split header from payload first for the following str-ops on buf */
> > +	payload = strstr(buf, ":");
> > +	if (!payload) {
> > +		dev_warn(dev, "Failed to find header delim\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	hdrlen = payload - buf;
> > +	if (hdrlen > sizeof(struct hgs_efi_sep_ascii_hdr)) {
> > +		dev_warn(dev, "Invalid header len detected\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	*payload = 0;
> > +	payload++;
> > +
> > +	/*
> > +	 * Albeit the CRC is optional and the calc as a few flaws the coder may
> 
> s/as/has/

thanks.

> 
> > +	 * has added it. Skip the CRC check but do the msg-id check.
> > +	 */
> > +	p = strstr(buf, ",");
> > +	if (p)
> > +		*p = 0;
> > +
> > +	ret = kstrtouint(&buf[2], 10, &msgid);
> > +	if (ret) {
> > +		dev_warn(dev, "Failed to parse msgid, ret:%d\n", ret);
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (msgid != efi->reply->msg_id) {
> > +		dev_warn(dev, "Wrong msg-id received, ignore frame (%u != %u)\n",
> > +			 msgid, efi->reply->msg_id);
> > +		return -EINVAL;
> > +	}
> > +
> > +	payload_len = size - hdrlen;
> > +	copy_bytes = payload_len;
> > +	if (payload_len > efi->reply->length) {
> > +		dev_warn(dev, "Reply buffer to small, dropping remaining %zu bytes\n",
> > +			 payload_len - efi->reply->length);
> > +		copy_bytes = efi->reply->length;
> > +	}
> > +
> > +	memcpy(efi->reply->data, payload, copy_bytes);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct hgs_efi_sep_coder hgs_efi_ascii_coder = {
> > +	.encode = hgs_sep_ascii_encode,
> > +	.process_frame = hgs_sep_process_ascii_frame,
> > +	.sep_header_hdrsize = sizeof(struct hgs_efi_sep_ascii_hdr),
> > +	.sep_sof_char = HGS_EFI_SEP_ASCII_SYNCBYTE,
> > +};
> > +
> > +static bool hgs_efi_eof_received(struct hgs_efi_deframer *deframer)
> > +{
> > +	const char eof_seq[] = { '\r', '\n' };
> > +
> > +	if (deframer->length <= 2)
> > +		return false;
> > +
> > +	if (memcmp(&deframer->data[deframer->length - 2], eof_seq, 2))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static void hgs_efi_receive_frame(struct hgs_efi *efi,
> > +				  struct hgs_efi_deframer *deframer)
> > +{
> > +	int ret;
> > +
> > +	if (deframer->length < efi->coder->sep_header_hdrsize) {
> > +		dev_warn(efi->serdev->dev, "Bad frame: Too short\n");
> > +		return;
> > +	}
> > +
> > +	print_hex_dump_bytes("hgs-efi rx-frame: ", DUMP_PREFIX_NONE,
> > +			     deframer->data, deframer->length);
> > +
> > +	ret = efi->coder->process_frame(efi, deframer->data,
> > +			      deframer->length - HGS_EFI_SEP_FRAME_PREAMBLE_SZ);
> > +	if (!ret)
> > +		efi->reply->received = true;
> > +}
> > +
> > +static int hgs_efi_receive_buf(struct serdev_device *serdev,
> > +			       const unsigned char *buf, size_t size)
> > +{
> > +	struct device *dev = serdev->dev;
> > +	struct hgs_efi *efi = dev->priv;
> > +	struct hgs_efi_deframer *deframer = &efi->deframer;
> > +	const unsigned char *src = buf;
> > +	const unsigned char *end = buf + size;
> > +
> > +	print_hex_dump_bytes("hgs-efi rx-bytes: ", DUMP_PREFIX_NONE, buf, size);
> > +
> > +	while (src < end) {
> > +		const unsigned char byte = *src++;
> > +
> > +		switch (deframer->state) {
> > +		case HGS_EFI_SEP_EXPECT_SOF:
> > +			if (byte == efi->coder->sep_sof_char)
> > +				deframer->state = HGS_EFI_SEP_EXPECT_DATA;
> > +			deframer->data[deframer->length++] = byte;
> > +			break;
> > +		case HGS_EFI_SEP_EXPECT_DATA:
> > +			if (deframer->length >= sizeof(deframer->data)) {
> > +				dev_warn(dev, "Bad frame: Too long\n");
> > +				goto frame_reset;
> > +			}
> > +
> > +			deframer->data[deframer->length++] = byte;
> > +			if (hgs_efi_eof_received(deframer)) {
> > +				hgs_efi_receive_frame(efi, deframer);
> > +				goto frame_reset;
> > +			}
> > +		}
> > +	}
> > +
> > +	/*
> > +	 * All bytes processed but no EOF detected yet which because the serdev
> 
> s/which//
> 
> > +	 * poller may called us to early. Keep the deframer state to continue
> > +	 * the work where we finished.
> > +	 */
> > +	return size;
> > +
> > +frame_reset:
> > +	memset(deframer->data, 0, deframer->length);
> > +	deframer->length = 0;
> > +	deframer->state = HGS_EFI_SEP_EXPECT_SOF;
> > +
> > +	return src - buf;
> > +}
> > +
> > +static int hgs_efi_register_dev(struct hgs_efi *efi)
> > +{
> > +	struct device *dev = &efi->dev;
> > +
> > +	dev->parent = efi->serdev->dev;
> > +	dev_set_name(dev, "%s", "efi");
> 
> dev_set_name(dev, "efi");

Sure.

> > +	dev->id = DEVICE_ID_SINGLE;
> > +
> > +	return register_device(dev);
> > +}
> > +
> > +static int hgs_efi_probe(struct device *dev)
> > +{
> > +	struct serdev_device *serdev = to_serdev_device(dev->parent);
> > +	struct hgs_efi *efi;
> > +	u32 baud;
> > +	int ret;
> > +
> > +	if (of_property_read_u32(dev->of_node, "current-speed", &baud)) {
> > +		dev_err(dev,
> > +			"'current-speed' is not specified in device node\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	efi = xzalloc(sizeof(*efi));
> > +	if (!efi)
> > +		return -ENOMEM;
> > +
> > +	efi->coder = of_device_get_match_data(dev);
> > +	if (!efi->coder) {
> > +		free(efi);
> > +		return -ENODEV;
> > +	}
> > +
> > +	efi->serdev = serdev;
> > +
> > +	dev->priv = efi;
> > +	serdev->dev = dev;
> > +	serdev->receive_buf = hgs_efi_receive_buf;
> > +	serdev->polling_interval = 200 * MSECOND;
> > +	serdev->polling_window = 10 * MSECOND;
> > +
> > +	ret = serdev_device_open(serdev);
> 
> This registers a poller, so when one of the calls below fails this might
> have some bad consequences. Oh, we do not have a serdev_device_close(),
> I won't look further ;)

Hm.. something we should fix. Let me check if I can add a
serdev_device_close() routine real quick else I would add a comment.

Regards,
  Marco



> 
> Sascha
> 
> > +	if (ret)
> > +		return ret;
> > +
> > +	serdev_device_set_baudrate(serdev, baud);
> > +
> > +	ret = hgs_efi_register_dev(efi);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to register EFI device\n");
> > +		return ret;
> > +	};
> > +
> > +	return of_platform_populate(dev->of_node, NULL, dev);
> > +}
> > +
> > +static const struct of_device_id __maybe_unused hgs_efi_dt_ids[] = {
> > +	{ .compatible = "hgs,efi-gs05", .data = &hgs_efi_ascii_coder },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, lgs_efi_dt_ids);
> > +
> > +static struct driver hgs_efi_drv = {
> > +	.name = "hgs-efi",
> > +	.probe = hgs_efi_probe,
> > +	.of_compatible = DRV_OF_COMPAT(hgs_efi_dt_ids),
> > +};
> > +console_platform_driver(hgs_efi_drv);
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


