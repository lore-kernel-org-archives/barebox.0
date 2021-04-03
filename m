Delivery-date: Sat, 03 Apr 2021 11:02:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lScAb-0001Dq-7C
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 11:02:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lScAa-0003ZR-58
	for lore@pengutronix.de; Sat, 03 Apr 2021 11:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Va1M8O6DDZYD535BWAIz1KHfeiUvnFdl1SDCBaouE0c=; b=csgoCkQJ95Educ+EkN+bN9Tag
	gBPLo8qMGisvTTOqK3SKBoWr61YPw0xa4NdvOKRhL2PkAlMLTSZGgG4W1RMKTgOkRAyYSeJIhMGXl
	8M/a2KRnmv2PC03HiOt/Uy65bY0TTmYmcenubbzYR09IEB2gepjcja/0nooRQilPydEvBqKmhAV84
	VysLFMCFJ9ElYLzd7Zd/tS5z5W7n+7awrZ8Qfo+5mVJ0bK1hKJFcXW8RITuVKCUMk03Uk0gU+UKZh
	oRjxU6BRuPM8UwKGBPeCm4C5mxT35Lgo8ZWDMkYcLtvSal/EgDofwxrusYxZju+1yhwQQVXUts1vt
	DGYMI3CfQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSc9R-00EUel-IK; Sat, 03 Apr 2021 09:01:05 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSc9L-00EUe4-AZ
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 09:01:01 +0000
Received: by mail-lf1-x12a.google.com with SMTP id v15so10524786lfq.5
 for <barebox@lists.infradead.org>; Sat, 03 Apr 2021 02:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=11ozOmIPfLCX4f+RO1ZV5msIdWakhyyDh6Emk2tqVTQ=;
 b=KBsDTqcsAYUH412a6Op8BVZKqljaXh0lZBr4jF4EUAEuEPiqVsGbtfDX5ysGJ1sJXN
 H5h+IQEj5w0T0lK3Sj4Qv/89f8udKb3J9wskKT759vdkeCVh+7oIHZjIxkvo41/67Ose
 6KJwa4EBf37/ngVJmzI9vQBRyf2apTysMC0GjAFlm2l7ygsXjHRcOkZCTqxrOV8UF/0t
 sqh5MogXpT5RyGnYWuBaTu6YQCTqqln2Nbb1Otl4V7uEIQ6NdLM09owllxng8sjNzElM
 4HMMTRJ6zIF4tu2xHYno7nPidzgBVgJMTDUDZu+hm5futb/PP7aQxH/cPrwJa3F4reoF
 e9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=11ozOmIPfLCX4f+RO1ZV5msIdWakhyyDh6Emk2tqVTQ=;
 b=IJltfJMvsi7VsmvikxFuKbVZQ5vIZaG7v/OnrLvcc3tKvEuzePSk8tAm25sNPuyUg2
 pk0DJUXvf68Yc4Cx9CwnT8y1lrxWhyg1IAishUTitRH6Hg9fe0OsV1v09mjmEcyrdQln
 +Xe2v6wY+SkkUGdWPo8aFh1aAEPzw2ssXVW0C/ra117bs5zAnGji/On+3L5xoQnREufU
 HBPBwyASsKXMGVU1AOcMkpY/I3hSMykDJj8jED+W1w8xlivpNhI0JBBPIZl1YBMclMX6
 hqwsFcXA7XV7GIEv+bwNAJC5PhfIfy7dFe7VuTSdPg2462Vkdn5xJFzJjy/5K2fQ53b4
 +o4Q==
X-Gm-Message-State: AOAM533zemz+I5Jhq4gcGZ9yKFCqaONZH/rqTFfGQRAQOqCGTo5TTFWs
 OuF/eb+TvK/9fZYDgkZQxXA=
X-Google-Smtp-Source: ABdhPJzqs2VFV89dkYYSZQkpfwQsLNeZdTzl1FECyMSi15eUm5QibUahJtuaH2S41k2/aMfr5NKZqA==
X-Received: by 2002:ac2:43d4:: with SMTP id u20mr10983877lfl.210.1617440458314; 
 Sat, 03 Apr 2021 02:00:58 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id q8sm1090758lfc.223.2021.04.03.02.00.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 03 Apr 2021 02:00:57 -0700 (PDT)
Date: Sat, 3 Apr 2021 12:00:56 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210403120056.c797366f354339aca24a2b0f@gmail.com>
In-Reply-To: <2cd63d9c-903d-3670-6417-65d1fa324410@pengutronix.de>
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
 <20210402085613.9a8dd5ecb960a47faa3eaa90@gmail.com>
 <c2a98aea-2220-38ca-34e5-78a2a585ce82@pengutronix.de>
 <20210402111348.fcc6384084512f23588aad8f@gmail.com>
 <2cd63d9c-903d-3670-6417-65d1fa324410@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_100059_622738_515AF228 
