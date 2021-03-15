Delivery-date: Mon, 15 Mar 2021 09:24:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiWJ-0000a2-KQ
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:24:11 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiWI-0001Fg-EC
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:24:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XLP5qgvp8DfXcZhyDC2V3PSTFgZijg8CbLyR4t2hXWA=; b=k7nxQTxWpaxJdQdevHX/TriZP
	YzmTT5n3YEYWMLT4u7PpcLWKY14mh/yzSxcbxlombNeqYKk866XTKPHhC9SciOJPkMGTw2c5i3H9l
	Q14KLN1OxeuhlLYn79Rz1NheNnY50kxOPL/n/lfzHgRPo5rwRYol4SLUSzJ15Z/3ytGxngjUsui4r
	gDwUTq0HW1k+tffnO8QQhkYdYkWM9Mh4eBUCzqU8x0u54x5Aqtox36h54L4jko923F6N5gnNETswZ
	xePhO9LYkm1pmFuABaGwkUDmwp5JSSG78kl57yQzChN1QJ7aEtA5aQMA+R+w+HzX5x8+4B+YiUN8n
	R0jV/N7wA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLiV4-00FDSD-Oi; Mon, 15 Mar 2021 08:22:55 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLiUq-00FDQk-OS
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:22:44 +0000
Received: by mail-lf1-x133.google.com with SMTP id n16so55482029lfb.4
 for <barebox@lists.infradead.org>; Mon, 15 Mar 2021 01:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jMugXSfeBNFr6w6NjzomPqOZgEZecODHUtgJ+Qz0XNI=;
 b=k6jELkedEcAC+gsaWEsom179LYfviyqJ4pFIiGetxFaHlFm3GKmy/pX82u7mzz/j54
 Wbzq7BGxk42R8uMKWpczlo3tObg7B/5MWfMIZf0kxZz66Xuz8IgN7UtwUKjfrfZdnfky
 9JgjFOTrp2yjMoPafWjo7kvE3d1pOcTA7UvZ6al5Dzy9NaUBWvcxK4KAbbao5aZ2eLBg
 3hTgKd8es4XVY0sJGsvcJk+d5FUDQNRbUNwAKJJPg2NX0u10qBuTTBYOwxt7qFKE/Yw6
 z+jVBrmkFJPtM9TF6RS3oanowP4fkYjio1KPnnzrOztzRYiw1srmGrLq7uFpbF4Q6miB
 EyPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jMugXSfeBNFr6w6NjzomPqOZgEZecODHUtgJ+Qz0XNI=;
 b=O0KJLGrs2tIJRhWnoGXWWWrm9XmccOJMe8edFmYDOMjeMhbNBJC6Yu500wA1+aQKIp
 VFEiEDbzsRgYQw+Jd8Rnb14mlxPRVxdv36ccMHUgZ/3MIyxf7Ylp7MFGYJY9ZylSrmzv
 6xbylwDEdYnjtc72e7NF3pr6C8uQp+thyOep8c4iinbwj4124/4JJsTFLZ26AnAKVZYQ
 Db9yPtAg8ZbuQ0fBqfN71V8U9h68Fz4M1eTkX20m6tb9KuWhpz1lmznacP8bzTqHnnWx
 wpIv8XYBiOsRRXocjm9wApwnJ1+nvdeOQWCs5Q7v52kI2+0aUA0R3jcJuqbwBLsntaoY
 Mn2w==
X-Gm-Message-State: AOAM533lU0ngN0S0fbK5lKefimTqJYPM70k9/47SN0nAs4BLEhIAVDsT
 OVOVzyoecZM+pL5snA1AhOI=
X-Google-Smtp-Source: ABdhPJzwvyaDkcYGrgB91Zwtg1CqfYn7H1Vdim8oXBpK1YW/yUW45eY/wdiYopT/iXN2knOkD/ksnQ==
X-Received: by 2002:ac2:5603:: with SMTP id v3mr7532330lfd.67.1615796558731;
 Mon, 15 Mar 2021 01:22:38 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id u25sm2305193ljo.133.2021.03.15.01.22.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Mar 2021 01:22:38 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:22:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-Id: <20210315112237.32cc9325433b134de4859acb@gmail.com>
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_082241_688499_ADA89C1D 
X-CRM114-Status: GOOD (  22.09  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/20] RISC-V: rework for PBL, VIRT and 64-Bit support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 14 Mar 2021 13:27:44 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

I'm very glad to see RISC-V support improvement!

Can you please push your RISC-V working branch to github (or other public g=
it repo),
so I can test it too?

