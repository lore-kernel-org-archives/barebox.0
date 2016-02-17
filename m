Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22c.google.com ([2607:f8b0:400e:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwL-0003mb-Bu
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:02 +0000
Received: by mail-pf0-x22c.google.com with SMTP id q63so1536154pfb.0
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:01 -0800
Message-Id: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/17] RFC for additional 'nvmem' plumbing
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

The main purpose of this patchset is propose additional Nvmem plubing
needed for that subsytem's inclusion in BB and solicit feedback about
it (patches ## 15 to 17) . Included in this set are also a number of
bugfixes and RFC-for-bugfixes for problems that were discoverd during
development of this patch series.

Proposed Nvmem additions are two new platform device drivers that
implement a nvmem interface on top of data embedded in DT as well as
nvmem interface that allows to combine existing nvmem-accesible bytes
into continuous blocks.

Below is an example of DT code that uses both drivers in order to
create a MAC address as a combination of bytes from DT and OCOTP
module:

	ro-blob {
		compatible = "barebox,nvmem-ro-of-blob";
		#address-cells = <1>;
		#size-cells = <1>;

		ro_blob: ro-blob-cell {
			reg = <0 5>;
			data = [aa bb cc dd ff];
		};
	};

	scatter-gather-blob {
		compatible = "barebox,nvmem-sg";
		#address-cells = <1>;
		#size-cells = <1>;

		mac_address: combined-bits {
			reg = <0 6>;
			layout = <&ro_blob 0 2
  			          &ro_blob 1 1
			          &fec_mac_address 1 1
			          &ro_blob 2 1
			          &fec_mac_address 2 1>;
		};
	};

	&ocotp {
	       #address-cells = <1>;
	       	#size-cells = <1>;

		barebox,provide-mac-address = <&fec 0x620>;

		fec_mac_address: mac_address@88 {
			reg = <0x88 0x8>;
		};
	};

This should result in 'mac_address' variable that when read returns
[aa bb bb xx cc yy], where 'xx' and 'yy' are bytes at offsets 1 and 2
of OCOTP's register 0x88.

Please bear in mind that the code in commits ## 16, 17 is very raw and
clunky (a lot of error checking/handling code is omitted), which was
done for the cause of expediency in order to start this discussion
sooner and abandon this path if this design doesn't make sense.

As usual, any feedback is appreciated.

Regards,
Andrey Smirnov


Andrey Smirnov (17):
  base: driver.c: Coalesce error checking code
  [RFC] at91: Make IS_ERR work for I/O pointers
  [RFC] base/driver.c: Remove dev_request_mem_region_err_null
  i2c-at91: Use IS_ERR instead of checking for NULL
  clk-imx6: Call clk_enable on mmdc_ch0_axi_podf
  fec_imx: Deallocate clocks when probe fails
  [RFC] base: Introduce dev_request_mem_resource
  fec_imx: Deallocate I/O resources if probe fails
  fec_imx: Free phy_reset GPIO if when probe fails
  fec_imx: Use FEC_ECNTRL_RESET instead of a magic number
  fec_imx: Impelemnt reset timeout
  fec_imx: Deallocate DMA buffers when probe fails
  fec_imx: Unregister MDIO when probe fails
  [RFC] net: eth: Always use DEVICE_ID_DYNAMIC
  [RFC] nvmem: Add of_nvmem_cell_from_cell_np
  [RFC] nvmem: Add nvmem-ro-of-blob driver
  [RFC] nvmem: Add nvmem-sg driver

 arch/arm/mach-at91/at91sam926x_time.c |   6 +-
 arch/arm/mach-imx/clk-imx6.c          |   1 +
 drivers/base/driver.c                 |  25 ++-
 drivers/i2c/busses/i2c-at91.c         |   4 +-
 drivers/misc/Makefile                 |   2 +
 drivers/misc/nvmem-ro-of-blob.c       | 196 +++++++++++++++++++++++
 drivers/misc/nvmem-sg.c               | 287 ++++++++++++++++++++++++++++++++++
 drivers/net/fec_imx.c                 |  60 +++++--
 drivers/nvmem/core.c                  |  57 ++++---
 drivers/pinctrl/pinctrl-at91.c        |   6 +-
 drivers/serial/atmel.c                |   6 +-
 include/driver.h                      |   8 +-
 include/linux/nvmem-consumer.h        |  10 ++
 net/eth.c                             |   8 +-
 scripts/include/linux/err.h           |  66 ++++++++
 15 files changed, 670 insertions(+), 72 deletions(-)
 create mode 100644 drivers/misc/nvmem-ro-of-blob.c
 create mode 100644 drivers/misc/nvmem-sg.c

-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
