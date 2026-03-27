Delivery-date: Fri, 27 Mar 2026 11:37:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w64Zj-005h74-2o
	for lore@lore.pengutronix.de;
	Fri, 27 Mar 2026 11:37:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w64Zi-0006v3-VF
	for lore@pengutronix.de; Fri, 27 Mar 2026 11:37:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:
	To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O+VVN+B+K5/OQXSTJY6b2UcntV9q3vACCnbKzo8eHIE=; b=078YxRsQGoht+alPREGkr6kscJ
	gDwKyF8SBynRfevKjpTDIvzyWp9b8JXLPBRqhoA5QJQhVTB/nPKz/FmaoT7TpWmgMhidKmpjL+ikL
	d3+/NMXWGODE8iWu197Y9hR98mEkekI4B3cxD25F9ATUebJGpLBpcl6xwEPKgQFy0wX5TjvLugfbW
	Ey/R53doxv0qWZBTOMeHw7PcUMBbGYhjKMaOePaqExUMUfrVtHcvMwZ0SfPfG7pQPDq4O5t0Q38Md
	HpFjqi8c+WfOe4MMsYRcRziB1LOgK6Q1joStNDBMlK04ZkQjWuctRqBmpobsd1JApkXT31ZvXPf1+
	eEXVIHAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w64Z4-00000007AIi-0o8Y;
	Fri, 27 Mar 2026 10:37:18 +0000
