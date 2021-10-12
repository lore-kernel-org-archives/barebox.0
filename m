Delivery-date: Tue, 12 Oct 2021 10:23:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maD4J-0003pH-9f
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 10:23:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maD4H-0004BJ-V7
	for lore@pengutronix.de; Tue, 12 Oct 2021 10:23:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xrNnj4gqdN8LAcvvHYBrLCxJzdRX+R6tJbB1ZYRbjo0=; b=RoIoVoW3apTaJXLmSwhkS6FpV+
	jfJAVsZk2E25kbXFb6XjR81ChwbJehTajudc+tcZsyuH0/3gpZi5Al6SN48xPez5P2k/2xeeIakUL
	sqQR4zVrfvhBo5rrCy7NpOO9CpInU5KbQS2eV+JfNcE+Woa+wKYfjeFZwwQhzgiP6jZkjGOJPKVvS
	81ijjzcNeyYLBP8Z1XuFNuJj6aywAVFzeiJbtbsU7zGEP+9Gs4nXpqESU5tucGk8/aesBoWWbsoRN
	gcnEuHMLvq0ml0nvwsOQXuHOc4cgAqIQfBvLXpCRcGxTz6+xXL3+dKhHcCLVq5b0oporYD8mYihlq
	WBdckO5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maD2h-00BzKr-4T; Tue, 12 Oct 2021 08:21:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maD2X-00BzIu-Hq
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 08:21:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maD2W-00043P-8h; Tue, 12 Oct 2021 10:21:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maD2V-0003vi-V9; Tue, 12 Oct 2021 10:21:35 +0200
Date: Tue, 12 Oct 2021 10:21:35 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>, Yunus Bas <Y.Bas@phytec.de>
Message-ID: <20211012082135.GN28453@pengutronix.de>
References: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
 <20211012015359.933464-3-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211012015359.933464-3-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:16:13 up 236 days, 11:40, 140 users,  load average: 1.35, 0.78,
 0.42
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_012137_626119_DA555D02 
X-CRM114-Status: GOOD (  46.86  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] imx-bbu-nand-fcb: Add command to help debug FCB issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 06:53:59PM -0700, Trent Piepho wrote:
> Add new "fcb" command.  It can save a decoded copy of the FCB to a file,
> do a hexdump of the decoded FCB, or display the FCB fields.  Or simply
> read and validate the FCB.
> 
> The FCB uses a different ECC system that the rest of flash and there is
> no easy way to decode it in Barebox or Linux.  The code already here
> does it.
> 
> This will also set the nand0.barebox device parameters with the location
> of the bootloader images as read from the FCB.
> 
> Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> ---
>  commands/Kconfig          |  19 ++++++
>  common/imx-bbu-nand-fcb.c | 126 ++++++++++++++++++++++++++++++++++++--
>  2 files changed, 139 insertions(+), 6 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 5ae3cb3dd..d3b5cd7fa 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -277,6 +277,25 @@ config CMD_SLICE
>  	  command can be used to print informations about slices and also to manipulate
>  	  them on the command line for debugging purposes.
>  
> +config CMD_IMX_NAND_FCB
> +	tristate
> +	prompt "iMX FCB decoding and display"
> +	depends on BAREBOX_UPDATE_IMX_NAND_FCB
> +	help
> +	  Decode and display or save the contents of the iMX FCB.
> +
> +	  This will add a command named "fcb" that will decode the FCB and can
> +	  save the decode data to a file or display the contents.
> +
> +	  The FCB is a block of data at the start of NAND flash that instructs
> +	  the iMX ROM bootloader on how to find Barebox.  It uses a different
> +	  ECC config than the rest of NAND flash and can't be read correctly
> +	  with normal "md" commands.
> +
> +	  The command also saves the locations of the Barebox image in NAND
> +	  from the FCB into parameters on the NAND deivce, which are available
> +	  in scripts as environment variables.
> +
>  # end Information commands
>  endmenu
>  
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index 76ac1d4f2..e61494930 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -7,6 +7,8 @@
>  
>  #include <filetype.h>
>  #include <common.h>
> +#include <command.h>
> +#include <getopt.h>
>  #include <malloc.h>
>  #include <errno.h>
>  #include <fcntl.h>
> @@ -14,6 +16,7 @@
>  #include <linux/sizes.h>
>  #include <bbu.h>
>  #include <fs.h>
> +#include <libfile.h>
>  #include <linux/mtd/mtd-abi.h>
>  #include <linux/mtd/nand_mxs.h>
>  #include <linux/mtd/mtd.h>
> @@ -27,6 +30,9 @@
>  #include <mtd/mtd-peb.h>
>  #include <soc/imx/imx-nand-bcb.h>
>  
> +/* Name of NAND device that contains FCB */
> +#define FCB_NAND_PART "nand0.barebox"
> +
>  #ifdef CONFIG_ARCH_IMX6
>  #include <mach/imx6.h>
>  static inline int fcb_is_bch_encoded(void)
> @@ -387,6 +393,7 @@ static ssize_t raw_write_page(struct mtd_info *mtd, void *buf, loff_t offset)
>          return ret;
>  }
>  
> +/* Returns size of FCB on success, negative on error */
>  static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
>  {
>  	int ret;
> @@ -403,10 +410,13 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
>  		goto err;
>  	}
>  
> -	if (fcb_is_bch_encoded())
> +	if (fcb_is_bch_encoded()) {
>  		fcb = read_fcb_bch(rawpage, 40);
> -	else
> +		ret = 128 * 8;
> +	} else {
>  		fcb = read_fcb_hamming_13_8(rawpage);
> +		ret = 512;
> +	}
>  
>  	if (IS_ERR(fcb)) {
>  		pr_err("Cannot read fcb on block %d\n", num);
> @@ -415,7 +425,6 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
>  	}
>  
>  	*retfcb = fcb;
> -	ret = 0;
>  err:
>  	free(rawpage);
>  
> @@ -870,7 +879,7 @@ static int fcb_dbbt_check(struct mtd_info *mtd, int num, struct fcb_block *fcb)
>  	int pages_per_block = mtd->erasesize / mtd->writesize;
>  
>  	ret = read_fcb(mtd, num, &f);
> -	if (ret)
> +	if (ret < 0)
>  		return ret;
>  
>  	if (memcmp(fcb, f, sizeof(*fcb))) {
> @@ -1403,7 +1412,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
>  	imx_handler->filetype = filetype_arm_barebox;
>  
>  	handler = &imx_handler->handler;
> -	handler->devicefile = "nand0.barebox";
> +	handler->devicefile = FCB_NAND_PART;
>  	handler->name = name;
>  	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  	handler->handler = imx_bbu_nand_update;
> @@ -1480,7 +1489,7 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
>  	imx_handler->filetype = filetype_mxs_bootstream;
>  
>  	handler = &imx_handler->handler;
> -	handler->devicefile = "nand0.barebox";
> +	handler->devicefile = FCB_NAND_PART;
>  	handler->name = name;
>  	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  	handler->handler = imx_bbu_nand_update;
> @@ -1492,3 +1501,108 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
>  	return ret;
>  }
>  #endif
> +
> +#if IS_ENABLED(CONFIG_CMD_IMX_NAND_FCB)
> +
> +static int do_fcb(int argc, char *argv[])
> +{
> +	int opt;
> +	int fd;
> +	int ret;
> +	int fcbsize;
> +	struct cdev *cdev;
> +	struct fcb_block *fcb;
> +	bool hex = false, info = false;
> +	const char *outfile = NULL;
> +	unsigned int block = 0;
> +
> +	while ((opt = getopt(argc, argv, "xin:o:")) > 0) {
> +		switch (opt) {
> +		case 'x':
> +			hex = true;
> +			break;
> +		case 'i':
> +			info = true;
> +			break;
> +		case 'o':
> +			outfile = optarg;
> +			break;
> +		case 'n':
> +			block = strtoull_suffix(optarg, NULL, 0);
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}

Not sure if we need to control this command in such a fine grained way.
For me just extracting all possible FCBs including the firmware images,
maybe printing consistency information would be enough. That's just a
personal opinion though, feel free to override it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

