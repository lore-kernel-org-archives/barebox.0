Delivery-date: Mon, 02 Dec 2024 09:13:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1YV-0030it-22
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 09:13:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1YU-0008Jd-Js
	for lore@pengutronix.de; Mon, 02 Dec 2024 09:13:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RopjQNnIYyVtnU5RZI31+zmRMPb1lbcQJAVA6rsFQJQ=; b=PLr8gVByhMhHYhNutJTSchLuKF
	bhWiJziOqMqpJ1/k21cn5h7uji3wf4JKGyIdEX7J01xjFgLB4h1O1kWXN3K6Exsx8PY3XfWbL9ZPx
	NhvUKxsc4Qm/nXjkmovTfnSFtw8UULXsvBW0FhfWSA1edDkFv02QOfIztAlsThjoPqe0dFxHWtnD4
	eFmLrR22GoUHuZaL0ximarQEcs8nWIgPhCp78vlLTaCpQCV1qyVm1Eu2W9tGT4cpwNUciv+7sX2Bw
	W98NgAHteQDVRVDj81zxtru8UpXcFHF6lb3U1YwOeFN2p5s7Y1QmoR3x9zUhc87qEIszU5h4oDkbr
	A2pgCOOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1Y5-00000005Nsy-1JpI;
	Mon, 02 Dec 2024 08:12:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1Y2-00000005Ns4-28Ir
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 08:12:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1Y1-0008ER-69; Mon, 02 Dec 2024 09:12:49 +0100
Message-ID: <19871270-6568-444a-bb0d-eb9ecb5ffee5@pengutronix.de>
Date: Mon, 2 Dec 2024 09:12:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Sohaib Mohamed <sohaib.amhmd@gmail.com>
Cc: barebox@lists.infradead.org, sohaib.radwan@loytec.com
References: <20241201212959.3196255-1-a.fatoum@pengutronix.de>
 <y3ggfeytlihua6m5dar7r6qmanmsw4kbqxgxaschrn6mcdwxis@6zdxuzv733s3>
 <Z01p5PgQEkGLunyX@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z01p5PgQEkGLunyX@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_001250_552733_02C567AD 
