Delivery-date: Fri, 29 Aug 2025 16:28:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1us05B-005qYt-2k
	for lore@lore.pengutronix.de;
	Fri, 29 Aug 2025 16:28:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1us05A-0002L4-60
	for lore@pengutronix.de; Fri, 29 Aug 2025 16:28:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TKpiqMhZbfBuP7j1zH3xdBe9Kpg1h+pl/BeyJ5Af1Ao=; b=OE+5Od+mEs145IzC/lDilgQF/r
	f/kf+auOGn1X+9OuUwwgc4YMMaylLyWjvRLSpP3+/NuZO2iuLMWeR2qCrZx7qyuyb2etPM0n2g6Lx
	uCdn2Cmnm6xslU/GHuR6Dw4zY49iOj73R3IvhXhkDtlO+hnZunu22x8lcd/qRPzneE8aoZ5+vVJuS
	uwX3jT1PxWb/xkMRHFOvST+YQGgAmx0Oygv1/89qLBaOKq9by+ngKsCGO74JFPgnRb3aAjTOXUVLj
	95jbD9E8wLDaQAEbwqY0sKcVO/uf3osdLbitdOaV2f1A/t378SFUziFnG9afzD1YtVpZZ4p8Ng9yU
	eR+X0b5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us04Q-0000000615g-2OIn;
	Fri, 29 Aug 2025 14:27:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urxE1-00000005Te8-2G9a
	for barebox@lists.infradead.org;
	Fri, 29 Aug 2025 11:24:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1urxDz-0006qR-Ah; Fri, 29 Aug 2025 13:24:55 +0200
