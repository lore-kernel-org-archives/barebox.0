Delivery-date: Thu, 16 Jan 2025 15:37:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYR0I-000dBG-0h
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:37:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYR0I-0007h2-20
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:37:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R0wMy4UIQ6CL0abYGOyb09Axc3RAPtIR1BjzhOd/mMM=; b=izMlpQED1YiNdtMidybpuFssGf
	+cog12efTXMgHhM1K6j0JeGLo/H5PCoE1mSf5tBraSS1U+MvNvhQDJRB1Bfj7Bn/24aYuxcZwliC6
	vf987qALrNxyeFDAz1v84OKcD8Qb7LSaRjTAQaUog8huz/4rFEVFHA5Hi8owOABk0DRMcLb2GzX1V
	+Blh7/L9G7koL8UPg7jVoFRRgJRN814igBfaUVfIXU3qOJd4PAztZiUl5B9k7rxEqTJvaNUb3dP9X
	xcgqwE/6IVvhnb6qE3qW59TJ5pxZhJ/tpoGYoDe6gcNC2xYUWc7035PwvvEAJEA61XZ22VI+Yi/I3
	1f5GQ6Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQzs-0000000FCKR-46p7;
	Thu, 16 Jan 2025 14:37:24 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQzq-0000000FCJN-3YBS
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1737038241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R0wMy4UIQ6CL0abYGOyb09Axc3RAPtIR1BjzhOd/mMM=;
	b=KDfkMWSf3JnYtFeaAqUhJERekSljkNMpVN7BnnkVhN7DDaGiI6L9euBrluvntwCxfke+De
	k6yHva98EpJ/vj0HVSQ1jc09VCPj7r9tdMyJSCtAdmc5dj/60mV2o6AvxIioVFiCaFteC8
	g5hVXUoux976zx9B4KfY6V/ajQPLilsrrUxU62tVHeqUBRJkMlkd5uHzhpboWM0vSrzid0
	9q7Up2QRVm7EdADQyMOXMPpYaVSCkZ6KETtIfxIfie/w1vdZIJ0RZURCqgR5cf/ncX7tv+
	6uBZxde/osEi3obbeEu4ZA8/PIh1Md+JeFH7KKyFX7nP+q52hG1dbvX414ONDw==
Received: from localhost (<unknown> [2a01:e0a:12:d860:b3d:d71c:eca8:7e24])
	by zdiv.net (OpenSMTPD) with ESMTPSA id d7ad4b49 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 16 Jan 2025 15:37:21 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 16 Jan 2025 15:37:20 +0100
Message-Id: <D73KNZKIVWNY.20IOAFZXQYF32@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, <barebox@lists.infradead.org>
X-Mailer: aerc 0.19.0
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-7-jmaselbas@zdiv.net>
 <cf5862b9-3c9b-48b4-b2da-d6349d90d105@pengutronix.de>
In-Reply-To: <cf5862b9-3c9b-48b4-b2da-d6349d90d105@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_063723_167925_682FC4BC 
X-CRM114-Status: GOOD (  32.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/6] Documentation: sunxi: Add some documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue Jan 14, 2025 at 9:39 AM CET, Ahmad Fatoum wrote:
> Hi Jules,
>
> On 07.01.25 15:37, Jules Maselbas wrote:
>> Add some informations about Allwinner sunxi boardsupport: the general
>> boot process, how to use sunxi-fel tool, and how to create a bootable
>> image disk.
>>=20
>> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> with changes suggested below:
>
>> ---
>>  Documentation/boards/sunxi.rst | 132 +++++++++++++++++++++++++++++++++
>>  1 file changed, 132 insertions(+)
>>  create mode 100644 Documentation/boards/sunxi.rst
>>=20
>> diff --git a/Documentation/boards/sunxi.rst b/Documentation/boards/sunxi=
.rst
>> new file mode 100644
>> index 0000000000..46832559c9
>> --- /dev/null
>> +++ b/Documentation/boards/sunxi.rst
>> @@ -0,0 +1,132 @@
>> +..
>> +  SPDX-License-Identifier: GPL-2.0+
>> +
>> +  Copyright (C) 2022, Jules Maselbas
>> +
>> +Allwinner sunxi
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> +
>> +Because of size constraints Barebox proper cannot boot directly, the us=
es
>> +of :doc:`PBL` allows to compress the Barebox image and it's device-tree=
.
>
> s/it's/its/
>
>> +However this is not enough, and two images are acctually needed. The fi=
rst
>
> s/acctually/actually/
>
>> +image is suffixed *_xload* and it only consist of the PBL with a specia=
l
>> +entry point that looks for ``barebox.bin`` the root of a FAT partition.
>> +Only the SD card is currently searched, but this could also be in eMMC.
>> +The second image is your standard Barebox plus PBL image (suffixed ``.p=
blb``).
>
> The pblb image is just an intermediate artifact. There's usually an .img
> that's either 1:1 the pblb or the pblb with a SoC-specific header in fron=
t
> (or size patched in), so users need not mess with the pblb at all.
>
> Also, to avoid confusion, please add a note here that xload support isn't
> available yet or remove that part for now?
Yeah i think it's better to remove irrelevant part for now.