X-CRM114-Status: GOOD (  27.61  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: omap: add two smaller MLO defconfigs for
 AM335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.12.24 09:03, Sascha Hauer wrote:
> On Sun, Dec 01, 2024 at 11:53:59PM +0100, Sohaib Mohamed wrote:
>> Hi,
>>
>> On Sun, Dec 01, 2024 at 10:29:59PM +0100, Ahmad Fatoum wrote:
>>> The Beaglebone Black remains a popular board and it's not a good look to
>>> have it not compile by default due to barebox getting too big.
>>>
>>> As we keep running into size issues with the MLO defconfig, let's accept
>>> that we die bite off more than we could chew and split off the defconfigs
>>> into one for SD/MMC and another for NOR/NAND and document that users
>>> should prefer those instead.
>>>
>>> Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  Documentation/boards/am335x.rst    | 28 +++++++++++++++++++++++++---
>>>  arch/arm/Makefile                  |  6 ++++++
>>>  common/boards/configs/nomci.config |  1 +
>>>  common/boards/configs/nomtd.config |  1 +
>>>  4 files changed, 33 insertions(+), 3 deletions(-)
>>>  create mode 100644 common/boards/configs/nomci.config
>>>  create mode 100644 common/boards/configs/nomtd.config
>>>
>>> diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
>>> index f54611428bb3..ec7322a0acdf 100644
>>> --- a/Documentation/boards/am335x.rst
>>> +++ b/Documentation/boards/am335x.rst
>>> @@ -8,9 +8,15 @@ loader from the same medium.
>>>  Building barebox
>>>  ----------------
>>>
>>> -The TI AM335x boards in barebox are covered by the ``am335x_mlo_defconfig``
>>> -for the MLO and ``omap_defconfig`` for the regular barebox image. The
>>> -resulting images will be placed under ``images/``:
>>> +Booting with barebox on the TI AM335x is a two-stage process and unlike
>>> +more recently added SoCs, requires building barebox twice, each time
>>> +with a different defconfig:
>>> +
>>> +* ``omap_defconfig`` for the regular (second-stage) barebox image
>>> +* For the MLO first-stage, either ``am335x_mlo_sdmmc_defconfig`` for
>>> +  SD/eMMC or ``am335x_mlo_rawflash_defconfig`` for raw NOR/NAND.
>>> +
>>> +The resulting images will be placed under ``images/``:
>>>
>>>  ::
>>>
>>> @@ -30,6 +36,22 @@ resulting images will be placed under ``images/``:
>>>
>>>  Some boards come in different variants, make sure to pick the correct one.
>>>
>>> +Size Constraints
>>> +^^^^^^^^^^^^^^^^
>>> +
>>> +As the MLO needs to setup DRAM first, it must fit into the 109KiB
>>> +of available on-Chip SRAM. Depending on the boards, drivers and general
>>> +features enabled by your config, barebox may exceed this size resulting
>>> +in an error message during build, e.g.::
>>> +
>>> +  images/start_am33xx_myirtech_sram.pblb size 111800 > maximum size 111616
>>> +
>>> +If you run into this issue, consider disabling some unneeded config options
>>> +for the MLO via ``make menuconfig`` and try again.
>>> +The ``am335x_mlo_sdmmc_defconfig`` and ``am335x_mlo_rawflash_defconfig``
>>> +defconfigs do just that by disabling ``CONFIG_MTD`` and ``CONFIG_MCI``,
>>> +respectively.
>>> +
>>>  Starting and updating barebox
>>>  -----------------------------
>>>
>>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>>> index 6785432c52ca..7138f638651e 100644
>>> --- a/arch/arm/Makefile
>>> +++ b/arch/arm/Makefile
>>> @@ -2,6 +2,12 @@
>>>
>>>  KBUILD_DEFCONFIG := multi_v8_defconfig
>>>
>>> +generated_configs += $(patsubst %, %_defconfig, sdmmc rawflash)
>>> +am335x_mlo_sdmmc_defconfig:
>>> +	$(call merge_into_defconfig,am335x_mlo_defconfig,nomtd)
>>> +am335x_mlo_rawflash_defconfig:
>>> +	$(call merge_into_defconfig,am335x_mlo_defconfig,nomci)
>>> +
>>>  KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
>>>  # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
>>>  ifeq ($(CONFIG_CPU_64),y)
>>> diff --git a/common/boards/configs/nomci.config b/common/boards/configs/nomci.config
>>> new file mode 100644
>>> index 000000000000..f541645cccfc
>>> --- /dev/null
>>> +++ b/common/boards/configs/nomci.config
>>> @@ -0,0 +1 @@
>>> +# CONFIG_MCI is not set
>>> diff --git a/common/boards/configs/nomtd.config b/common/boards/configs/nomtd.config
>>> new file mode 100644
>>> index 000000000000..f29845573ae6
>>> --- /dev/null
>>> +++ b/common/boards/configs/nomtd.config
>>> @@ -0,0 +1 @@
>>> +# CONFIG_MTD is not set
>>
>> Is it possible to remove also CONFIG_MACH_MYIRTECH_X335X by default, I
>> still get this error:
> 
> With Ahamds patch you have to use either am335x_mlo_sdmmc_defconfig
> or am335x_mlo_rawflash_defconfig depending on where you are booting
> from. Did you use one of them? Even with Ahmads patch the old
> am335x_mlo_defconfig is still there and still leads to an image
> exceeding the size limit.

In addition to what Sascha said, I shaved off 400~ more bytes in my v2.
This should give us enough breathing room for the next release.

For the release after that, I intend to rework the size check, so it doesn't
fail the build, but just produces a warning at the end of it, e.g.:

  images built:
  barebox-nxp-imx8mm-evk.img
  barebox-prt-prt8mm.img
  ** barebox-tqma93xx.img skipped due to missing firmware **
  ** barebox-karo-qsxp-ml81.img skipped due to size 111856 > maximum size 111616 **

Cheers,
Ahmad

> 
> Sascha
> 
>>
>>   OBJCOPYB images/start_am33xx_myirtech_sram.pblb
>>   CHKFILESIZE images/start_am33xx_myirtech_sram.pblb
>>   OBJCOPYB images/start_am33xx_phytec_phycore_r2_sram.pblb
>> images/start_am33xx_myirtech_sram.pblb size 111856 > maximum size 111616
>> make[1]: *** [/home/smalinux/repos/bbb/barebox_standalone/barebox/images/Makefile:82: images/start_am33xx_myirtech_sram.pblb] Error 1
>> make[1]: *** Deleting file 'images/start_am33xx_myirtech_sram.pblb'
>> make[1]: *** Waiting for unfinished jobs....
>>   CHKFILESIZE images/start_am33xx_phytec_phycore_r2_sram.pblb
>> make: *** [Makefile:736: images] Error 2
>>
>>
>>
>>> --
>>> 2.39.5
>>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


