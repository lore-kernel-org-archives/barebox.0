Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT1TR-0005yW-KL
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 08:49:51 +0000
From: Christian Hemp <c.hemp@phytec.de>
Date: Wed, 13 Jun 2018 10:49:30 +0200
Message-ID: <5956406.pQv7bxXA2k@llp-hemp>
In-Reply-To: <20180612205310.25745-54-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
 <20180612205310.25745-54-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH v5 53/54] ARM: i.MX8: Add i.MX8mq EVK support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hello Andrey,

...
On Dienstag, 12. Juni 2018 13:53:09 CEST Andrey Smirnov wrote:
> diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst
> b/Documentation/boards/imx/nxp-imx8mq-evk.rst new file mode 100644
> index 000000000..2bc94e790
> --- /dev/null
> +++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
> @@ -0,0 +1,116 @@
> +NXP i.MX8MQ EVK Evaluation Board
> +================================
> +
> +Board comes with:
> +
> +* 3GiB of LPDDR4 RAM
> +* 16GiB eMMC
> +
> +Not including booting via serial, the device can boot from either SD or
> eMMC. +
> +Downloading DDR PHY Firmware
> +----------------------------
> +
> +As a part of DDR intialization routine NXP i.MX8MQ EVK requires and
> +uses several binary firmware blobs that are distributed under a
> +separate EULA and cannot be included in Barebox. In order to obtain
> +the do the following::
> +
> + wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-7.2.bin
> + chmod +x firmware-imx-7.2.bin
> + ./firmware-imx-7.2.bin
> +
> +Executing that file should produce a EULA acceptance dialog as well as
> +result in the following files:
> +
> +- lpddr4_pmu_train_1d_dmem.bin
> +- lpddr4_pmu_train_1d_imem.bin
> +- lpddr4_pmu_train_2d_dmem.bin
> +- lpddr4_pmu_train_2d_imem.bin
> +
> +As a last step of this process those files need to be placed in
> +"firmware/imx/"::
> +
> +  for f in lpddr4_pmu_train_1d_dmem.bin  \
> +           lpddr4_pmu_train_1d_imem.bin  \
> +          lpddr4_pmu_train_2d_dmem.bin  \
> +          lpddr4_pmu_train_2d_imem.bin; \
> +  do \
> +          cp firmware-imx-7.2/firmware/ddr/synopsys/${f} \
> +             firmware/imx/${f}; \
> +  done
> +
> +DDR Configuration Code
> +======================
> +
> +The following two files:
> +
> +  - ddr_init.c
> +  - ddrphy_train.c
> +
> +were obtained by running i.MX 8M DDR Tool that can be found here:
> +
> +https://community.nxp.com/docs/DOC-340179
> +
> +Only minimal amount of necessary changes were made to those files.
> +All of the "impedance matching" code is located in "ddr.h".
> +
> +Build Barebox
> +=============
> +
> + make imv_v8_defconfig

s/imv_v8_defconfig/imx_v8_defconfig/g

Christian

> + make
> +
> +Boot Configuration
> +==================
> +
> +The NXM i.MX8MQ EVK Evaluation Board has two switches responsible for
> +configuring bootsource/boot mode:
> +
> + * SW802 for selecting appropriate BMOD
> + * SW801 for selecting appropriate boot medium
> +
> +In order to select internal boot set SW802 as follows::
> +



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
