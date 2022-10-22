Delivery-date: Sat, 22 Oct 2022 13:01:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omCFh-003lB9-M5
	for lore@lore.pengutronix.de; Sat, 22 Oct 2022 13:01:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1om9Lz-0002Vg-2N
	for lore@pengutronix.de; Sat, 22 Oct 2022 09:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ed84v2prfNKBsyD43QwKAsCM5LXreu/CXN9R1mF8oho=; b=igfhVvC4Yp0qS6ExTDvT6oLQAi
	qezI4zxu4dZw0aZXcZ308RtkN8465hvFnL8c71B57TciE4MgPw7R7MoQuKj2g3qmxIIil0LMCdPgE
	4PQjAJeQfW2th+qu0OiowV+UHigIjzpW43HHehiXafGwwaRHdMkJNhrokaYdF0EaQNGDyiwXBqiMd
	on5MVuWKRHktR9SBdL2OcqIMaV9Eh4khlXlk8Bqy9iFH7i1Nfi+P6xM2rWEvMR2D8Tm5qxg9QK/dT
	CBNpYJqPt854KcoVqaPbXhPom9+zifC3nMT9jTTiw2HELLX6kniGLSO0QEJgeNk6XrZDDwYwh805F
	jFWiW84w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1om9K5-00Bc0K-2N; Sat, 22 Oct 2022 07:53:37 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1om9Jy-00BbxT-MR
	for barebox@lists.infradead.org; Sat, 22 Oct 2022 07:53:33 +0000
Received: by mail-lf1-x134.google.com with SMTP id be13so8844469lfb.4
        for <barebox@lists.infradead.org>; Sat, 22 Oct 2022 00:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ed84v2prfNKBsyD43QwKAsCM5LXreu/CXN9R1mF8oho=;
        b=CAxVVxrFp0Nq0UKoGDZMzKBBle73xoImBMs9tYRDBfe6iQJ2DWgLyujuKcsAT3LrrL
         GpqYlQ7S0o0QEHhx2itrSm2Pn/7Y8UKN/ZXHkFJiNuREy7m3Aj8Zhq1yumvIQONd6qHX
         2XhoApWNkZclQ6C13JrRQxyiWO0xHOT59hwvAZnj82/rgh5s+P+yWlkr/y6fKFUaIsTw
         lMVYMKnSXlLddcTM5KrKpOY16wYGLmtYww4grXtdWbt4OZWFtF0Rw1nPmRPTxYnOZ2Ao
         KDnLkdchEvTQFZOvoJnhIaSsIjTn7EiSlketoucb5Cebz4B5lGoLxVTNSkytnz5e09Qa
         eSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ed84v2prfNKBsyD43QwKAsCM5LXreu/CXN9R1mF8oho=;
        b=jk7F53aKAiiD41rBB8msd5LAHMrjSNXd/jT3Csq2651YsY2Syc0dXCgvLc1V6nA7Ay
         IVb/5OBRo59tf9lubasvrN5gBc8zUFhw2FJ0VEFR39OoZuBwTkYCXLie7ulF5zcZZDlo
         JRFDIuXmcs3VxgWBFooLfmamgbk0eiBG7Yp+1118+LhBBBPYD/V/dD54JJh0RsuHWL+8
         Ikfj4WoW59ITQNXDKP21Pi49s3S0bYvYseVDQhFQIuhOF1cod8X3155b3II4Dy4depmR
         /DFegQy0GENSwCC5iwO28PXxgC5ii4gNd8goSQo8DVxijzKbXtWaBcX29wAD6GQHbJeH
         U4iw==
X-Gm-Message-State: ACrzQf3x7+znSRQoxBUxVfn3W1jfo8RqWD7VUq9dYDX6FBW1Ly9UKHVe
	NHSDt1hKn0lNSGvhSixLb+M=
