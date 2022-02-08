Delivery-date: Tue, 08 Feb 2022 09:26:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLpG-009B63-0l
	for lore@lore.pengutronix.de; Tue, 08 Feb 2022 09:26:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLpD-0000AT-Ig
	for lore@pengutronix.de; Tue, 08 Feb 2022 09:26:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9gw/lg4iVPD78xy5B9DpgperR97zDBCcEuthsPeUO0=; b=NFc7HuluCQCCtY
	ntQoX7h6IxQM3wBz/Nwf3NcP/WBTuRNbb6sUIsBcyIxAvaSXBaOnUdvHB1aIilbwMUyTYUf5TDbde
	HXvw524O90oxE3pnjIN1iGUlilGihfeFvqQL9qG5PQxsC8kOJpytkFcKP/2l+A6rp7zoqUuubolt6
	5se4UgvhZJCN2FsOELqQGiIs8TlmROhu+sIbv198hQdEj40oB0o9Pjeon1GuOwecDjD6V5Np676nx
	FuiZ7NW3QgttS8d+G8wI7sg7Xx2wwo3pkZk+xc7fHVPvDCZvf9p5F4ZFPFxvpV3INokWt+6bMTFft
	ZCP1nbYFOE9scbbJYO9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHLnh-00CwH9-U5; Tue, 08 Feb 2022 08:24:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHLkl-00CuqH-Lt
 for barebox@lists.infradead.org; Tue, 08 Feb 2022 08:21:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLkk-0007bt-66; Tue, 08 Feb 2022 09:21:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLkj-00046T-FE; Tue, 08 Feb 2022 09:21:33 +0100
Date: Tue, 8 Feb 2022 09:21:33 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220208082133.GO18637@pengutronix.de>
References: <20220202223023.341817-4-a.fatoum@pengutronix.de>
 <20220207221618.399399-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220207221618.399399-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:21:22 up 59 days, 17:06, 81 users,  load average: 0.10, 0.15, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_002136_614737_2BD05046 
