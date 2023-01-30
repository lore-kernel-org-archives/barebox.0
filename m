Delivery-date: Mon, 30 Jan 2023 21:06:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMaQ1-007yb1-Q4
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 21:06:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMaPy-0006KE-UI
	for lore@pengutronix.de; Mon, 30 Jan 2023 21:06:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r75nCwpNL9dNF8rJ71/4P1/lzkPmVJdjcmqsO/jTrvo=; b=OeyfFzHgBQNWeXdpm1LQU3pSV3
	bdDd2Bvqd5pZn3qEeL8PjZ8HIXkb1ehmSKqmJyBYWPcg6s7o+q9NnumL7jGPzyj84XFrNwswew8jF
	n5xnAjKT8b9/7S8bAwcVfAvFE41cZYYpWZtZdBUOwlyU7ZYoi2+UjH0GiYyPQ3Zfef5pWuZsfy13o
	8ReAL4WBHRdQOiVqMykGXOuaXQyIze6QM3nNzNfHiyPaMWkXCo4Vy7OJ23gv2L35gMY4n0BC5JxDB
	lXH3XqmXePfFC0qyoUhVBgNMqkbjU0vM9x9F/lNhSnttVtZFp4RpCmCpGyyqdgEQUoNRNO10zoRu0
	Qh5Xzz4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMaOa-005I6J-GK; Mon, 30 Jan 2023 20:04:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMaOW-005I4s-Mx
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 20:04:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMaOS-00060F-UJ; Mon, 30 Jan 2023 21:04:44 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMaOR-000686-Um; Mon, 30 Jan 2023 21:04:43 +0100
Date: Mon, 30 Jan 2023 21:04:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230130200443.mybfhzrcsywqw65v@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230129232758.1799987-4-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230129232758.1799987-4-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_120448_769121_ADD94D13 
X-CRM114-Status: GOOD (  24.22  )
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
Subject: Re: [PATCH v3 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

thanks for the patch.

On 23-01-30, John Watts wrote:
> The Novena has an EEPROM used for storing information about the board,
> including the Ethernet MAC address.
> 
> The reference for the EEPROM fields is the novena-eeprom source code.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/boards/novena/board.c | 85 ++++++++++++++++++++++++++++++++++
>  arch/arm/dts/imx6q-novena.dts  | 14 ++++++
>  2 files changed, 99 insertions(+)
> 
> diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
> index e41ea10f8d..b6c59aff44 100644
> --- a/arch/arm/boards/novena/board.c
> +++ b/arch/arm/boards/novena/board.c
> @@ -3,9 +3,94 @@
>  
>  #include <common.h>
>  #include <deep-probe.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <net.h>
> +
> +struct novena_eeprom {
> +	uint8_t signature[6]; /* 'Novena' */
> +	uint8_t version; /* 1 or 2, not checked */
> +	uint8_t page_size; /* v2 only: EEPROM read/write page */
> +	uint32_t serial; /* 32-bit serial number */
> +	uint8_t mac[6]; /* Gigabit MAC address */
> +	uint16_t features; /* features */
> +	/* ... extra fields omitted ... */
> +} __packed;
> +
> +static void power_on_audio_codec(void)
> +{
> +	int rc = of_devices_ensure_probed_by_name("regulator-audio-codec");
> +
> +	if (rc < 0)
> +		pr_err("Unable to power on audio codec: %s\n", strerror(-rc));
> +}
> +
> +static struct novena_eeprom *novena_read_eeprom(void)
> +{
> +	size_t read;
> +	loff_t max = sizeof(struct novena_eeprom);
> +	void *eeprom;
> +	int rc;
> +
> +	/*
> +	 * When powered off the audio codec pulls down the EEPROM's I2C line.
> +	 * Power it on so we can actually read data.
> +	 */
> +	power_on_audio_codec();
> +
> +	rc = of_device_ensure_probed_by_alias("eeprom0");
> +	if (rc < 0) {
> +		pr_err("Unable to probe eeprom0: %s\n", strerror(-rc));
> +		return NULL;
> +	}
> +
> +	rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
> +
> +	if (rc < 0 && rc != -EFBIG) {
> +		pr_err("Unable to read Novena EEPROM: %s\n", strerror(-rc));
> +		return NULL;
> +	} else if (read != max) {
> +		pr_err("Short read from Novena EEPROM?\n");
> +		free(eeprom);

This will trigger a double free since you're use of an unconditional
free() during probe().

Regards,
  Marco

> +		return NULL;
> +	}
> +
> +	return eeprom;
> +}
> +
> +static bool novena_check_eeprom(struct novena_eeprom *eeprom)
> +{
> +	char *sig = eeprom->signature;
> +	size_t size = sizeof(eeprom->signature);
> +
> +	if (memcmp("Novena", sig, size) != 0) {
> +		pr_err("Unknown Novena EEPROM signature\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void novena_set_mac(struct novena_eeprom *eeprom)
> +{
> +	struct device_node *dnode;
> +
> +	dnode = of_find_node_by_alias(of_get_root_node(), "ethernet0");
> +	if (dnode)
> +		of_eth_register_ethaddr(dnode, eeprom->mac);
> +	else
> +		pr_err("Unable to find ethernet node\n");
> +}
>  
>  static int novena_probe(struct device *dev)
>  {
> +	struct novena_eeprom *eeprom = novena_read_eeprom();
> +
> +	if (eeprom && novena_check_eeprom(eeprom))
> +		novena_set_mac(eeprom);
> +
> +	free(eeprom);
> +
>  	return 0;
>  }
>  
> diff --git a/arch/arm/dts/imx6q-novena.dts b/arch/arm/dts/imx6q-novena.dts
> index 12bade849c..c614ed3cbb 100644
> --- a/arch/arm/dts/imx6q-novena.dts
> +++ b/arch/arm/dts/imx6q-novena.dts
> @@ -2,3 +2,17 @@
>  // SPDX-FileCopyrightText: 2023 John Watts <contact@jookia.org>
>  
>  #include <arm/imx6q-novena.dts>
> +
> +/ {
> +	aliases {
> +		eeprom0 = &eeprom;
> +	};
> +};
> +
> +&i2c3 {
> +	eeprom: eeprom@56 {
> +		compatible = "24c512";
> +		reg = <0x56>;
> +		pagesize = <128>;
> +	};
> +};
> -- 
> 2.39.1
> 
> 
> 


