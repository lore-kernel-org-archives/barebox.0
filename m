Delivery-date: Fri, 19 May 2023 08:53:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pztzF-006OPR-5I
	for lore@lore.pengutronix.de; Fri, 19 May 2023 08:53:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pztzC-0005PD-MD
	for lore@pengutronix.de; Fri, 19 May 2023 08:53:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ibmNaT1ShVHxxvH2y3oByxJS7X38NdrYUq/EgRdTycg=; b=dih1+MJW4KA7HJ5ouxStVfweEQ
	t8Zu9ArVCM6RBpUxmxxilrvpEtPAhwM8z9250yE0J+KkO9ksNFqCdAyddChrGdlohgCPyKw9lnoYa
	Aju9jpevWp8gvZv6XHN9EBNV48lUpD2APHdT2Co/oCJWS0/YTIxJVXzdDLeLna1JI0hoKaoV4uaS+
	XTeOLbY2Z3IPJ+L30LElfjYZ/3gaumYdDJTbd17zNe8cs0IMdusbCuQ0F1Tg54/PqK0kBCElbnBTZ
	K15Jc40/f/YBYSlyTaVh0jw9zqJHQtx+t8215Sr/iA9duSqmIzSVzdq/0Iv6IWcNPul/5a9pItUmD
	RGbnyrZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pztxs-00FIgM-1e;
	Fri, 19 May 2023 06:51:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pztxp-00FIaV-0M
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 06:51:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pztxk-0005LX-VJ; Fri, 19 May 2023 08:51:41 +0200
Message-ID: <32889584-7481-183f-2a31-9ac02fc12234@pengutronix.de>
Date: Fri, 19 May 2023 08:51:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-9-jmaselbas@zdiv.net>
 <e23f681f-2328-f71d-e0a6-e242450a6039@pengutronix.de>
 <20230519055120.GE29365@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230519055120.GE29365@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_235145_152891_99980670 
X-CRM114-Status: GOOD (  24.07  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 08/11] mci: Add sunxi-mmc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 19.05.23 07:51, Sascha Hauer wrote:
> On Thu, May 18, 2023 at 09:26:56PM +0200, Ahmad Fatoum wrote:
>> On 11.05.23 01:37, Jules Maselbas wrote:
>>> This driver is adapted from different sources: Linux, u-boot and p-boot.
>>> The latter, p-boot (forked from u-boot), is a bootloader for pinephones.
>>>
>>> It currently only support PIO xfer but could be further improved to also
>>> support DMA xfer. This driver is split in three source file so it can be
>>> used by PBL and barebox proper.
>>> ---
>>>  drivers/mci/Kconfig            |   6 +
>>>  drivers/mci/Makefile           |   2 +
>>>  drivers/mci/sunxi-mmc-common.c | 259 +++++++++++++++++++++++++++++++++
>>>  drivers/mci/sunxi-mmc-pbl.c    |  81 +++++++++++
>>>  drivers/mci/sunxi-mmc.c        | 173 ++++++++++++++++++++++
>>>  drivers/mci/sunxi-mmc.h        | 225 ++++++++++++++++++++++++++++
>>>  include/mach/sunxi/xload.h     |  12 ++
>>>  7 files changed, 758 insertions(+)
>>>  create mode 100644 drivers/mci/sunxi-mmc-common.c
>>>  create mode 100644 drivers/mci/sunxi-mmc-pbl.c
>>>  create mode 100644 drivers/mci/sunxi-mmc.c
>>>  create mode 100644 drivers/mci/sunxi-mmc.h
>>>  create mode 100644 include/mach/sunxi/xload.h
>>>
>>> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
>>> index bbdca67e9d..c1903b6c90 100644
>>> --- a/drivers/mci/Kconfig
>>> +++ b/drivers/mci/Kconfig
>>> @@ -72,6 +72,12 @@ config MCI_DW_PIO
>>>  	help
>>>  	  Use PIO mode (instead of IDMAC) in DW MMC driver.
>>>  
>>> +config MCI_SUNXI_SMHC
>>> +	bool "Allwinner SD-MMC Memory Card Host Controller"
>>> +	help
>>> +	  Enable support for the Allwinner SD-MMC Memory Card Host Controller,
>>> +	  his provides host support for SD and MMC interfaces, in PIO mode.
>>
>> This
>>
>>> +
>>>  config MCI_MXS
>>>  	bool "i.MX23/i.MX28"
>>>  	depends on ARCH_MXS
>>> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
>>> index e3dc5ad8ae..c17cd41db1 100644
>>> --- a/drivers/mci/Makefile
>>> +++ b/drivers/mci/Makefile
>>> @@ -20,4 +20,6 @@ obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
>>>  obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
>>>  obj-$(CONFIG_MCI_MMCI)		+= mmci.o
>>>  obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
>>> +obj-$(CONFIG_MCI_SUNXI_SMHC)	+= sunxi-mmc.o
>>> +pbl-$(CONFIG_MCI_SUNXI_SMHC)	+= sunxi-mmc-pbl.o
>>>  obj-pbl-$(CONFIG_MCI_SDHCI)	+= sdhci.o
>>> diff --git a/drivers/mci/sunxi-mmc-common.c b/drivers/mci/sunxi-mmc-common.c
>>> new file mode 100644
>>> index 0000000000..845078805b
>>> --- /dev/null
>>> +++ b/drivers/mci/sunxi-mmc-common.c
>>> @@ -0,0 +1,259 @@
>>> +#include "sunxi-mmc.h"
>>> +
>>> +static int sdxc_read_data_pio(struct sunxi_mmc_host *host, struct mci_data *data);
>>> +static int sdxc_write_data_pio(struct sunxi_mmc_host *host, struct mci_data *data);
>>> +static int sunxi_mmc_send_cmd(struct sunxi_mmc_host *host, struct mci_cmd *cmd, struct mci_data *data, const char **why);
>>> +static int sunxi_mmc_set_ios(struct sunxi_mmc_host *host, struct mci_ios *ios);
>>> +static void sunxi_mmc_init(struct sunxi_mmc_host *host);
>>> +
>>> +static int sdxc_read_data_pio(struct sunxi_mmc_host *host, struct mci_data *data)
>>> +{
>>> +	size_t i, len = data->blocks * data->blocksize;
>>> +	u8 *dst = data->dest;
>>> +	u32 reg;
>>> +
>>> +	sdxc_writel(host, SDXC_REG_GCTRL, SDXC_GCTRL_ACCESS_BY_AHB);
>>> +
>>> +	for (i = 0; i < len; i += 4) {
>>> +		if (wait_on_timeout(2000 * MSECOND, !sdxc_is_fifo_empty(host)))
>>
>> This can add up to 8 seconds. Just use is_timeout directly?
>>
>>> +			return -ETIMEDOUT;
> 
> It will return -ETIMEDOUT after two seconds at maximum.

Thanks. I misread and thought the loop was from 0 to 4 and wondered if
we shouldn't use a timeout for the whole loop runtime instead of iteration.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



