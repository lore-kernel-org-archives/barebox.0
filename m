Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsDBi-0007py-Fq
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 22:32:43 +0000
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
 <20200701091122.3437-18-a.fatoum@pengutronix.de>
 <20200705185252.GB15485@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <502da695-af88-af2d-9e99-e40044dd6d16@pengutronix.de>
Date: Mon, 6 Jul 2020 00:32:41 +0200
MIME-Version: 1.0
In-Reply-To: <20200705185252.GB15485@pengutronix.de>
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 17/28] mci: sdhci: atmel: extend driver for PBL usage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 7/5/20 8:52 PM, Sascha Hauer wrote:
> On Wed, Jul 01, 2020 at 11:11:11AM +0200, Ahmad Fatoum wrote:
>> The BootROM resets both the SD/MMC host controller and the pin controller,
>> but the card itself remains in transfer mode. If we redo host-side
>> setup, we can directly read new blocks off the card.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/Kconfig              |   4 +
>>  drivers/mci/Makefile             |   1 +
>>  drivers/mci/atmel-sdhci-common.c |   3 +
>>  drivers/mci/atmel-sdhci-pbl.c    | 128 +++++++++++++++++++++++++++++++
>>  4 files changed, 136 insertions(+)
>>  create mode 100644 drivers/mci/atmel-sdhci-pbl.c
>>
>> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
>> index 6ae1e812528c..3026b25cadc9 100644
>> --- a/drivers/mci/Kconfig
>> +++ b/drivers/mci/Kconfig
>> @@ -187,3 +187,7 @@ endif
>>  config MCI_IMX_ESDHC_PBL
>>  	bool
>>  	select MCI_SDHCI
>> +
>> +config MCI_ATMEL_SDHCI_PBL
>> +	bool
>> +	select MCI_SDHCI
>> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
>> index 177483dcfba5..4a5363367476 100644
>> --- a/drivers/mci/Makefile
>> +++ b/drivers/mci/Makefile
>> @@ -5,6 +5,7 @@ obj-$(CONFIG_MCI_ATMEL_SDHCI)	+= atmel-sdhci.o atmel-sdhci-common.o
>>  obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
>>  obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
>>  obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
>> +pbl-$(CONFIG_MCI_ATMEL_SDHCI_PBL)	+= atmel-sdhci-pbl.o atmel-sdhci-common.o
>>  obj-$(CONFIG_MCI_IMX)		+= imx.o
>>  obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o imx-esdhc-common.o
>>  pbl-$(CONFIG_MCI_IMX_ESDHC_PBL)	+= imx-esdhc-pbl.o imx-esdhc-common.o
>> diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
>> index 1884f3836337..a83610c3d090 100644
>> --- a/drivers/mci/atmel-sdhci-common.c
>> +++ b/drivers/mci/atmel-sdhci-common.c
>> @@ -12,7 +12,10 @@
>>  #include <common.h>
>>  #include <mci.h>
>>  
>> +#include <mach/early_udelay.h>
>> +
>>  #ifdef __PBL__
>> +#define udelay early_udelay
>>  #undef  dev_err
>>  #define dev_err(d, ...)		pr_err(__VA_ARGS__)
>>  #undef  dev_warn
>> diff --git a/drivers/mci/atmel-sdhci-pbl.c b/drivers/mci/atmel-sdhci-pbl.c
>> new file mode 100644
>> index 000000000000..626e4008fe85
>> --- /dev/null
>> +++ b/drivers/mci/atmel-sdhci-pbl.c
>> @@ -0,0 +1,128 @@
>> +// SPDX-License-Identifier: BSD-1-Clause
>> +/*
>> + * Copyright (c) 2015, Atmel Corporation
>> + * Copyright (c) 2019, Ahmad Fatoum, Pengutronix
>> + *
>> + * Atmel's name may not be used to endorse or promote products derived from
>> + * this software without specific prior written permission.
>> + */
>> +
>> +#include <common.h>
>> +#include <pbl.h>
>> +#include <mci.h>
>> +#include <debug_ll.h>
>> +#include <mach/xload.h>
>> +#include "atmel-sdhci.h"
>> +
>> +#include <mach/early_udelay.h>
>> +
>> +#ifdef __PBL__
>> +#define udelay early_udelay
>> +#endif
>> +
>> +#define SECTOR_SIZE			512
>> +#define SUPPORT_MAX_BLOCKS		16U
>> +
>> +struct at91_sdhci_priv {
>> +	struct at91_sdhci host;
>> +	bool highcapacity_card;
>> +};
>> +
>> +static int sd_cmd_stop_transmission(struct at91_sdhci_priv *priv)
>> +{
>> +	struct mci_cmd cmd = {
>> +		.cmdidx = MMC_CMD_STOP_TRANSMISSION,
>> +		.resp_type = MMC_RSP_R1b,
>> +	};
>> +
>> +	return at91_sdhci_send_command(&priv->host, &cmd, NULL);
>> +}
>> +
>> +static int sd_cmd_read_multiple_block(struct at91_sdhci_priv *priv,
>> +				      void *buf,
>> +				      unsigned int start,
>> +				      unsigned int block_count)
>> +{
>> +	u16 block_len = SECTOR_SIZE;
>> +	struct mci_data data;
>> +	struct mci_cmd cmd = {
>> +		.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK,
>> +		.resp_type = MMC_RSP_R1,
>> +		.cmdarg = start,
>> +	};
>> +
>> +	if (!priv->highcapacity_card)
>> +		cmd.cmdarg *= block_len;
>> +
>> +	data.dest = buf;
>> +	data.flags = MMC_DATA_READ;
>> +	data.blocksize = block_len;
>> +	data.blocks = block_count;
>> +
>> +	return at91_sdhci_send_command(&priv->host, &cmd, &data);
>> +}
>> +
>> +static int at91_sdhci_bio_read(struct pbl_bio *bio, off_t start,
>> +				void *buf, unsigned int nblocks)
>> +{
>> +	struct at91_sdhci_priv *priv = bio->priv;
>> +	unsigned int blocks_done = 0;
>> +	unsigned int blocks;
>> +	unsigned int block_len = SECTOR_SIZE;
>> +	unsigned int blocks_read;
>> +	int ret;
>> +
>> +	/*
>> +	 * Refer to the at91sam9g20 datasheet:
>> +	 * Figure 35-10. Read Function Flow Diagram
>> +	*/
>> +
>> +	while (blocks_done < nblocks) {
>> +		blocks = min(nblocks - blocks_done, SUPPORT_MAX_BLOCKS);
>> +
>> +		blocks_read = sd_cmd_read_multiple_block(priv, buf,
>> +							 start + blocks_done,
>> +							 blocks);
>> +
>> +		ret = sd_cmd_stop_transmission(priv);
>> +		if (ret)
>> +			return ret;
>> +
>> +		blocks_done += blocks_read;
>> +
>> +		if (blocks_read != blocks)
>> +			break;
>> +
>> +		buf += blocks * block_len;
>> +	}
>> +
>> +	return blocks_done;
>> +}
> 
> All this doesn't look at91 specific. It rather looks like it could be
> generic code. I know I have put similar code into the i.MX esdhc PBL
> driver, so I can't complain very much...

When I port the at91_mci to PBL (sama5d3 and older SoCs), I will take care not
to duplicate this part. The other first stage MCI implementation can then
be migrated to this.

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