X-Google-Smtp-Source: AMsMyM5KyDwuIUnAxR1+LfOaYymEAeBCnvIkt+xF2uBKpgQ7kj8O/A/jkp/hLav23Sl/rArLxOzQgQ==
X-Received: by 2002:ac2:50da:0:b0:4a2:44dc:b719 with SMTP id h26-20020ac250da000000b004a244dcb719mr7839774lfm.652.1666425206081;
        Sat, 22 Oct 2022 00:53:26 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id h7-20020a2ea487000000b0026faf134ee3sm3641643lji.68.2022.10.22.00.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Oct 2022 00:53:25 -0700 (PDT)
Date: Sat, 22 Oct 2022 10:55:54 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20221022105554.c9bbe152814a3c7a682df735@gmail.com>
In-Reply-To: <20221005111214.148844-6-m.felsch@pengutronix.de>
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
	<20221005111214.148844-6-m.felsch@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_005330_764606_734A21F5 
X-CRM114-Status: GOOD (  22.52  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/7] RISC-V: squash 64bit defconfigs into
 rv64i_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed,  5 Oct 2022 13:12:13 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

Hi Marco!

It looks like this commit breaks emulate.pl, e.g.

  ARCH=3Driscv
  ARCH=3D${ARCH} ./test/emulate.pl --kconfig-full --test -- --junitxml=3D$P=
WD/$ARCH.tests.xml --lg-log=3D$PWD/log/$ARCH

reports

  Can't find default configuration "arch/riscv/configs/virt64_defconfig"!

Please see details: https://gitlab.com/frantony/barebox/-/jobs/3211154690#L=
111

--=20
Best regards,
=A0 Antony Pavlov

> This commit squashes all 64bit risc-v defconfigs into one like armv8.
> The 32bit defconfigs are not changed since those systems have tight
> resource constraints and a generic defconfig may break some systems.
>=20
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - new commit
>=20
>  Documentation/boards/emulated.rst             |   4 +-
>  Documentation/boards/riscv.rst                |   6 +-
>  arch/riscv/Makefile                           |   2 +-
>  .../{virt64_defconfig =3D> rv64i_defconfig}     |  42 +++++-
>  arch/riscv/configs/sifive_defconfig           | 129 -----------------
>  arch/riscv/configs/starfive_defconfig         | 131 ------------------
>  6 files changed, 47 insertions(+), 267 deletions(-)
>  rename arch/riscv/configs/{virt64_defconfig =3D> rv64i_defconfig} (76%)
>  delete mode 100644 arch/riscv/configs/sifive_defconfig
>  delete mode 100644 arch/riscv/configs/starfive_defconfig
>=20
> diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emu=
lated.rst
> index 584883d6ef..ef035ec69a 100644
> --- a/Documentation/boards/emulated.rst
> +++ b/Documentation/boards/emulated.rst
> @@ -64,12 +64,12 @@ The script can also be used with a precompiled barebo=
x tree::
>  ``emulate.pl`` also has some knowledge on paravirtualized devices::
> =20
>    # Run target and pass a block device (here /dev/virtioblk0)
> -  ARCH=3Driscv ./test/emulate.pl --blk=3Drootfs.ext4 virt64_defconfig
> +  ARCH=3Driscv ./test/emulate.pl --blk=3Drootfs.ext4 rv64i_defconfig
> =20
>  Needed command line options can be passed directly to the
>  emulator/``pytest`` as well by placing them behind ``--``::
> =20
>    # appends -device ? to the command line. Add -n to see the final result
> -  ARCH=3Driscv ./test/emulate.pl virt64_defconfig -- -device ?
> +  ARCH=3Driscv ./test/emulate.pl rv64i_defconfig -- -device ?
> =20
>  For a complete listing of options run ``./test/emulate.pl -h``.
> diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.=
rst
> index b7a3a95f0f..e69eca78c8 100644
> --- a/Documentation/boards/riscv.rst
> +++ b/Documentation/boards/riscv.rst
> @@ -6,10 +6,10 @@ QEMU Virt
> =20
>  barebox supports both the qemu riscv32 and riscv64 ``-M virt`` boards::
> =20
> -  make ARCH=3Driscv virt64_defconfig
> +  make ARCH=3Driscv rv64i_defconfig
>    qemu-system-riscv64 -M virt -serial stdio -kernel build/images/barebox=
-dt-2nd.img
> =20
> -Replace ``64`` by ``32`` for 32-bit build. :ref:`virtio_sect` over MMIO =
is supported and
> +For 32-bit builds use ``virt32_defconfig``. :ref:`virtio_sect` over MMIO=
 is supported and
