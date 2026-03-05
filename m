Delivery-date: Thu, 05 Mar 2026 11:12:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5gj-008ILG-2P
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 11:12:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5gj-00017T-FU
	for lore@pengutronix.de; Thu, 05 Mar 2026 11:12:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UdNELlAgni6EO5TE5411ZpfPTspc2/PzkBNOIiXzlxc=; b=BN0H0Sw/OutvA2Tahm2+1TVVfl
	6xHZCM+JyXdE9XSWGnU3mVoTBFSrRUlbbPLzddhEv8JYWMQq9FkOhbQxxnosIsVgLPhRB1R13ws+R
	UhNgZcOsc70AVyjAUc74CTCbio2n9hzgGuF0LUsGc6cCZgdSaXDnpdMtVt9Ln9zK8oJkIHutIoDxd
	OFLDrI25wNrCk7g1kzkEXy96QcaWUV+EVZonk7D6bXvQTkOob/UP+RHzA8d6xTsM/n1Iu9LNwbYRd
	k15A7pnWzaZMXXxjptJe9X6cOamRM+uVjQeHo0emrFcuascjapN8wzF2y2Tf/0lKGDp93Y8fKJRWr
	fmDwL6kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5gE-00000001WsR-0pIt;
	Thu, 05 Mar 2026 10:11:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5gB-00000001Wrl-3xXt
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 10:11:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vy5gA-000114-7m; Thu, 05 Mar 2026 11:11:38 +0100
Message-ID: <aa0cc336-504e-42b4-a43e-952d83d0e481@pengutronix.de>
Date: Thu, 5 Mar 2026 11:11:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
 <20260305-b4-sa2-usb-v2-1-cf377c10efd5@clermont.in2p3.fr>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260305-b4-sa2-usb-v2-1-cf377c10efd5@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_021139_983740_3BB0E010 
X-CRM114-Status: GOOD (  13.08  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] ARM: socfpga: Enclustra SA2: add defconfig options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/5/26 10:55 AM, David Picard wrote:
> Add configuration options needed by the Enclustra SA2 module.

With Signed-off-by added:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/configs/socfpga_defconfig | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
> index e9b93bc197..37555a6297 100644
> --- a/arch/arm/configs/socfpga_defconfig
> +++ b/arch/arm/configs/socfpga_defconfig
> @@ -60,6 +60,7 @@ CONFIG_CMD_MM=y
>  CONFIG_CMD_CLK=y
>  CONFIG_CMD_DETECT=y
>  CONFIG_CMD_GPIO=y
> +CONFIG_CMD_I2C=y
>  CONFIG_CMD_LED=y
>  CONFIG_CMD_SPI=y
>  CONFIG_CMD_LED_TRIGGER=y
> @@ -76,6 +77,9 @@ CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_OF_BAREBOX_ENV_IN_FS=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA=y
> +CONFIG_MICREL_PHY=y
> +CONFIG_I2C=y
> +CONFIG_I2C_DESIGNWARE=y
>  CONFIG_MTD=y
>  CONFIG_NAND=y
>  CONFIG_MTD_NAND_DENALI=y
> @@ -93,7 +97,12 @@ CONFIG_KEYBOARD_GPIO=y
>  CONFIG_WATCHDOG=y
>  CONFIG_WATCHDOG_DW=y
>  CONFIG_GPIO_DESIGNWARE=y
> +CONFIG_NVMEM=y
> +CONFIG_NVMEM_ATMEL_SHA204A=y
>  CONFIG_FIRMWARE_ALTERA_SOCFPGA=y
> +CONFIG_FPGA=y
> +CONFIG_FPGA_BRIDGE=y
> +CONFIG_SOCFPGA_FPGA_BRIDGE=y
>  CONFIG_FS_EXT4=y
>  CONFIG_FS_TFTP=y
>  CONFIG_FS_NFS=y
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