Received: from mail-43166.protonmail.ch ([185.70.43.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w64Yy-00000007AIL-3UiJ
	for barebox@lists.infradead.org;
	Fri, 27 Mar 2026 10:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1774607825; x=1774867025;
	bh=O+VVN+B+K5/OQXSTJY6b2UcntV9q3vACCnbKzo8eHIE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=QaHhomXO2vsN5WsaPdZwdD7VlWYnHkQPluL1FXETq8oUC1uKAzFlhXK+BEHtofD1K
	 VsrvFx4NWkaKi9yBscXemJAKWYeKFVOdRgqAf5Se19O6XshaY8Gb2uSX/G6IsZ0Svu
	 YxKp7F938enEmiEXA+qvVD9GhkyPByCsjiroR3fj7I3RMpPPD3OQhy6E/jPBIySY4o
	 FfdMCpGpZ3JGh6h0hFzTJyzz3tE6vAFMA+nY29il1pYUS702Vs/bue3/k3gM00vvMR
	 yTjBwE5DYUysznU/G9UiHLtdQfJOSFSRVnaVbusoBkguXsB1F5XfAZPpxSylBnHJW/
	 f/oJRxT6A0v/A==
Date: Fri, 27 Mar 2026 10:37:01 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <HwgwAP9KjUztYR9V4ATyVNq5qwsrMJg60gqfmSoqZiIBTjWxsSnl-9onCczoMYZV0xPuGsvHSpLULwjqaFuVS-iWjJgCsbYv0uzAw3Ivn4w=@protonmail.com>
In-Reply-To: <85359e8c-33a0-46d4-8f3c-df0250af1e9e@pengutronix.de>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com> <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de> <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com> <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de> <uQ0wdkwojjz9oEqfuP5-wjYVdqShnu7Gb_zBE2IF0Nam7xR4HVUhENT8jTlVwnpDeG0NPB-ACdZSShnYWT_nLatBEhXq6pJ6YfEpBkxOqZs=@protonmail.com> <85359e8c-33a0-46d4-8f3c-df0250af1e9e@pengutronix.de>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: ccee6a8bcadf61fcba61917a07369a6efb7fe097
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_033714_193994_41851549 
X-CRM114-Status: GOOD (  20.80  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Of course, due to the hurry, I made a mistake in my previous message.
The program for the boot.bin generation is called bootgen not bootbin.

You can find AMD bootgen user guide here:
  https://docs.amd.com/r/en-US/ug1283-bootgen-user-guide/Introduction.

The ELF file provided to the bootgen can have multiple loadable sections, e=
ach of which forms a partition in the boot image.
The AMD/Xilinx FSBL will load and hand-off execution to the next executable=
 partition found in the boot.bin file.
The u-boot.elf file has one LOAD section:
  [user@host] readelf -l u-boot.elf
  Elf file type is EXEC (Executable file)
  Entry point 0x4000000
  There is 1 program header, starting at offset 52
  Program Headers:
    Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
    LOAD           0x010000 0x04000000 0x04000000 0x108ff0 0x108ff0 RW  0x1=
0000
   Section to Segment mapping:
    Segment Sections...
     00     .data
The readelf for barebox shows 3 LOAD sections and 1 DYNAMIC section.
The second difference is that Elf file type for u-boot is EXEC (Executable =
file), for barebox DYN (Position-Independent Executable file).

The bootgen user guide has the table 49 with the following note for the ELF=
 file format:
"Symbols and headers removed."
However, it is not clear whether bootgen automatically removes symbosls and=
 headers, or whether it expects the elf file without symbols and headers.


Now, I would like to describe a few ideas and potential problems.
I am by far not bootloaders expert.
However, I had to boot and debug booting on a few custom and off-the-shelf =
boards with AMD/Xilinx SoCs and MPSoCs.
All the things I write below are related to booting ADM/Xilinx chips only.


There are 2 alternative paths you may chose when trying to boot AMD/Xilinx =
SoCs.

Path 1: The no-FSBL path
This is the path currently supported by barebox.
You do not want to utilize the AMD/Xilinx automatically generated FSBL.
In such a case, you have to define a board, and provide C code for the low-=
level board initialization.
The barebox PBL does the FSBL job in this case.
I think this path is fine for hobby projects and off-the-shelf boards when =
you want to quickly get things running.
However, I am not a fan of this path in professional projects because of th=
e following reasons:
  a) The FSBL code is automatically generated, it may include some workarou=
nds or fixes for hardware bugs.
     The copied low-level initialization C code may potentially miss them.
  b) Forget about getting official support from AMD/Xilinx if you mention y=
ou don't use the official FSBL for boot.

Path 2: The FSBL path
For me, this is the way to go in professional projects.
Barebox currently does not support this path.
In this case, you do not want to be forced to define a board.
This is simply pointless, the FSBL is responsible for initializing the low-=
level stuff.
All you need to boot Linux when FSBL stops execution is some SSBL and devic=
e tree.


Now, what a support for path 2 in the barebox could look like.
We could use the concept of the virtual board.
The virtual board is a board that:
  - is assumed to already be low-level initialized when barebox starts runn=
ing,
  - can accept arbitrary device tree,
  - should not be bound to any specific device tree by default.
The boilerplate related to the board definition should not exist for the vi=
rtual board.
What the user experience would look like:
  1. make zynq_virt_defconfig,
  2. open menuconfig,
  3. find and set config containing path for the device tree file (can be o=
ut of tree),
  4. make,
  5. copy the required elf and/or bin files to your project.

The u-boot has a similar concept of virt defconfigs, for example:
xilinx_versal_virt_defconfig
xilinx_zynqmp_virt_defconfig
xilinx_zynq_virt_defconfig


What potential problems do I see?
The bootgen handles elf files with multiple loadable sections by putting ea=
ch section into a separate partition.
The FSBL simply loads and hands-off to the next executable partition from t=
he boot.bin.
I do not know how barebox works and prepares images.
However I can see 3 potential scenarios.

Scenario 1: PBL and SSBL are logical entities put into the same LOAD sectio=
n
This scenario is easy.
FSBL will load both into memory.
The hand-off from PBL to SSBL does not require loading SSBL into memory sin=
ce it was already done by FSBL.
The hand-off from PBL to SSBL is a simple jump.

Scenario 2: PBL and SSBL are puto into the same ELF file but separate LOAD =
sections
FSBL will load only PBL.
PBL has to parse boot.bin file, load SSBL into memory and hand-off to it.

Scenario 3: Only PBL is put in the ELF file, ELF file has one LOAD section
PBL must load SSBL from the SD card parition (not boot.bin file partition).
The SSBL can be an image in binary format since it is not put into boot.bin=
.


Unfortunately, I do not have enough skills to apply required changes to bar=
ebox to test these ideas on my own.
However, I would be more than happy to test your changes.
Let me know what you think.

Regards,
Micha=C5=82 Kruszewski