>  can be used for e.g. an extra console or to pass in a virtio-blk device::
> =20
>    qemu-system-riscv64 -M virt -serial stdio                             =
   \
> @@ -65,7 +65,7 @@ BeagleV
> =20
>  barebox has second-stage support for the BeagleV Starlight::
> =20
> -  make ARCH=3Driscv starfive_defconfig
> +  make ARCH=3Driscv rv64i_defconfig
>    make
> =20
>  Thie resulting ``./images/barebox-beaglev-starlight.img`` can be used as=
 payload
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 6fbf1d4ddd..279db046c0 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> =20
> -KBUILD_DEFCONFIG :=3D virt64_defconfig
> +KBUILD_DEFCONFIG :=3D rv64i_defconfig
> =20
>  KBUILD_CPPFLAGS +=3D -fno-strict-aliasing
> =20
> diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/rv6=
4i_defconfig
> similarity index 76%
> rename from arch/riscv/configs/virt64_defconfig
> rename to arch/riscv/configs/rv64i_defconfig
> index c2edd2dc28..6c8409567d 100644
> --- a/arch/riscv/configs/virt64_defconfig
> +++ b/arch/riscv/configs/rv64i_defconfig
> @@ -1,5 +1,11 @@
>  CONFIG_ARCH_RV64I=3Dy
> +CONFIG_SOC_SIFIVE=3Dy
> +CONFIG_SOC_STARFIVE=3Dy
>  CONFIG_SOC_VIRT=3Dy
> +CONFIG_BOARD_BEAGLEV=3Dy
> +CONFIG_BOARD_BEAGLEV_BETA=3Dy
> +CONFIG_BOARD_HIFIVE=3Dy
> +CONFIG_BOARD_RISCV_GENERIC_DT=3Dy
>  CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=3Dy
>  CONFIG_STACK_SIZE=3D0x20000
>  CONFIG_MALLOC_SIZE=3D0x0
> @@ -13,6 +19,7 @@ CONFIG_AUTO_COMPLETE=3Dy
>  CONFIG_MENU=3Dy
>  CONFIG_BOOTM_VERBOSE=3Dy
>  CONFIG_BOOTM_INITRD=3Dy
> +CONFIG_SYSTEM_PARTITIONS=3Dy
>  CONFIG_BLSPEC=3Dy
>  CONFIG_CONSOLE_ACTIVATE_ALL=3Dy
>  CONFIG_CONSOLE_ALLOW_COLOR=3Dy
> @@ -47,9 +54,11 @@ CONFIG_CMD_LN=3Dy
>  CONFIG_CMD_MD5SUM=3Dy
>  CONFIG_CMD_SHA1SUM=3Dy
>  CONFIG_CMD_SHA256SUM=3Dy
> +CONFIG_CMD_UNCOMPRESS=3Dy
>  CONFIG_CMD_MSLEEP=3Dy
>  CONFIG_CMD_SLEEP=3Dy
>  CONFIG_CMD_DHCP=3Dy
> +CONFIG_CMD_MIITOOL=3Dy
>  CONFIG_CMD_PING=3Dy
>  CONFIG_CMD_ECHO_E=3Dy
>  CONFIG_CMD_EDIT=3Dy
> @@ -66,6 +75,7 @@ CONFIG_CMD_GPIO=3Dy
>  CONFIG_CMD_I2C=3Dy
>  CONFIG_CMD_POWEROFF=3Dy
>  CONFIG_CMD_SPI=3Dy
> +CONFIG_CMD_WD=3Dy
>  CONFIG_CMD_2048=3Dy
>  CONFIG_CMD_BAREBOX_UPDATE=3Dy
>  CONFIG_CMD_OF_DIFF=3Dy
> @@ -86,12 +96,21 @@ CONFIG_OF_BAREBOX_DRIVERS=3Dy
>  CONFIG_OF_BAREBOX_ENV_IN_FS=3Dy
>  CONFIG_DRIVER_SERIAL_NS16550=3Dy
>  CONFIG_VIRTIO_CONSOLE=3Dy
> +CONFIG_SERIAL_SIFIVE=3Dy
> +CONFIG_DRIVER_NET_MACB=3Dy
> +CONFIG_DRIVER_NET_DESIGNWARE=3Dy
> +CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=3Dy
> +CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE=3Dy
>  CONFIG_DRIVER_NET_VIRTIO=3Dy
> +CONFIG_MICREL_PHY=3Dy
> +CONFIG_SPI_MEM=3Dy
>  CONFIG_DRIVER_SPI_GPIO=3Dy
> +CONFIG_SPI_SIFIVE=3Dy
>  CONFIG_I2C=3Dy
>  CONFIG_I2C_GPIO=3Dy
>  CONFIG_MTD=3Dy
>  # CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_MTD_RAW_DEVICE=3Dy
>  CONFIG_MTD_CONCAT=3Dy
>  CONFIG_MTD_M25P80=3Dy
>  CONFIG_MTD_MTDRAM=3Dy
> @@ -104,21 +123,42 @@ CONFIG_VIDEO=3Dy
>  CONFIG_FRAMEBUFFER_CONSOLE=3Dy
>  CONFIG_DRIVER_VIDEO_BOCHS_PCI=3Dy
>  CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=3Dy
> +CONFIG_MCI=3Dy
> +CONFIG_MCI_SPI=3Dy
> +CONFIG_MCI_DW=3Dy
>  CONFIG_CLOCKSOURCE_DUMMY_RATE=3D60000
>  CONFIG_STATE_DRV=3Dy
>  CONFIG_EEPROM_AT24=3Dy
>  CONFIG_VIRTIO_INPUT=3Dy
> +CONFIG_SRAM=3Dy
> +CONFIG_STARFIVE_PWRSEQ=3Dy
> +CONFIG_LED=3Dy
> +CONFIG_LED_GPIO=3Dy
> +CONFIG_LED_GPIO_OF=3Dy
> +CONFIG_LED_TRIGGERS=3Dy
> +CONFIG_WATCHDOG=3Dy
> +CONFIG_STARFIVE_WDT=3Dy
>  CONFIG_HWRNG=3Dy
>  CONFIG_HW_RANDOM_VIRTIO=3Dy
> +CONFIG_GPIO_SIFIVE=3Dy
> +CONFIG_HW_RANDOM_STARFIVE=3Dy
>  CONFIG_GPIO_GENERIC_PLATFORM=3Dy
> -# CONFIG_PINCTRL is not set
> +CONFIG_GPIO_STARFIVE=3Dy
> +CONFIG_PINCTRL_SINGLE=3Dy
> +CONFIG_NVMEM=3Dy
> +CONFIG_NVMEM_RMEM=3Dy
> +CONFIG_STARFIVE_OTP=3Dy
>  CONFIG_PCI_ECAM_GENERIC=3Dy
>  CONFIG_BLK_DEV_NVME=3Dy
>  CONFIG_SYSCON_REBOOT_MODE=3Dy
> +CONFIG_NVMEM_REBOOT_MODE=3Dy
>  CONFIG_POWER_RESET_SYSCON=3Dy
>  CONFIG_POWER_RESET_SYSCON_POWEROFF=3Dy
>  CONFIG_POWER_RESET_HTIF_POWEROFF=3Dy
> +CONFIG_POWER_RESET_GPIO=3Dy
> +CONFIG_POWER_RESET_GPIO_RESTART=3Dy
>  CONFIG_VIRTIO_MMIO=3Dy
> +# CONFIG_VIRTIO_MENU is not set
>  CONFIG_FS_EXT4=3Dy
>  CONFIG_FS_TFTP=3Dy
>  CONFIG_FS_NFS=3Dy
> diff --git a/arch/riscv/configs/sifive_defconfig b/arch/riscv/configs/sif=
ive_defconfig
> deleted file mode 100644
> index 6ebe6eaf37..0000000000
> --- a/arch/riscv/configs/sifive_defconfig
> +++ /dev/null
> @@ -1,129 +0,0 @@
> -CONFIG_ARCH_RV64I=3Dy
> -CONFIG_SOC_SIFIVE=3Dy
> -CONFIG_BOARD_HIFIVE=3Dy
> -CONFIG_BOARD_RISCV_GENERIC_DT=3Dy
> -CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=3Dy
> -CONFIG_STACK_SIZE=3D0x20000
> -CONFIG_MALLOC_SIZE=3D0x0
> -CONFIG_MALLOC_TLSF=3Dy
> -CONFIG_KALLSYMS=3Dy
> -CONFIG_RELOCATABLE=3Dy
> -CONFIG_PANIC_HANG=3Dy
> -CONFIG_HUSH_FANCY_PROMPT=3Dy
> -CONFIG_CMDLINE_EDITING=3Dy
> -CONFIG_AUTO_COMPLETE=3Dy
> -CONFIG_MENU=3Dy
> -CONFIG_CONSOLE_ALLOW_COLOR=3Dy
> -CONFIG_PBL_CONSOLE=3Dy
> -CONFIG_PARTITION_DISK_EFI=3Dy
> -CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> -CONFIG_STATE=3Dy
> -CONFIG_STATE_CRYPTO=3Dy
> -CONFIG_BOOTCHOOSER=3Dy
> -CONFIG_RESET_SOURCE=3Dy
> -CONFIG_MACHINE_ID=3Dy
> -CONFIG_CMD_DMESG=3Dy
> -CONFIG_LONGHELP=3Dy
> -CONFIG_CMD_IOMEM=3Dy
> -CONFIG_CMD_IMD=3Dy
> -CONFIG_CMD_MEMINFO=3Dy
> -CONFIG_CMD_POLLER=3Dy
> -CONFIG_CMD_SLICE=3Dy
> -CONFIG_CMD_GO=3Dy
> -CONFIG_CMD_LOADY=3Dy
> -CONFIG_CMD_RESET=3Dy
> -CONFIG_CMD_BOOTCHOOSER=3Dy
> -CONFIG_CMD_EXPORT=3Dy
> -CONFIG_CMD_PRINTENV=3Dy
> -CONFIG_CMD_MAGICVAR=3Dy
> -CONFIG_CMD_MAGICVAR_HELP=3Dy
> -CONFIG_CMD_SAVEENV=3Dy
> -CONFIG_CMD_CMP=3Dy
> -CONFIG_CMD_FILETYPE=3Dy
> -CONFIG_CMD_LN=3Dy
> -CONFIG_CMD_MD5SUM=3Dy
> -CONFIG_CMD_SHA1SUM=3Dy
> -CONFIG_CMD_SHA256SUM=3Dy
> -CONFIG_CMD_MSLEEP=3Dy
> -CONFIG_CMD_SLEEP=3Dy
> -CONFIG_CMD_DHCP=3Dy
> -CONFIG_CMD_MIITOOL=3Dy
> -CONFIG_CMD_PING=3Dy
> -CONFIG_CMD_EDIT=3Dy
> -CONFIG_CMD_SPLASH=3Dy
> -CONFIG_CMD_FBTEST=3Dy
> -CONFIG_CMD_READLINE=3Dy
> -CONFIG_CMD_TIMEOUT=3Dy
> -CONFIG_CMD_MEMTEST=3Dy
> -CONFIG_CMD_MM=3Dy
> -CONFIG_CMD_CLK=3Dy
> -CONFIG_CMD_DETECT=3Dy
> -CONFIG_CMD_FLASH=3Dy
> -CONFIG_CMD_GPIO=3Dy
> -CONFIG_CMD_I2C=3Dy
> -CONFIG_CMD_POWEROFF=3Dy
> -CONFIG_CMD_SPI=3Dy
> -CONFIG_CMD_2048=3Dy
> -CONFIG_CMD_BAREBOX_UPDATE=3Dy
> -CONFIG_CMD_OF_DIFF=3Dy
> -CONFIG_CMD_OF_NODE=3Dy
> -CONFIG_CMD_OF_PROPERTY=3Dy
> -CONFIG_CMD_OF_DISPLAY_TIMINGS=3Dy
> -CONFIG_CMD_OF_FIXUP_STATUS=3Dy
> -CONFIG_CMD_OF_OVERLAY=3Dy
> -CONFIG_CMD_OFTREE=3Dy
> -CONFIG_CMD_TIME=3Dy
> -CONFIG_CMD_DHRYSTONE=3Dy
> -CONFIG_NET=3Dy
> -CONFIG_NET_NFS=3Dy
> -CONFIG_NET_FASTBOOT=3Dy
> -CONFIG_DRIVER_SERIAL_NS16550=3Dy
> -CONFIG_VIRTIO_CONSOLE=3Dy
> -CONFIG_SERIAL_SIFIVE=3Dy
> -CONFIG_DRIVER_NET_MACB=3Dy
> -CONFIG_DRIVER_SPI_GPIO=3Dy
> -CONFIG_SPI_SIFIVE=3Dy
> -CONFIG_I2C=3Dy
> -CONFIG_I2C_GPIO=3Dy
> -CONFIG_MTD=3Dy
> -CONFIG_MTD_RAW_DEVICE=3Dy
> -CONFIG_MTD_CONCAT=3Dy
> -CONFIG_MTD_M25P80=3Dy
> -CONFIG_DRIVER_CFI=3Dy
> -CONFIG_DRIVER_CFI_BANK_WIDTH_8=3Dy
> -CONFIG_VIRTIO_BLK=3Dy
> -CONFIG_VIDEO=3Dy
> -CONFIG_FRAMEBUFFER_CONSOLE=3Dy
> -CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=3Dy
> -CONFIG_MCI=3Dy
> -CONFIG_MCI_SPI=3Dy
> -CONFIG_CLOCKSOURCE_DUMMY_RATE=3D60000
> -CONFIG_EEPROM_AT24=3Dy
> -CONFIG_HWRNG=3Dy
> -CONFIG_HW_RANDOM_VIRTIO=3Dy
> -CONFIG_GPIO_SIFIVE=3Dy
> -# CONFIG_PINCTRL is not set
> -CONFIG_SYSCON_REBOOT_MODE=3Dy
> -CONFIG_POWER_RESET_SYSCON=3Dy
> -CONFIG_POWER_RESET_SYSCON_POWEROFF=3Dy
> -CONFIG_POWER_RESET_GPIO_RESTART=3Dy
> -CONFIG_VIRTIO_MMIO=3Dy
> -CONFIG_FS_EXT4=3Dy
> -CONFIG_FS_TFTP=3Dy
> -CONFIG_FS_NFS=3Dy
> -CONFIG_FS_FAT=3Dy
> -CONFIG_FS_FAT_WRITE=3Dy
> -CONFIG_FS_FAT_LFN=3Dy
> -CONFIG_FS_UIMAGEFS=3Dy
> -CONFIG_FS_PSTORE=3Dy
> -CONFIG_FS_SQUASHFS=3Dy
> -CONFIG_ZLIB=3Dy
> -CONFIG_BZLIB=3Dy
> -CONFIG_LZ4_DECOMPRESS=3Dy
> -CONFIG_ZSTD_DECOMPRESS=3Dy
> -CONFIG_XZ_DECOMPRESS=3Dy
> -CONFIG_BASE64=3Dy
> -CONFIG_DIGEST_CRC32_GENERIC=3Dy
> -CONFIG_IMD_TARGET=3Dy
> -CONFIG_BAREBOXENV_TARGET=3Dy
> -CONFIG_BAREBOXCRC32_TARGET=3Dy
> diff --git a/arch/riscv/configs/starfive_defconfig b/arch/riscv/configs/s=
tarfive_defconfig
> deleted file mode 100644
> index c4df2256f5..0000000000
> --- a/arch/riscv/configs/starfive_defconfig
> +++ /dev/null
> @@ -1,131 +0,0 @@
> -CONFIG_ARCH_RV64I=3Dy
> -CONFIG_SOC_STARFIVE=3Dy
> -CONFIG_BOARD_BEAGLEV=3Dy
> -CONFIG_BOARD_BEAGLEV_BETA=3Dy
> -CONFIG_BOARD_RISCV_GENERIC_DT=3Dy
> -CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=3Dy
> -CONFIG_STACK_SIZE=3D0x20000
> -CONFIG_MALLOC_SIZE=3D0x0
> -CONFIG_MALLOC_TLSF=3Dy
> -CONFIG_KALLSYMS=3Dy
> -CONFIG_RELOCATABLE=3Dy
> -CONFIG_PANIC_HANG=3Dy
> -CONFIG_HUSH_FANCY_PROMPT=3Dy
> -CONFIG_CMDLINE_EDITING=3Dy
> -CONFIG_AUTO_COMPLETE=3Dy
> -CONFIG_MENU=3Dy
> -CONFIG_BOOTM_INITRD=3Dy
> -CONFIG_SYSTEM_PARTITIONS=3Dy
> -CONFIG_IMD_TARGET=3Dy
> -CONFIG_CONSOLE_ALLOW_COLOR=3Dy
> -CONFIG_PBL_CONSOLE=3Dy
> -CONFIG_PARTITION_DISK_EFI=3Dy
> -CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> -CONFIG_BAREBOXENV_TARGET=3Dy
> -CONFIG_BAREBOXCRC32_TARGET=3Dy
> -CONFIG_STATE=3Dy
> -CONFIG_STATE_CRYPTO=3Dy
> -CONFIG_BOOTCHOOSER=3Dy
> -CONFIG_RESET_SOURCE=3Dy
> -CONFIG_MACHINE_ID=3Dy
> -CONFIG_CMD_DMESG=3Dy
> -CONFIG_LONGHELP=3Dy
> -CONFIG_CMD_IOMEM=3Dy
> -CONFIG_CMD_IMD=3Dy
> -CONFIG_CMD_MEMINFO=3Dy
> -CONFIG_CMD_POLLER=3Dy
> -CONFIG_CMD_SLICE=3Dy
> -CONFIG_CMD_GO=3Dy
> -CONFIG_CMD_LOADY=3Dy
> -CONFIG_CMD_RESET=3Dy
> -CONFIG_CMD_BOOTCHOOSER=3Dy
> -CONFIG_CMD_EXPORT=3Dy
> -CONFIG_CMD_PRINTENV=3Dy
> -CONFIG_CMD_MAGICVAR=3Dy
> -CONFIG_CMD_MAGICVAR_HELP=3Dy
> -CONFIG_CMD_SAVEENV=3Dy
> -CONFIG_CMD_CMP=3Dy
> -CONFIG_CMD_FILETYPE=3Dy
> -CONFIG_CMD_LN=3Dy
> -CONFIG_CMD_MD5SUM=3Dy
> -CONFIG_CMD_SHA1SUM=3Dy
> -CONFIG_CMD_SHA256SUM=3Dy
> -CONFIG_CMD_UNCOMPRESS=3Dy
> -CONFIG_CMD_MSLEEP=3Dy
> -CONFIG_CMD_SLEEP=3Dy
> -CONFIG_CMD_DHCP=3Dy
> -CONFIG_CMD_PING=3Dy
> -CONFIG_CMD_EDIT=3Dy
> -CONFIG_CMD_READLINE=3Dy
> -CONFIG_CMD_TIMEOUT=3Dy
> -CONFIG_CMD_MEMTEST=3Dy
> -CONFIG_CMD_MM=3Dy
> -CONFIG_CMD_CLK=3Dy
> -CONFIG_CMD_DETECT=3Dy
> -CONFIG_CMD_FLASH=3Dy
> -CONFIG_CMD_GPIO=3Dy
> -CONFIG_CMD_POWEROFF=3Dy
> -CONFIG_CMD_SPI=3Dy
> -CONFIG_CMD_WD=3Dy
> -CONFIG_CMD_2048=3Dy
> -CONFIG_CMD_BAREBOX_UPDATE=3Dy
> -CONFIG_CMD_OF_DIFF=3Dy
> -CONFIG_CMD_OF_NODE=3Dy
> -CONFIG_CMD_OF_PROPERTY=3Dy
> -CONFIG_CMD_OF_DISPLAY_TIMINGS=3Dy
> -CONFIG_CMD_OF_FIXUP_STATUS=3Dy
> -CONFIG_CMD_OF_OVERLAY=3Dy
> -CONFIG_CMD_OFTREE=3Dy
> -CONFIG_CMD_TIME=3Dy
> -CONFIG_CMD_DHRYSTONE=3Dy
> -CONFIG_NET=3Dy
> -CONFIG_NET_NFS=3Dy
> -CONFIG_DRIVER_SERIAL_NS16550=3Dy
> -CONFIG_DRIVER_NET_DESIGNWARE=3Dy
> -CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=3Dy
> -CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE=3Dy
> -CONFIG_MICREL_PHY=3Dy
> -CONFIG_SPI_MEM=3Dy
> -CONFIG_DRIVER_SPI_GPIO=3Dy
> -CONFIG_MCI=3Dy
> -CONFIG_MCI_DW=3Dy
> -CONFIG_CLOCKSOURCE_DUMMY_RATE=3D60000
> -CONFIG_SRAM=3Dy
> -CONFIG_STARFIVE_PWRSEQ=3Dy
> -CONFIG_LED=3Dy
> -CONFIG_LED_GPIO=3Dy
> -CONFIG_LED_GPIO_OF=3Dy
> -CONFIG_LED_TRIGGERS=3Dy
> -CONFIG_WATCHDOG=3Dy
> -CONFIG_STARFIVE_WDT=3Dy
> -CONFIG_HWRNG=3Dy
> -CONFIG_HW_RANDOM_STARFIVE=3Dy
> -CONFIG_GPIO_GENERIC_PLATFORM=3Dy
> -CONFIG_GPIO_STARFIVE=3Dy
> -CONFIG_PINCTRL_SINGLE=3Dy
> -CONFIG_NVMEM=3Dy
> -CONFIG_NVMEM_RMEM=3Dy
> -CONFIG_STARFIVE_OTP=3Dy
> -CONFIG_SYSCON_REBOOT_MODE=3Dy
> -CONFIG_NVMEM_REBOOT_MODE=3Dy
> -CONFIG_POWER_RESET_SYSCON=3Dy
> -CONFIG_POWER_RESET_SYSCON_POWEROFF=3Dy
> -CONFIG_POWER_RESET_GPIO=3Dy
> -CONFIG_POWER_RESET_GPIO_RESTART=3Dy
> -# CONFIG_VIRTIO_MENU is not set
> -CONFIG_FS_EXT4=3Dy
> -CONFIG_FS_TFTP=3Dy
> -CONFIG_FS_NFS=3Dy
> -CONFIG_FS_FAT=3Dy
> -CONFIG_FS_FAT_WRITE=3Dy
> -CONFIG_FS_FAT_LFN=3Dy
> -CONFIG_FS_UIMAGEFS=3Dy
> -CONFIG_FS_PSTORE=3Dy
> -CONFIG_FS_SQUASHFS=3Dy
> -CONFIG_ZLIB=3Dy
> -CONFIG_BZLIB=3Dy
> -CONFIG_LZ4_DECOMPRESS=3Dy
> -CONFIG_ZSTD_DECOMPRESS=3Dy
> -CONFIG_XZ_DECOMPRESS=3Dy
> -CONFIG_BASE64=3Dy
> -CONFIG_DIGEST_CRC32_GENERIC=3Dy
> --=20
> 2.30.2
>=20
>=20



