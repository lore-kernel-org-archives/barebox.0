Delivery-date: Wed, 25 Jan 2023 21:16:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKmCE-001r6s-4L
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 21:16:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKmCB-00045f-0I
	for lore@pengutronix.de; Wed, 25 Jan 2023 21:16:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7tjsr67IAVfCoOKwVXelpI84DS1ivy8GWPsxl40m9M4=; b=cd+fBoczOKYmzu4OGwVJoTNJFl
	uMp/woph7gWSzuvZcTWUe1d8AVWZbdULJgBM0q6m3B8XpW5LAtbMZMIXtcGklRPWq8dLOMX4S0IoH
	rT9ufdlUc2iAZJdEnOidDLFY1ILHlW2kkce7El6XRGvnqkJcZFx6QKHWhPTptdWYyQsLJT/28hmTC
	JkZBBz8qelsI6jLR+4TpACm8cvyZLOk8X4NGT6MEEvYSz2POL9FXkMZ0E0XnMIPURKND/q/3T4hRv
	vn7qpwx0iBxLShwfm0g8xmECH8rwxcC90q+99PDL2qCH5f7blNxnimmW/BfLymwK/kFEB4x3phYXH
	HwDFOioQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKmAY-008cpg-MC; Wed, 25 Jan 2023 20:14:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKm3B-008ZW1-9Y
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 20:07:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKm39-0001sh-Bd; Wed, 25 Jan 2023 21:07:15 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKm38-0005IB-Mr; Wed, 25 Jan 2023 21:07:14 +0100
Date: Wed, 25 Jan 2023 21:07:14 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125200714.cxpg572weivxjeam@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-4-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125164230.2328043-4-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_120717_373739_E9652562 
X-CRM114-Status: GOOD (  28.41  )
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
Subject: Re: [PATCH v2 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-26, John Watts wrote:
> The Novena has an EEPROM used for storing information about the board,
> including the Ethernet MAC address.
> 
> The reference for the EEPROM fields is the novena-eeprom source code.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/boards/novena/board.c | 88 ++++++++++++++++++++++++++++++++++
>  arch/arm/dts/imx6q-novena.dts  | 15 ++++++
>  2 files changed, 103 insertions(+)
> 
> diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
> index e247f8b8c3..24cde1c0d4 100644
> --- a/arch/arm/boards/novena/board.c
> +++ b/arch/arm/boards/novena/board.c
> @@ -3,9 +3,97 @@
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

You never free the eeprom buffer.

> +
> +	if (rc < 0 && rc != -EFBIG) {
> +		pr_err("Unable to read Novena EEPROM: %s\n", strerror(-rc));
> +		return NULL;
> +	} else if (read != max) {
> +		pr_err("Short read from Novena EEPROM?\n");
> +		return NULL;
> +	} else {
> +		return eeprom;
> +	}

Last else can be dropped and instad:

	return eeprom;
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
> +
> +static void novena_try_eeprom(void)
> +{
> +	struct novena_eeprom *eeprom = novena_read_eeprom();
> +
> +	if (!eeprom || !novena_check_eeprom(eeprom))
> +		return;
> +
> +	novena_set_mac(eeprom);
> +}
>  
>  static int novena_probe(struct device *dev)
>  {
> +	novena_try_eeprom();

It's not wrong to move it into a sub-function but IMO at least this
function can be part of the probe() function. Also I would do the
device_ensured_probe function here and just have one function which I
would call: novena_set_mac(). This way it's a bit easier to follow the
code. But that's just my oppinion.

> +
>  	return 0;
>  }
>  
> diff --git a/arch/arm/dts/imx6q-novena.dts b/arch/arm/dts/imx6q-novena.dts
> index 07471cb132..095dcde0d5 100644
> --- a/arch/arm/dts/imx6q-novena.dts
> +++ b/arch/arm/dts/imx6q-novena.dts
> @@ -2,3 +2,18 @@
>  // SPDX-FileCopyrightText: 2023 John Watts
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
> +		status = "okay";

status can be dropped, "okay" is the default for the dtc.

Regards,
  Marco

> +	};
> +};
> -- 
> 2.39.0
> 
> 
> 