>
>> +eGON header
>> +-----------
>> +
>> +The eGON header structure is described in the file ``include/mach/sunxi=
/egon.h``.
>
> This file doesn't exist yet.
only relevant for the PBL

>> +This is also documented on https://linux-sunxi.org/EGON .
>> +
>> +The eGON header, followed by the actual image, must be located at the f=
ixed
>> +offset of 8192 bytes (8KB) from the start of the disk (sector 16), eith=
er
>> +from SD card; or from eMMC.
>> +
>> +.. code-block:: sh
>> +
>> +  # copy the "pine64_xload" eGON image into disk sdX
>> +  dd if=3Dimages/start_pine64_pine64_xload.pblb.egonimg of=3D/dev/sdX b=
s=3D512 seek=3D16
>> +
>> +The above will write the entire "pine64_xload" Barebox PBL plus the eGO=
N
>> +header into the disk "/dev/sdX".
>> +
>> +The boot ROM will load, at most, the first 32KB of the image into SRAM,
>> +including the header itself! The eGON header starts with a jump instruc=
tion
>> +to jump over the header, this jump instruction needs to be patched acco=
rdingly
>> +with the header size.
>> +
>> +.. note::
>> +
>> +  On sunxi platforms the boot ROM loads the entire image **including**
>> +  the eGON header. The actual base address will be offset by the eGON h=
eader
>> +  (currently 96 bytes), this bad because arm instructions used for relo=
cation
>
> s/this bad/this is bad/
>
>> +  expect the base address to be aligned on 4K boundary.
>> +  As a workaround, a eGON header is included and linked into the Barebo=
x
>> +  PBL image, this dummy header will be filled later by egon_mkimage.
>
> Nice.
>
>> +Board images are defined in ``images/Makefile.sunxi``, here is an examp=
le::
>> +
>> +.. code-block:: none
>> +
>> +  pblb-$(CONFIG_MACH_PINE64_PINE64) +=3D start_pine64_pine64_xload
>> +  MAX_PBL_IMAGE_SIZE_start_pine64_pine64_xload =3D 0x8000
>> +  FILE_barebox-pine64-pine64_xload.img =3D start_pine64_pine64_xload.pb=
lb.egonimg
>> +  image-$(CONFIG_MACH_PINE64_PINE64) +=3D barebox-pine64-pine64_xload.i=
mg
>
> While useful to have, I think the docs should start with user documentati=
on
> first, i.e. a Building section that points out what defconfig to use, wha=
t
> images result and that only second stage is currently supported.
> See for example:
>
> https://www.barebox.org/doc/latest/boards/rockchip.html#id1
Thanks, i'll take a look

>> +RMR aarch64 switch
>> +------------------
>> +
>> +Aarch64 capable SoC (A64/sun50i) boot by default in 32-bit mode. A spec=
ial header
>> +is added to the start of the PBL image in order to switch to aarch64 mo=
de as soon
>> +as possible. This must be done very early in the boot process since bot=
h ISA are
>> +not compatible. The code to switch mode is already assembled (mostly ar=
m 32bit)
>> +and is documented in the header file ``include/mach/sunxi/rmr_switch.h`=
`.
>
> Likewise file doesn't exist yes.
yep, only relevant for PBL.

>> +More documentation about FEL_ and how to use the sunxi-fel tool can be
>> +found on https://linux-sunxi.org/FEL/USBBoot .
>
> Is this already a clickable link?
>
>> +Arm Trusted Firmware (TF-A)
>> +---------------------------
>> +
>> +Boards using a 64-bit Soc (A64, H5, H6, H616, R329) require the BL31 st=
age of
>> +the `Arm Trusted Firmware-A`_ firmware. This provides the reference
>> +implementation of secure software for Armv8-A, offering PSCI and SMCCC
>> +services. Allwinner support is fully mainlined. To build bl31.bin::
>> +
>> +.. code-block:: sh
>> +
>> +  git clone https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git
>> +  cd trusted-firmware-a
>> +  make CROSS_COMPILE=3Daarch64-linux-gnu- PLAT=3Dsun50i_a64 DEBUG=3D1
>> +  cp build/sun50i_a64/debug/bl31.bin ${barebox_dir}/firmware/sun50i-a64=
-bl31.bin
>> +
>> +The target platform (``PLAT=3D``) for A64 and H5 SoCs is sun50i_a64, fo=
r the H6
>> +sun50i_h6, for the H616 sun50i_h616, and for the R329 sun50i_r329.
>
>
> Thanks for taking the time to write such useful docs. :-)
Thanks for reading it :)

> Cheers,
> Ahmad



