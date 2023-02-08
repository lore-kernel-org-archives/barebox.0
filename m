Delivery-date: Wed, 08 Feb 2023 10:20:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPgcd-000Pre-CV
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 10:20:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPgcZ-0007mN-T8
	for lore@pengutronix.de; Wed, 08 Feb 2023 10:20:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0G1vLcZexEekwH9Y0VOCK7CKz9LuCFIg+NSpMrhJasg=; b=RngbafkiPxnZjxzfaq79/Achk7
	OBZK72G5PMb7wC7TlbUE2P9q6+gJ+9AW9u7Qc+3SZiiqB3HyF3SlR77DZ1RIiSUDuQLeCI/uWezJ1
	OMw5tiuBaisy0U62hJ+256duWwsabNRGx+hV0Tto2l/xhrv2/Shrpg9VB21KBEH8YRZx1BBag5nTn
	TSVnp6EdBiC+idRziOJu8iX3EN+p+wycqE0lLxO77/hWL4heblK79BGL+ok2QYIEwo/gMohx5UOCd
	bnevqt5ozDWtcAMXfz3AVdzDCLHVwR4ZRMHBpAwOX2cCey2KEGTCj1eLCTXKVQNCh2SDy1bXrceEj
	zACCbXoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgau-00ElrA-D2; Wed, 08 Feb 2023 09:18:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgZc-00ElQP-U4
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 09:17:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPgZb-0007O4-3B; Wed, 08 Feb 2023 10:17:03 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPgZa-0007gJ-KW; Wed, 08 Feb 2023 10:17:02 +0100
Date: Wed, 8 Feb 2023 10:17:02 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Daniel =?utf-8?B?QnLDoXQ=?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230208091702.sj4lmnttzv726mep@pengutronix.de>
References: <20230207010525.2693-1-danek.brat@gmail.com>
 <20230207010525.2693-3-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230207010525.2693-3-danek.brat@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_011705_016269_49457FD0 
X-CRM114-Status: GOOD (  23.29  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] ARM: rpi: add serial number readout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Daniel,

thanks for the patch.

On 23-02-07, Daniel Brát wrote:
> Remove querying for serial-number node from vc fdt, since it's not
> guaranteed to always be there (older firmwares dont provide it).
> Instead, retrieve board's serial number via the mbox api.

Is this possible for all RPi's out there?

> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
>  arch/arm/boards/raspberry-pi/lowlevel.h     |  1 +
>  arch/arm/boards/raspberry-pi/mbox-helpers.c | 27 +++++++++++++++++++++
>  arch/arm/boards/raspberry-pi/rpi-common.c   | 21 +++++++++++-----
>  arch/arm/mach-bcm283x/include/mach/mbox.h   | 13 ++++++++++
>  4 files changed, 56 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/lowlevel.h b/arch/arm/boards/raspberry-pi/lowlevel.h
> index 260f96c714..d2699b9b08 100644
> --- a/arch/arm/boards/raspberry-pi/lowlevel.h
> +++ b/arch/arm/boards/raspberry-pi/lowlevel.h
> @@ -12,5 +12,6 @@
>  ssize_t rpi_get_arm_mem(void);
>  int rpi_get_ethaddr(u8 mac[6]);
>  int rpi_get_board_rev(void);
> +int rpi_get_board_serial(u64 *serial);
>  
>  #endif /* __ARCH_ARM_BOARDS_LOWLEVEL_H__ */
> diff --git a/arch/arm/boards/raspberry-pi/mbox-helpers.c b/arch/arm/boards/raspberry-pi/mbox-helpers.c
> index 50fc1c5b45..62c65d1267 100644
> --- a/arch/arm/boards/raspberry-pi/mbox-helpers.c
> +++ b/arch/arm/boards/raspberry-pi/mbox-helpers.c
> @@ -16,6 +16,12 @@ struct msg_get_board_rev {
>  	u32 end_tag;
>  };
>  
> +struct msg_get_board_serial {
> +	struct bcm2835_mbox_hdr hdr;
> +	struct bcm2835_mbox_tag_get_board_serial get_board_serial;
> +	u32 end_tag;
> +};
> +
>  struct msg_get_mac_address {
>  	struct bcm2835_mbox_hdr hdr;
>  	struct bcm2835_mbox_tag_get_mac_address get_mac_address;
> @@ -71,3 +77,24 @@ int rpi_get_board_rev(void)
>  
>  	return msg->get_board_rev.body.resp.rev;
>  }
> +
> +int rpi_get_board_serial(u64 *serial)
> +{
> +	int ret;
> +
> +	BCM2835_MBOX_STACK_ALIGN(struct msg_get_board_serial, msg);
> +	BCM2835_MBOX_INIT_HDR(msg);
> +	BCM2835_MBOX_INIT_TAG(&msg->get_board_serial, GET_BOARD_SERIAL);
> +
> +	if (!serial)
> +		return -EINVAL;
> +
> +	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
> +	if (ret) {
> +		pr_err("Could not query board serial\n");
> +		return ret;
> +	}
> +
> +	*serial = msg->get_board_serial.body.resp.serial;
> +	return 0;
> +}
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 8d1e74acab..a8f180ae92 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -60,6 +60,19 @@ struct rpi_priv {
>  	const char *name;
>  };
>  
> +static void rpi_set_serial_number(void)
> +{
> +	u64 serial;
> +	char *serial_str;
> +
> +	if (rpi_get_board_serial(&serial))
> +		return;
> +
> +	serial_str = basprintf("%016llx", serial);
> +	barebox_set_serial_number(serial_str);
> +	free(serial_str);
> +}
> +
>  static void rpi_set_ethaddr(void)
>  {
>  	u8 mac[ETH_ALEN];
> @@ -265,12 +278,6 @@ static void rpi_vc_fdt_parse(void *fdt)
>  	if (IS_ERR(root))
>  		return;
>  
> -	str = of_read_vc_string(root, "serial-number");
> -	if (str) {
> -		barebox_set_serial_number(str);
> -		free(str);
> -	}
> -
>  	str = of_read_vc_string(root, "model");
>  	if (str) {
>  		barebox_set_model(str);
> @@ -446,6 +453,8 @@ static int rpi_devices_probe(struct device *dev)
>  	if (IS_ERR(dcfg))
>  		goto free_priv;
>  
> +	rpi_set_serial_number();
> +
>  	/* construct short recognizable host name */
>  	name = of_device_get_match_compatible(priv->dev);
>  	ptr = strchr(name, ',');
> diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
> index 92cadba62c..008ea2e614 100644
> --- a/arch/arm/mach-bcm283x/include/mach/mbox.h
> +++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
> @@ -201,6 +201,19 @@ struct bcm2835_mbox_tag_get_mac_address {
>  	} body;
>  };
>  
> +#define BCM2835_MBOX_TAG_GET_BOARD_SERIAL	0x00010004
> +
> +struct bcm2835_mbox_tag_get_board_serial {
> +	struct bcm2835_mbox_tag_hdr tag_hdr;
> +	union {
> +		struct {
> +		} req;
> +		struct __packed {
> +			u64 serial;
> +		} resp;

Why do we need the __packed here?

Regards,
  Marco

> +	} body;
> +};
> +
>  #define BCM2835_MBOX_TAG_GET_ARM_MEMORY		0x00010005
>  
>  struct bcm2835_mbox_tag_get_arm_mem {
> -- 
> 2.34.1
> 
> 
> 