At the moment I have at least two out-of tree RISC-V branches that which I =
want
to rebase on latest barebox with your patches:

  * https://github.com/frantony/barebox/tree/20200222.riscv-sifive =

    contains hacky 64-bit support and add Sifive U500 qemu support.
    =

  * https://github.com/litex-hub/barebox/tree/20200727.litex-vexriscv-linux
    contains litex SoC with RISC-V 32-bit CPU core support.
    It can run linux on Arty, please see
    https://github.com/enjoy-digital/litex/issues/413#issuecomment-609047340

    It seems, that ethernet driver needs update: https://github.com/litex-h=
ub/barebox/issues/1

I suppose that you can add 'bootm: add RISC-V image type' patch to your ser=
ies =

(I'll send you the patch in a few minutes). The patch used in the litex ser=
ies.


> With these changes applied, barebox can now generate images that can
> be booted on qemu/tinyemu virt32 and virt64 machines.
> =

> The boards have clocksource, virtio, cfi-flash,  reboot and poweroff
> support.
> =

> Cheers,
> Ahmad Fatoum (18):
>   partitions: don't allocate dma capable memory
>   images: make BOARD_ARM_GENERIC_DT available for other arches
>   ARM: rename CONFIG_ARM_USE_COMPRESSED_DTB to CONFIG_USE_COMPRESSED_DTB
>   ARM: aarch64: ommit unused label in assembly
>   serial: virtio-console: depend on, but don't select VIRTIO
>   filetype: detect RISC-V Linux kernel image
>   asm: unaligned: don't do unaligned accesses
>   RISC-V: debug_ll: ns16550: align C access size with assembly's
>   RISC-V: drop duplicate or unneeded cflags
>   RISC-V: add cacheless HAS_DMA support
>   RISC-V: erizo: move to arch/riscv/boards/erizo
>   RISC-V: import Linux' optimized string functions
>   RISC-V: implement PBL and relocation support
>   RISC-V: erizo: migrate to PBL
>   RISC-V: support symbol names in barebox image
>   RISC-V: add generic DT image
>   clocksource: add driver for RISC-V CLINT timer
>   power: reset: add drivers for generic syscon reset and poweroff
> =

> Rouven Czerwinski (2):
>   RISC-V: add 64-bit support
>   RISC-V: add Qemu virt support
> =

>  Documentation/boards/riscv.rst               |  72 ++++++-
>  Makefile                                     |   1 +
>  arch/arm/Kconfig                             |   9 +-
>  arch/arm/cpu/start.c                         |   2 +-
>  arch/arm/lib64/runtime-offset.S              |   2 +-
>  arch/arm/mach-at91/Kconfig                   |   2 +-
>  arch/arm/mach-imx/Kconfig                    |  26 +--
>  arch/arm/mach-omap/Kconfig                   |   2 +-
>  arch/riscv/Kconfig                           |  66 +++++--
>  arch/riscv/Makefile                          |  34 ++--
>  arch/riscv/boards/Makefile                   |   2 +
>  arch/riscv/boards/erizo/Makefile             |   3 +
>  arch/riscv/boards/erizo/lowlevel.c           |  18 ++
>  arch/riscv/boot/Makefile                     |   5 +-
>  arch/riscv/boot/board-dt-2nd-entry.S         |  26 +++
>  arch/riscv/boot/board-dt-2nd.c               |  29 +++
>  arch/riscv/boot/dtb.c                        |  25 ---
>  arch/riscv/boot/entry.c                      |  33 ++++
>  arch/riscv/boot/entry.h                      |  15 ++
>  arch/riscv/boot/entry_ll.S                   |  15 ++
>  arch/riscv/boot/main_entry.c                 |  35 ----
>  arch/riscv/boot/start.S                      |  68 -------
>  arch/riscv/boot/start.c                      | 197 +++++++++++++++++++
>  arch/riscv/boot/uncompress.c                 |  74 +++++++
>  arch/riscv/configs/erizo_generic_defconfig   |   5 -
>  arch/riscv/configs/virt32_defconfig          | 117 +++++++++++
>  arch/riscv/configs/virt64_defconfig          | 118 +++++++++++
>  arch/riscv/dts/Makefile                      |   9 +-
>  arch/riscv/include/asm/barebox-riscv.h       | 101 ++++++++++
>  arch/riscv/include/asm/common.h              |  10 +-
>  arch/riscv/include/asm/debug_ll_ns16550.h    |  16 +-
>  arch/riscv/include/asm/dma.h                 |  44 +++++
>  arch/riscv/include/asm/elf.h                 |   8 +-
>  arch/riscv/include/asm/image.h               |  65 ++++++
>  arch/riscv/include/asm/linkage.h             |   4 +
>  arch/riscv/include/asm/sections.h            |  15 ++
>  arch/riscv/include/asm/string.h              |  21 +-
>  arch/riscv/include/asm/types.h               |   8 +-
>  arch/riscv/include/asm/unaligned.h           |  16 +-
>  arch/riscv/lib/Makefile                      |   6 +-
>  arch/riscv/lib/barebox.lds.S                 |  55 ++++--
>  arch/riscv/lib/dtb.c                         |  26 +++
>  arch/riscv/lib/memcpy.S                      | 108 ++++++++++
>  arch/riscv/lib/memmove.S                     |  64 ++++++
>  arch/riscv/lib/memset.S                      | 113 +++++++++++
>  arch/riscv/lib/pbl.lds.S                     |  88 +++++++++
>  arch/riscv/lib/reloc.c                       |  64 ++++++
>  arch/riscv/lib/runtime-offset.S              |  12 ++
>  arch/riscv/lib/sections.c                    |   9 +
>  arch/riscv/lib/setupc.S                      |  55 ++++++
>  arch/riscv/mach-virt/Makefile                |   3 +
>  arch/riscv/mach-virt/include/mach/debug_ll.h |  25 +++
>  common/Kconfig                               |   8 +-
>  common/filetype.c                            |   3 +
>  common/partitions.c                          |   5 +-
>  common/partitions/dos.c                      |   7 +-
>  common/partitions/efi.c                      |   1 -
>  drivers/clocksource/Kconfig                  |   7 +
>  drivers/clocksource/Makefile                 |   1 +
>  drivers/clocksource/timer-clint.c            |  98 +++++++++
>  drivers/power/reset/Kconfig                  |  14 ++
>  drivers/power/reset/Makefile                 |   2 +
>  drivers/power/reset/syscon-poweroff.c        |  76 +++++++
>  drivers/power/reset/syscon-reboot.c          |  92 +++++++++
>  drivers/serial/Kconfig                       |   2 +-
>  images/Makefile                              |   8 +-
>  images/Makefile.erizo                        |  12 ++
>  include/dma.h                                |   1 +
>  include/filetype.h                           |   1 +
>  pbl/Kconfig                                  |   6 +-
>  scripts/.gitignore                           |   1 +
>  scripts/Makefile                             |   1 +
>  scripts/Makefile.lib                         |  11 ++
>  scripts/prelink-riscv.c                      | 122 ++++++++++++
>  scripts/prelink-riscv.inc                    | 123 ++++++++++++
>  75 files changed, 2285 insertions(+), 263 deletions(-)
>  create mode 100644 arch/riscv/boards/Makefile
>  create mode 100644 arch/riscv/boards/erizo/Makefile
>  create mode 100644 arch/riscv/boards/erizo/lowlevel.c
>  create mode 100644 arch/riscv/boot/board-dt-2nd-entry.S
>  create mode 100644 arch/riscv/boot/board-dt-2nd.c
>  delete mode 100644 arch/riscv/boot/dtb.c
>  create mode 100644 arch/riscv/boot/entry.c
>  create mode 100644 arch/riscv/boot/entry.h
>  create mode 100644 arch/riscv/boot/entry_ll.S
>  delete mode 100644 arch/riscv/boot/main_entry.c
>  delete mode 100644 arch/riscv/boot/start.S
>  create mode 100644 arch/riscv/boot/start.c
>  create mode 100644 arch/riscv/boot/uncompress.c
>  create mode 100644 arch/riscv/configs/virt32_defconfig
>  create mode 100644 arch/riscv/configs/virt64_defconfig
>  create mode 100644 arch/riscv/include/asm/barebox-riscv.h
>  create mode 100644 arch/riscv/include/asm/dma.h
>  create mode 100644 arch/riscv/include/asm/image.h
>  create mode 100644 arch/riscv/lib/dtb.c
>  create mode 100644 arch/riscv/lib/memcpy.S
>  create mode 100644 arch/riscv/lib/memmove.S
>  create mode 100644 arch/riscv/lib/memset.S
>  create mode 100644 arch/riscv/lib/pbl.lds.S
>  create mode 100644 arch/riscv/lib/reloc.c
>  create mode 100644 arch/riscv/lib/runtime-offset.S
>  create mode 100644 arch/riscv/lib/sections.c
>  create mode 100644 arch/riscv/lib/setupc.S
>  create mode 100644 arch/riscv/mach-virt/Makefile
>  create mode 100644 arch/riscv/mach-virt/include/mach/debug_ll.h
>  create mode 100644 drivers/clocksource/timer-clint.c
>  create mode 100644 drivers/power/reset/syscon-poweroff.c
>  create mode 100644 drivers/power/reset/syscon-reboot.c
>  create mode 100644 images/Makefile.erizo
>  create mode 100644 scripts/prelink-riscv.c
>  create mode 100644 scripts/prelink-riscv.inc
> =

> -- =

> 2.29.2
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