X-CRM114-Status: GOOD (  27.00  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,LOTS_OF_MONEY,
	MAILING_LIST_MULTI,MONEY_NOHTML,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, 3 Apr 2021 09:09:15 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello Antony,
> =

> On 02.04.21 10:13, Antony Pavlov wrote:
> >> This is strange. Could you print get_runtime_offset() at this location?
> >> It should be zero, because relocate_to_current_adr() had previously ru=
n,
> >> but it seems it's not for you? I don't see how compiler reordering cou=
ld have
> >> occurred given that we don't do LTO and relocate_to_current_adr is thus
> >> a compiler barrier.
> =

> [ Na=EFve me thinking there are any guarantees from GCC for self-modifyin=
g code ]
> =

> > +    empty_slot_init(0, 0xffffffff);
> =

> That's tremendously useful. Thanks! I don't quite understand how it works
> though. It registers a "fall-back" device for all of the 32-bit address
> space?

Yes, it registers such device.

To my great surprise riscv-qemu (at least v2.12) generates no "bus error"
exception on access to unattended address.

I have just compared qemu-2.12 riscv behaviour with mips behaviour.
I have disabled empty_slot in mips_malta code:

--- a/hw/mips/mips_malta.c
+++ b/hw/mips/mips_malta.c
@@ -1014,7 +1014,7 @@ void mips_malta_init(MachineState *machine)
     /* The whole address space decoded by the GT-64120A doesn't generate
        exception when accessing invalid memory. Create an empty slot to
        emulate this feature. */
-    empty_slot_init(0, 0x20000000);
+    //empty_slot_init(0, 0x20000000);
 =

     qdev_init_nofail(dev);
 =



I have reconfigured qemu malta barebox to use only 16 MB of RAM. =


diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu=
-malta/lowlevel.S
index 98821e0426..6cb77b6c3e 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -82,4 +82,4 @@ __start:
 	li	t0, GT_LD(0x1bdfffff)
 	sw	t0, GT_PCI0M1HD_OFS(t1)
 =

-ENTRY_FUNCTION_END(BOARD_PBL_START, qemu_malta, SZ_256M)
+ENTRY_FUNCTION_END(BOARD_PBL_START, qemu_malta, SZ_16M)
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qem=
u-malta_defconfig
index b9994f392c..3d33ae4120 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -33,7 +33,6 @@ CONFIG_CMD_SHA256SUM=3Dy
 CONFIG_CMD_UNCOMPRESS=3Dy
 CONFIG_CMD_SLEEP=3Dy
 CONFIG_CMD_DHCP=3Dy
-CONFIG_CMD_MIITOOL=3Dy
 CONFIG_CMD_PING=3Dy
 CONFIG_CMD_TFTP=3Dy
 CONFIG_CMD_ECHO_E=3Dy
@@ -59,7 +58,6 @@ CONFIG_NET_NFS=3Dy
 CONFIG_NET_NETCONSOLE=3Dy
 CONFIG_OFDEVICE=3Dy
 CONFIG_OF_BAREBOX_DRIVERS=3Dy
-CONFIG_DRIVER_NET_RTL8139=3Dy
 # CONFIG_SPI is not set
 CONFIG_I2C=3Dy
 CONFIG_I2C_GPIO=3Dy
@@ -71,10 +69,8 @@ CONFIG_DRIVER_CFI=3Dy
 CONFIG_CFI_BUFFER_WRITE=3Dy
 CONFIG_VIDEO=3Dy
 CONFIG_FRAMEBUFFER_CONSOLE=3Dy
-CONFIG_DRIVER_VIDEO_BOCHS_PCI=3Dy
+CONFIG_DRIVER_VIDEO_EDID=3Dy
 CONFIG_GPIO_MALTA_FPGA_I2C=3Dy
-CONFIG_PCI=3Dy
-CONFIG_PCI_DEBUG=3Dy
 CONFIG_FS_CRAMFS=3Dy
 CONFIG_FS_TFTP=3Dy
 CONFIG_FS_FAT=3Dy
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 32e473cac0..69d78061f6 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -16,7 +16,7 @@
 =

 	memory@0 {
 		device_type =3D "memory";
-		reg =3D <0x00000000 0x10000000>;
+		reg =3D <0x00000000 0x01000000>;
 	};
 =

 	uart0: serial@180003f8 {


It is easy to see that emulated mips CPU generates bus error exception on a=
ccess to unattended address
at 0xa2000000 (start RAM + 32M):

 =

barebox$ qemu-system-mips-malta-no-empty-slot -nodefaults -M malta -m 16 -s=
erial stdio -monitor null -bios barebox-flash-image


barebox 2021.03.0-00137-g8c6a139124-dirty #2 Sat Apr 3 11:38:55 MSK 2021


Board: qemu malta
malta-fpga-i2c-gpio 1f000b00.gpio@1f000b00.of: probed gpiochip-1 with base 0
cfi_flash 1e000000.flash@1e000000.of: found cfi flash at 0xbe000000, size 4=
 MiB
i2c-gpio i2c0.of: using pins 0 (SDA) and 1 (SCL)
netconsole: registered as netconsole-1
malloc space: 0xa0b50000 -> 0xa0f4ffff (size 4 MiB)
envfs: no envfs (magic mismatch) - envfs never written?

Hit any to stop autoboot:    2
barebox@qemu malta:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x180003f8 - 0x180003ff (size 0x00000008) 180003f8.serial@180003f8.of
  0x1e000000 - 0x1e3fffff (size 0x00400000) 1e000000.flash@1e000000.of
  0x1f000900 - 0x1f00093f (size 0x00000040) 1f000900.serial@1f000900.of
  0x1f000b00 - 0x1f000b1f (size 0x00000020) 1f000b00.gpio@1f000b00.of
  0xa0000000 - 0xa0ffffff (size 0x01000000) kseg1_ram0
    0xa0b49000 - 0xa0b4ffff (size 0x00007000) stack
    0xa0b50000 - 0xa0f4ffff (size 0x00400000) malloc space
    0xa0f50000 - 0xa0fa655f (size 0x00056560) barebox
    0xa0fa6560 - 0xa0ff2edf (size 0x0004c980) barebox data
    0xa0ffaee0 - 0xa0ffef33 (size 0x00004054) bss
barebox@qemu malta:/ md 0xa2000000

Ooops, bus error on load or store!

$ 0   : 00000000 00000000 00000000 00000001
$ 4   : 00000100 00000001 00000001 00000030
$ 8   : a0fa2198 00000000 ffffffff 00000010
$12   : 00000000 0000005c 0000002f 2f696e69
$16   : a2000000 00000000 a2000000 00000004
$20   : 00000000 a0b4fc30 a0b4fc80 a0b4fc39
$24   : 00000010 a0f60de4                  =

$28   : 00000000 a0b4fc20 a0b4fc80 a0f50930
Hi    : 0000000a
Lo    : 00000000
epc   : a0f50930
ra    : a0f50930
Status: 00000002
Cause : 0000041c
Config: 80008482

### ERROR ### Please RESET the board ###








> > There are empty_slot read warnings on master:
> > =

> >     barebox$ qemu-system-riscv32 -nographic -M erizo -bios ./images/bar=
ebox-erizo-generic.img -serial stdio -monitor none -trace file=3D/dev/null =

> >     >get_runtime_offset()=3D0x00000000
> >     empty_slot: read from 0000000000022caf
> >     empty_slot: read from 0000000000022cae
> >     empty_slot: read from 0000000000022cb0
> >     empty_slot: read from 0000000000022cb1
> >     riscv-timer riscv-timer: running at 24000000 Hz
> >     Switch to console [cs0]
> > =

> >     barebox 2021.03.0-00134-gc4a1684da9-dirty #1 Fri Apr 2 10:33:45 MSK=
 2021
> > =

> >     Board: generic Erizo SoC board
> >     riscv-timer riscv-timer: running at 24000000 Hz
> >     malloc space: 0x804ffd80 -> 0x805ffd7f (size 1 MiB)
> > =

> >     Hit any to stop autoboot:    1
> >     boot: error 2
> >     barebox:/ =

> > =

> > =

> > There is no empty_slot warning with fef19e17f651^ barebox:
> > =

> >     barebox$ qemu-system-riscv32 -nographic -M erizo -bios ./images/bar=
ebox-erizo-generic.img -serial stdio -monitor none -trace file=3D/dev/null =

> >     >RISC-V system with no 'timebase-frequency' in DTS
> >     Switch to console [cs0]
> > =

> >     barebox 2021.03.0-00122-g6107208573 #1 Fri Apr 2 11:09:16 MSK 2021
> > =

> >     Board: generic Erizo SoC board
> >     RISC-V system with no 'timebase-frequency' in DTS
> >     malloc space: 0x802ffd80 -> 0x803ffd7f (size 1 MiB)
> > =

> >     Hit any to stop autoboot:    0
> >     boot: error 2
> >     barebox:/ =

> =

> Thanks. I identified two issues and CC'd you on a patch fixing them.
> Breaking erizo has been a blessing to sort out this kind of bugs early :D
> =

> Cheers,
> Ahmad
> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