X-CRM114-Status: GOOD (  34.80  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
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
Subject: Re: [PATCH] fixup! video: add MIPI DBI Type C Option 3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 11:16:18PM +0100, Ahmad Fatoum wrote:
> Readd common code...
> =

> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> Threw out the baby with the bath water in the rebase..
> ---
>  commands/mipi_dbi.c          | 104 ++++++++++++++++++++++++
>  include/video/mipi_dbi.h     | 105 ++++++++++++++++++++++++
>  include/video/mipi_display.h | 150 +++++++++++++++++++++++++++++++++++
>  3 files changed, 359 insertions(+)
>  create mode 100644 commands/mipi_dbi.c
>  create mode 100644 include/video/mipi_dbi.h
>  create mode 100644 include/video/mipi_display.h

Applied, thanks

Sascha

> =

> diff --git a/commands/mipi_dbi.c b/commands/mipi_dbi.c
> new file mode 100644
> index 000000000000..b9b665b72151
> --- /dev/null
> +++ b/commands/mipi_dbi.c
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: =A9 2022 Ahmad Fatoum
> +
> +#include <common.h>
> +#include <command.h>
> +#include <getopt.h>
> +#include <video/mipi_dbi.h>
> +#include <video/mipi_display.h>
> +
> +static int mipi_dbi_command_show(struct mipi_dbi *dbi, int cmd)
> +{
> +	u8 val[4];
> +	int ret;
> +	size_t len;
> +
> +	if (!mipi_dbi_command_is_read(dbi, cmd))
> +		return -EACCES;
> +
> +	len =3D mipi_dbi_command_read_len(cmd);
> +
> +	printf("%02x: ", cmd);
> +	ret =3D mipi_dbi_command_buf(dbi, cmd, val, len);
> +	if (ret) {
> +		printf("XX\n");
> +		return ret;
> +	}
> +	printf("%*phN\n", (int)len, val);
> +
> +	return 0;
> +}
> +
> +static int do_mipi_dbi(int argc, char *argv[])
> +{
> +	struct mipi_dbi *dbi;
> +	int opt, ret, i;
> +	bool write =3D false;
> +	u8 cmd, val[4];
> +
> +	dbi =3D list_first_entry_or_null(&mipi_dbi_list, struct mipi_dbi, list);
> +
> +	while ((opt =3D getopt(argc, argv, "wld:")) > 0) {
> +		struct mipi_dbi *tmp;
> +
> +		switch (opt) {
> +		case 'w':
> +			write =3D true;
> +			break;
> +		case 'l':
> +			list_for_each_entry(tmp, &mipi_dbi_list, list)
> +				printf("%s\n", mipi_dbi_name(tmp));
> +			return 0;
> +		case 'd':
> +			dbi =3D NULL;
> +			list_for_each_entry(tmp, &mipi_dbi_list, list) {
> +				if (!strcmp(optarg, mipi_dbi_name(tmp))) {
> +					dbi =3D tmp;
> +					break;
> +				}
> +			}
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (!dbi)
> +		return -ENODEV;
> +
> +	if (optind =3D=3D argc) {
> +		for (cmd =3D 0; cmd < 255; cmd++)
> +			mipi_dbi_command_show(dbi, cmd);
> +		return 0;
> +	}
> +
> +	ret =3D kstrtou8(argv[optind++], 16, &cmd);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (optind =3D=3D argc && !write)
> +		return mipi_dbi_command_show(dbi, cmd);
> +
> +	for (i =3D optind; i < argc; i++) {
> +		ret =3D kstrtou8(argv[optind + i], 16, &val[i]);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return mipi_dbi_command_buf(dbi, cmd, val, argc - optind);
> +}
> +
> +BAREBOX_CMD_HELP_START(mipi_dbi)
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT ("-l\t",  "list all MIPI DBI devices")
> +BAREBOX_CMD_HELP_OPT ("-d DEVICE",  "select specific device (default is =
first registered)")
> +BAREBOX_CMD_HELP_OPT ("-w",  "issue write command")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(mipi_dbi)
> +	.cmd		=3D do_mipi_dbi,
> +	BAREBOX_CMD_DESC("write/read from MIPI DBI SPI device")
> +	BAREBOX_CMD_OPTS("[-wld] [REG] [DATA...]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
> +	BAREBOX_CMD_HELP(cmd_mipi_dbi_help)
> +BAREBOX_CMD_END
> diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
> new file mode 100644
> index 000000000000..92fdc500d1ba
> --- /dev/null
> +++ b/include/video/mipi_dbi.h
> @@ -0,0 +1,105 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * MIPI Display Bus Interface (DBI) LCD controller support
> + *
> + * Copyright 2016 Noralf Tr=F8nnes
> + */
> +
> +#ifndef __LINUX_MIPI_DBI_H
> +#define __LINUX_MIPI_DBI_H
> +
> +#include <linux/types.h>
> +#include <spi/spi.h>
> +#include <driver.h>
> +
> +struct regulator;
> +struct fb_videomode;
> +
> +/**
> + * struct mipi_dbi - MIPI DBI interface
> + */
> +struct mipi_dbi {
> +	/**
> +	 * @command: Bus specific callback executing commands.
> +	 */
> +	int (*command)(struct mipi_dbi *dbi, u8 *cmd, u8 *param, size_t num);
> +
> +	/**
> +	 * @read_commands: Array of read commands terminated by a zero entry.
> +	 *                 Reading is disabled if this is NULL.
> +	 */
> +	const u8 *read_commands;
> +
> +	/**
> +	 * @swap_bytes: Swap bytes in buffer before transfer
> +	 */
> +	bool swap_bytes;
> +
> +	/**
> +	 * @reset: Optional reset gpio
> +	 */
> +	int reset;
> +
> +	/* Type C specific */
> +
> +	/**
> +	 * @spi: SPI device
> +	 */
> +	struct spi_device *spi;
> +
> +	/**
> +	 * @dc: Optional D/C gpio.
> +	 */
> +	int dc;
> +
> +	struct list_head list;
> +};
> +
> +static inline const char *mipi_dbi_name(struct mipi_dbi *dbi)
> +{
> +	return dev_name(&dbi->spi->dev);
> +}
> +
> +int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
> +		      int dc);
> +void mipi_dbi_hw_reset(struct mipi_dbi *dbi);
> +bool mipi_dbi_display_is_on(struct mipi_dbi *dbi);
> +
> +u32 mipi_dbi_spi_cmd_max_speed(struct spi_device *spi, size_t len);
> +int mipi_dbi_spi_transfer(struct spi_device *spi, u32 speed_hz,
> +			  u8 bpw, const void *buf, size_t len);
> +
> +int mipi_dbi_command_read(struct mipi_dbi *dbi, u8 cmd, u8 *val);
> +int mipi_dbi_command_buf(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t =
len);
> +int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *da=
ta,
> +			      size_t len);
> +
> +/**
> + * mipi_dbi_command - MIPI DCS command with optional parameter(s)
> + * @dbi: MIPI DBI structure
> + * @cmd: Command
> + * @seq: Optional parameter(s)
> + *
> + * Send MIPI DCS command to the controller. Use mipi_dbi_command_read() =
for
> + * get/read.
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +#define mipi_dbi_command(dbi, cmd, seq...) \
> +({ \
> +	const u8 d[] =3D { seq }; \
> +	struct device_d *dev =3D &(dbi)->spi->dev;	\
> +	int ret; \
> +	ret =3D mipi_dbi_command_stackbuf(dbi, cmd, d, ARRAY_SIZE(d)); \
> +	if (ret) \
> +		dev_err(dev, "error %pe when sending command %#02x\n", ERR_PTR(ret), c=
md); \
> +	ret; \
> +})
> +
> +bool mipi_dbi_command_is_read(struct mipi_dbi *dbi, u8 cmd);
> +int mipi_dbi_command_read_len(int cmd);
> +
> +extern struct list_head mipi_dbi_list;
> +
> +#endif /* __LINUX_MIPI_DBI_H */
> diff --git a/include/video/mipi_display.h b/include/video/mipi_display.h
> new file mode 100644
> index 000000000000..b6d8b874233f
> --- /dev/null
> +++ b/include/video/mipi_display.h
> @@ -0,0 +1,150 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Defines for Mobile Industry Processor Interface (MIPI(R))
> + * Display Working Group standards: DSI, DCS, DBI, DPI
> + *
> + * Copyright (C) 2010 Guennadi Liakhovetski <g.liakhovetski@gmx.de>
> + * Copyright (C) 2006 Nokia Corporation
> + * Author: Imre Deak <imre.deak@nokia.com>
> + */
> +#ifndef MIPI_DISPLAY_H
> +#define MIPI_DISPLAY_H
> +
> +/* MIPI DSI Processor-to-Peripheral transaction types */
> +enum {
> +	MIPI_DSI_V_SYNC_START				=3D 0x01,
> +	MIPI_DSI_V_SYNC_END				=3D 0x11,
> +	MIPI_DSI_H_SYNC_START				=3D 0x21,
> +	MIPI_DSI_H_SYNC_END				=3D 0x31,
> +
> +	MIPI_DSI_COMPRESSION_MODE			=3D 0x07,
> +	MIPI_DSI_END_OF_TRANSMISSION			=3D 0x08,
> +
> +	MIPI_DSI_COLOR_MODE_OFF				=3D 0x02,
> +	MIPI_DSI_COLOR_MODE_ON				=3D 0x12,
> +	MIPI_DSI_SHUTDOWN_PERIPHERAL			=3D 0x22,
> +	MIPI_DSI_TURN_ON_PERIPHERAL			=3D 0x32,
> +
> +	MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM		=3D 0x03,
> +	MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM		=3D 0x13,
> +	MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM		=3D 0x23,
> +
> +	MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM		=3D 0x04,
> +	MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM		=3D 0x14,
> +	MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM		=3D 0x24,
> +
> +	MIPI_DSI_DCS_SHORT_WRITE			=3D 0x05,
> +	MIPI_DSI_DCS_SHORT_WRITE_PARAM			=3D 0x15,
> +
> +	MIPI_DSI_DCS_READ				=3D 0x06,
> +	MIPI_DSI_EXECUTE_QUEUE				=3D 0x16,
> +
> +	MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE		=3D 0x37,
> +
> +	MIPI_DSI_NULL_PACKET				=3D 0x09,
> +	MIPI_DSI_BLANKING_PACKET			=3D 0x19,
> +	MIPI_DSI_GENERIC_LONG_WRITE			=3D 0x29,
> +	MIPI_DSI_DCS_LONG_WRITE				=3D 0x39,
> +
> +	MIPI_DSI_PICTURE_PARAMETER_SET			=3D 0x0a,
> +	MIPI_DSI_COMPRESSED_PIXEL_STREAM		=3D 0x0b,
> +
> +	MIPI_DSI_LOOSELY_PACKED_PIXEL_STREAM_YCBCR20	=3D 0x0c,
> +	MIPI_DSI_PACKED_PIXEL_STREAM_YCBCR24		=3D 0x1c,
> +	MIPI_DSI_PACKED_PIXEL_STREAM_YCBCR16		=3D 0x2c,
> +
> +	MIPI_DSI_PACKED_PIXEL_STREAM_30			=3D 0x0d,
> +	MIPI_DSI_PACKED_PIXEL_STREAM_36			=3D 0x1d,
> +	MIPI_DSI_PACKED_PIXEL_STREAM_YCBCR12		=3D 0x3d,
> +
> +	MIPI_DSI_PACKED_PIXEL_STREAM_16			=3D 0x0e,
> +	MIPI_DSI_PACKED_PIXEL_STREAM_18			=3D 0x1e,
> +	MIPI_DSI_PIXEL_STREAM_3BYTE_18			=3D 0x2e,
> +	MIPI_DSI_PACKED_PIXEL_STREAM_24			=3D 0x3e,
> +};
> +
> +/* MIPI DSI Peripheral-to-Processor transaction types */
> +enum {
> +	MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT	=3D 0x02,
> +	MIPI_DSI_RX_END_OF_TRANSMISSION			=3D 0x08,
> +	MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_1BYTE	=3D 0x11,
> +	MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_2BYTE	=3D 0x12,
> +	MIPI_DSI_RX_GENERIC_LONG_READ_RESPONSE		=3D 0x1a,
> +	MIPI_DSI_RX_DCS_LONG_READ_RESPONSE		=3D 0x1c,
> +	MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE	=3D 0x21,
> +	MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE	=3D 0x22,
> +};
> +
> +/* MIPI DCS commands */
> +enum {
> +	MIPI_DCS_NOP			=3D 0x00,
> +	MIPI_DCS_SOFT_RESET		=3D 0x01,
> +	MIPI_DCS_GET_COMPRESSION_MODE	=3D 0x03,
> +	MIPI_DCS_GET_DISPLAY_ID		=3D 0x04,
> +	MIPI_DCS_GET_ERROR_COUNT_ON_DSI	=3D 0x05,
> +	MIPI_DCS_GET_RED_CHANNEL	=3D 0x06,
> +	MIPI_DCS_GET_GREEN_CHANNEL	=3D 0x07,
> +	MIPI_DCS_GET_BLUE_CHANNEL	=3D 0x08,
> +	MIPI_DCS_GET_DISPLAY_STATUS	=3D 0x09,
> +	MIPI_DCS_GET_POWER_MODE		=3D 0x0A,
> +	MIPI_DCS_GET_ADDRESS_MODE	=3D 0x0B,
> +	MIPI_DCS_GET_PIXEL_FORMAT	=3D 0x0C,
> +	MIPI_DCS_GET_DISPLAY_MODE	=3D 0x0D,
> +	MIPI_DCS_GET_SIGNAL_MODE	=3D 0x0E,
> +	MIPI_DCS_GET_DIAGNOSTIC_RESULT	=3D 0x0F,
> +	MIPI_DCS_ENTER_SLEEP_MODE	=3D 0x10,
> +	MIPI_DCS_EXIT_SLEEP_MODE	=3D 0x11,
> +	MIPI_DCS_ENTER_PARTIAL_MODE	=3D 0x12,
> +	MIPI_DCS_ENTER_NORMAL_MODE	=3D 0x13,
> +	MIPI_DCS_GET_IMAGE_CHECKSUM_RGB	=3D 0x14,
> +	MIPI_DCS_GET_IMAGE_CHECKSUM_CT	=3D 0x15,
> +	MIPI_DCS_EXIT_INVERT_MODE	=3D 0x20,
> +	MIPI_DCS_ENTER_INVERT_MODE	=3D 0x21,
> +	MIPI_DCS_SET_GAMMA_CURVE	=3D 0x26,
> +	MIPI_DCS_SET_DISPLAY_OFF	=3D 0x28,
> +	MIPI_DCS_SET_DISPLAY_ON		=3D 0x29,
> +	MIPI_DCS_SET_COLUMN_ADDRESS	=3D 0x2A,
> +	MIPI_DCS_SET_PAGE_ADDRESS	=3D 0x2B,
> +	MIPI_DCS_WRITE_MEMORY_START	=3D 0x2C,
> +	MIPI_DCS_WRITE_LUT		=3D 0x2D,
> +	MIPI_DCS_READ_MEMORY_START	=3D 0x2E,
> +	MIPI_DCS_SET_PARTIAL_ROWS	=3D 0x30,		/* MIPI DCS 1.02 - MIPI_DCS_SET_PA=
RTIAL_AREA before that */
> +	MIPI_DCS_SET_PARTIAL_COLUMNS	=3D 0x31,
> +	MIPI_DCS_SET_SCROLL_AREA	=3D 0x33,
> +	MIPI_DCS_SET_TEAR_OFF		=3D 0x34,
> +	MIPI_DCS_SET_TEAR_ON		=3D 0x35,
> +	MIPI_DCS_SET_ADDRESS_MODE	=3D 0x36,
> +	MIPI_DCS_SET_SCROLL_START	=3D 0x37,
> +	MIPI_DCS_EXIT_IDLE_MODE		=3D 0x38,
> +	MIPI_DCS_ENTER_IDLE_MODE	=3D 0x39,
> +	MIPI_DCS_SET_PIXEL_FORMAT	=3D 0x3A,
> +	MIPI_DCS_WRITE_MEMORY_CONTINUE	=3D 0x3C,
> +	MIPI_DCS_SET_3D_CONTROL		=3D 0x3D,
> +	MIPI_DCS_READ_MEMORY_CONTINUE	=3D 0x3E,
> +	MIPI_DCS_GET_3D_CONTROL		=3D 0x3F,
> +	MIPI_DCS_SET_VSYNC_TIMING	=3D 0x40,
> +	MIPI_DCS_SET_TEAR_SCANLINE	=3D 0x44,
> +	MIPI_DCS_GET_SCANLINE		=3D 0x45,
> +	MIPI_DCS_SET_DISPLAY_BRIGHTNESS =3D 0x51,		/* MIPI DCS 1.3 */
> +	MIPI_DCS_GET_DISPLAY_BRIGHTNESS =3D 0x52,		/* MIPI DCS 1.3 */
> +	MIPI_DCS_WRITE_CONTROL_DISPLAY  =3D 0x53,		/* MIPI DCS 1.3 */
> +	MIPI_DCS_GET_CONTROL_DISPLAY	=3D 0x54,		/* MIPI DCS 1.3 */
> +	MIPI_DCS_WRITE_POWER_SAVE	=3D 0x55,		/* MIPI DCS 1.3 */
> +	MIPI_DCS_GET_POWER_SAVE		=3D 0x56,		/* MIPI DCS 1.3 */
> +	MIPI_DCS_SET_CABC_MIN_BRIGHTNESS =3D 0x5E,	/* MIPI DCS 1.3 */
> +	MIPI_DCS_GET_CABC_MIN_BRIGHTNESS =3D 0x5F,	/* MIPI DCS 1.3 */
> +	MIPI_DCS_READ_DDB_START		=3D 0xA1,
> +	MIPI_DCS_READ_PPS_START		=3D 0xA2,
> +	MIPI_DCS_READ_DDB_CONTINUE	=3D 0xA8,
> +	MIPI_DCS_READ_PPS_CONTINUE	=3D 0xA9,
> +};
> +
> +/* MIPI DCS pixel formats */
> +#define MIPI_DCS_PIXEL_FMT_24BIT	7
> +#define MIPI_DCS_PIXEL_FMT_18BIT	6
> +#define MIPI_DCS_PIXEL_FMT_16BIT	5
> +#define MIPI_DCS_PIXEL_FMT_12BIT	3
> +#define MIPI_DCS_PIXEL_FMT_8BIT		2
> +#define MIPI_DCS_PIXEL_FMT_3BIT		1
> +
> +#endif
> -- =

> 2.34.1
> =

> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