Message-ID: <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
Date: Fri, 29 Aug 2025 13:24:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>, anis chali <chalianis1@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250828150637.2222474-1-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_042457_750240_AD7ACBF6 
X-CRM114-Status: GOOD (  59.51  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Tobias,

On 28.08.25 17:05, Tobias Waldekranz wrote:
> Start work on adding a device mapper that is compatible with the
> corresponding subsystem in Linux.

I haven't go through the patches, but I read this far and I am hyped!

Both Richard (Cc'd) and myself held talks[1][2] this week at ELC-E in
Amsterdam lamenting the current state of vulnerabilities affecting the
file systems and not having dm-verity in the bootloader stack to
counteract this.

It's thus really cool to see you have been working not talking. :D

I will check this out more thoroughly next week.

> This is the foundation of several higher level abstractions, for
> example:
> 
> - LVM: Linux Volume manager. Dynamically allocates logical volumes
>   from one or more storage devices, manages RAID arrays, etc.
> 
> - LUKS: Linux Unified Key Setup. Transparent disk
>   encryption/decryption.
> 
> - dm-verity: Transparent integrity checking of block devices.
> 
> This is part of an exploratory project for investigating how we could
> boot Infix[1] in a more platform-independent way. I.e., my intention
> is to eventually add support for some of the features mentioned above,
> assuming we don't hit any major road blocks. The rest of this letter
> just gives context for how we got here and where we would like to take
> Barebox. If that is not interesting, feel free to stop reading here :)
> 
> Our idea is to relegate U-Boot to serve only as a UEFI firmware on the
> platforms where we can't escape it, and then do most of our boot logic
> in Barebox instead. Primarily we want to do this for two reasons:
> 
> 1. Being able to ship barebox as an EFI app means we can use the same
>    boot logic on x86 machines as we to on everything else.

I have for years been working on an EFI loader implementation for barebox.
It can boot Fedora and Debian (both OS and CDROM installer) fine on ARM64
and have gotten lost in the weeds doing the same for ARM32. It works there
with the most recent kernel, but not what's in Debian Trixie and I have yet
to find out what is the difference.

I hope to resume this work in the coming months. I know this doesn't address
the issue of barebox not supporting as wide a hardware range as U-Boot, but
I mention this to explain where the EFI payload support for ARM is coming from:

The x86 EFI payload support in barebox has reliably been used under a number of
EFI implementation in different products over the years.

The ARM EFI payload support was started by me dog fooding my barebox-on-ARM
EFI loader work, so it still needs some more work to be usable as bootloader in
its own right.

My focus so far was more on getting it to run under all of U-Boot, Tianocore and
of course barebox to inform the way I implement the EFI loader. (Admittedly,
I went a bit overboard, e.g., implementing directory fds instead of just doing path
normalization/resolution inside EFI, but it looks really nifty now!)

Fortunately, Anis (Cc'd) is right now working on exactly the use case
of filling out the missing pieces for using barebox as EFI payload on ARM and has
already submitted patches bringing this closer to completion.

> 2. Barebox is a much higher quality code base to work in than
>    U-Boot. I'm sorry, but it just is.
> 
> Barebox would thus take the place occupied by systemd-boot in many
> distro setups. So why not go with systemd-boot?

Sidenote: Something that been irking me for ages is the over-reliance
on FAT in systemd-boot. Could the FAT on a file system level break
by inopportune power cuts? We go to great lengths with barebox-state
and redundant buckets on raw partitions to avoid this and it leaves
me asking: Was I wrong to mistrust FAT or is a sudden power cut during
file system write operations not as much a concern for their users?

I hope someone (maybe me instead of talking) should do fault injection
in QEMU or using kernel APIs and see how broken it can get.

> 1. Infix does not run systemd as PID 1, so reusing their bootloader is
>    awkward.
> 
> 2. Infix ships as a single immutable filesystem image, including
>    kernel, DTBs, etc. So we want to extract these files from the
>    filesystem before booting the kernel. This is not supported by
>    systemd-boot, AFAIK - all boot files must live on the ESP.

I don't want to talk you out of using barebox of course, but I believe
they also support XBOOTLDR partitions? At least in barebox, you should
be able to just assign the rootfs partition of the Infix OS the XBOOTLDR
partition Type UUID to have barebox automatically look for the bootloader
spec entries there.

> 3. We would like to manage our devices' non-volatile storage with LVM,
>    and not be bound to a fixed partition table. This will give us more
>    flexibility in growing our image, efficiently having images of
>    varying sizes installed, etc.

That sounds very useful.

> Therefore, our plan is (roughly):
> 
> 1. Add dm-verity support
> 2. Add dm-verity root-hash-signature verification support
> 
> With that, we can securely extract kernel+DTB from our filesystem
> without having to sign them individually.

Many embedded systems shipping with barebox right now employ the bootloader
spec based way of booting and switching to a verified boot chain means
abandoning all of that in favor of a FIT-Image-in-raw-partition model.

dm-verity support in barebox would be most useful to give users
a good migration path.

Not to start bikeshedding already while still going through the cover
letter, but just to write it down: barebox can already fix up root=
parameters optionally depending on the boot medium and it would make
sense for barebox to use that to pass the dm-verity root hash along
as to avoid a mix-and-match attack that shows barebox and the kernel
different dm-verity rootfs and thereby mix kernels with rootfs that
were not meant to be used in that combination.
In this case, barebox would be the only component caring for the
signed root hash in the image.

> 3. Add basic LVM support, no RAID or anything, just basic (linear)
>    logical volumes.
> 
> This will allow us to install multiple versions of Infix on individual
> logical volumes, which Barebox can then find and boot from.

Ack.

> 4. Add high-level helpers for working with DPS disks and DDI images.
> 
> I really like the Linux Userspace API Group's thinking around
> Discoverable Partitions Specification (DPS) and Discoverable Disk
> Images (DDI). I think it would be great if Barebox had knowledge about
> these patterns, and could automatically set up the dm-verity
> configuration for a partition when available, for example.

I am not familiar with what they specified with regard to verity and
will have to read up on that. I know of this PR who is not going
anywhere right now for veritysetup, but I haven't read through it myself:
https://gitlab.com/cryptsetup/cryptsetup/-/merge_requests/738

I believe Marco (Cc'd) did, so maybe he has an opinion.

Generally speaking, whether DDI or veritysetup, if there exists a scheme
to put a signed hash somewhere discoverable and it's adopted by some
widely used tool, barebox should not unnecessarily reinvent the wheel.

As Sascha put it, stuff should just work.

> My hope is that this plan sparks some ideas and reflections. If so, I
> would love to hear them. If not, sorry for the wall of text :)

Thanks for taking the time and the good timing. I was meaning to use
the time writing this mails to cut down on some of the slides[3] for a second
talk at the Linux Security Summit today, but now they are getting more.
At least the talk is right before a break :)

[1]: https://osseu2025.sched.com/event/25VqL
[2]: https://osseu2025.sched.com/event/25VwO
[3]: https://lsseu2025.sched.com/event/25GEc

Cheers,
Ahmad


> 
> 
> [1]: https://github.com/kernelkit/infix/
> 
> Tobias Waldekranz (5):
>   string: add strtok/strtokv
>   dm: Add initial device mapper infrastructure
>   dm: linear: Add linear target
>   test: self: dm: Add test of linear target
>   commands: dmsetup: Basic command set for dm device management
> 
>  commands/Kconfig             |  14 ++
>  commands/Makefile            |   1 +
>  commands/dmsetup.c           | 145 +++++++++++++
>  drivers/block/Kconfig        |   2 +
>  drivers/block/Makefile       |   1 +
>  drivers/block/dm/Kconfig     |  14 ++
>  drivers/block/dm/Makefile    |   3 +
>  drivers/block/dm/dm-core.c   | 393 +++++++++++++++++++++++++++++++++++
>  drivers/block/dm/dm-linear.c | 123 +++++++++++
>  drivers/block/dm/dm-target.h |  39 ++++
>  include/dm.h                 |  16 ++
>  include/string.h             |   2 +
>  lib/string.c                 |  66 ++++++
>  test/self/Kconfig            |   7 +
>  test/self/Makefile           |   1 +
>  test/self/dm.c               | 159 ++++++++++++++
>  16 files changed, 986 insertions(+)
>  create mode 100644 commands/dmsetup.c
>  create mode 100644 drivers/block/dm/Kconfig
>  create mode 100644 drivers/block/dm/Makefile
>  create mode 100644 drivers/block/dm/dm-core.c
>  create mode 100644 drivers/block/dm/dm-linear.c
>  create mode 100644 drivers/block/dm/dm-target.h
>  create mode 100644 include/dm.h
>  create mode 100644 test/self/dm.c
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


