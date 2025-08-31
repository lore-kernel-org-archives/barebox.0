Delivery-date: Sun, 31 Aug 2025 09:49:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uscoc-006Thi-1h
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 09:49:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uscoa-0006Gd-NW
	for lore@pengutronix.de; Sun, 31 Aug 2025 09:49:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RI/vz0w+ldwyX4JHkKdgHTlHSpmPCTPeaMOS1hJdIU4=; b=1CfaoeP3krYqWD3tgVhegqNfIN
	wi501HOie4jTxpCJmaChIAt/UXWj6mhejSezIMJ/KZq2udGlosaJqddP/dwfr76E2t14MdIDegUMd
	CECd1WseTFJIOrYs3sRqORr8Ey2EpGSgBr6I1D2iPZER5Z2IeoKnjzPWuEYHqLgPl/YyDEYnkTob+
	Q8MBS/TgAsgEbaru5F0BMeC/dMNZ3HC3Lh7ZL9AcujeuGqtluWAKA0fwPn9HFd4OLEyw0eO0/Og0i
	OU2q5yOPm4saMVZ5RwMeuHUae26msNM340CSRzVZmv2rDLPGFwS2EfkZdbaNBCV4amzVYbhw+z5iR
	tTRYS7Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uscnx-00000009sug-1KGg;
	Sun, 31 Aug 2025 07:48:49 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uscnt-00000009su4-3KbS
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 07:48:47 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-55f7b6e4145so11994e87.1
        for <barebox@lists.infradead.org>; Sun, 31 Aug 2025 00:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756626524; x=1757231324; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=RI/vz0w+ldwyX4JHkKdgHTlHSpmPCTPeaMOS1hJdIU4=;
        b=K1xo2Em1+EOuOYT+t4zJE4y6Le72InojeXtRqc+iaTgZh+d/uyPeKALlLYw6BOzRIL
         oiqfI7HOJsOzn0TfQViyOkUyEkENv5dvZwTzClZ0+ChRXPCGSGn9jR12D42j9Nio9WdK
         jbb9gnh3uN9H5pPSZU40dYizyJruiWCwS6hFXDsZ+woStqMlzHwmMYQYHFBm6iNwwbli
         wAQU7aKvZnc1U/EDxSN3WxYvHVlMk2xIWFP28eTEhkHVgrr/PpgS05ikeQY0oDGDpH0V
         6MBR7ZfKL8PywhuO0HdiNiGguPujY9346o7p5mNnr3P3XFv8AXWofOmFXvYjDWcqjfJ9
         onXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756626524; x=1757231324;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RI/vz0w+ldwyX4JHkKdgHTlHSpmPCTPeaMOS1hJdIU4=;
        b=Dgzd+z9V8pOLXTUKyy5Uqmm/bkBBDLTmZvWLBEy4dgaU0Fc4CqIgcFemhZPBDpgmAI
         gbCoY87j57Km2adsiSRHpJ6rgCJG0nJkV0EY4ddC76XKXmo+m24dB+jJLWTSQXyhckhZ
         4dxHSDjmsrKigLWs7I34+FVCnx+iYjSVYgpGXnX2nBc8j41t7U4x23yBcE6gf2T0ffiH
         /G/LyLpYLsBzSYvsthuFukAESpP6OgiJyEufSOOHxyCm27KfaRVagWYhOJDZxsGXtc3p
         0ZCA3bOXXkZzY8TA6EcqUvdcueKhXfBWPpewkH9UYI3X2K7RVg+FcDacZo5bKo+m9Bdf
         rzrw==
X-Forwarded-Encrypted: i=1; AJvYcCWIyOnOJ9cB7/RX4q6GpEmSr/YHccq24ml0sLfbPRnXBVWj2KRVNO7b6q7mf11JR1xPF5S1kKSQ@lists.infradead.org
X-Gm-Message-State: AOJu0Yynklhgij+bkpELCAlYsqWrP18ezy+52365VP7E3lh5nFW1LuEt
	eYyMkIFwDbV0o8kry7de+ja1SvJ42Fu1J4G1qx7YHH9KliE3FTvggmnmV/0SBcBmhDE=
X-Gm-Gg: ASbGnctpnz53Al2OljnrbJwFw3fLHuf4ChqGF0Xk9+gfhLLER+UeX2QypqyeyMciUjW
	HwBE5CXIwgk2eLAdVuRvGmZt7O4cffi3ELnzunc3tJoSgTnogxG0I+V/Y53JIfevtr0G00Hzu2x
	Fpo7MTALz4RoxOgXXK+GUMtr5cFjIKm9Ur7vvrsZlmoU0IGY5ITnJh+HHX9ITm+GgETofugeRuO
	y9yevBjF9gUxy53A7LAIyr5vQM8jfV9RDr2rbQWANHwGjsyuP1qduYxz98jN64nxQ5cXVczEvDp
	VPKaaCCczKhjsll5pJTiYzgxTR57HczfuZB8aarwzxqZ7/ea8dloKTN7VLqqwVfSnynUwCzlRC8
	Wx8rBiLpB7Z8agzBQUcfPlZ4hLQ3F07J7WG+RXZaUqJch9ptbM//x3r51tBcaBtv5fg==
X-Google-Smtp-Source: AGHT+IH5j7V5tX/Eem1hApBuYMnqLKrtJnD4BsARVFnWMugVmaCd8ZVln3G5MRVLqD4w81rLXcmTlg==
X-Received: by 2002:a05:6512:12c9:b0:55f:5428:eb72 with SMTP id 2adb3069b0e04-55f708ec77fmr922711e87.35.1756626523807;
        Sun, 31 Aug 2025 00:48:43 -0700 (PDT)
Received: from wkz-x13 (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f767827a0sm485572e87.130.2025.08.31.00.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 00:48:43 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>, anis chali <chalianis1@gmail.com>, Marco Felsch
 <m.felsch@pengutronix.de>
In-Reply-To: <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
Date: Sun, 31 Aug 2025 09:48:42 +0200
Message-ID: <87frd83p9h.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_004845_843469_BD242714 
X-CRM114-Status: GOOD (  76.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On fre, aug 29, 2025 at 13:24, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hi Tobias,
>
> On 28.08.25 17:05, Tobias Waldekranz wrote:
>> Start work on adding a device mapper that is compatible with the
>> corresponding subsystem in Linux.
>
> I haven't go through the patches, but I read this far and I am hyped!

Let's hope the code can live up to the hype :)

> Both Richard (Cc'd) and myself held talks[1][2] this week at ELC-E in
> Amsterdam lamenting the current state of vulnerabilities affecting the
> file systems and not having dm-verity in the bootloader stack to
> counteract this.

Interesting, I'll have to catch the videos once they are available.

> It's thus really cool to see you have been working not talking. :D
>
> I will check this out more thoroughly next week.
>
>> This is the foundation of several higher level abstractions, for
>> example:
>> 
>> - LVM: Linux Volume manager. Dynamically allocates logical volumes
>>   from one or more storage devices, manages RAID arrays, etc.
>> 
>> - LUKS: Linux Unified Key Setup. Transparent disk
>>   encryption/decryption.
>> 
>> - dm-verity: Transparent integrity checking of block devices.
>> 
>> This is part of an exploratory project for investigating how we could
>> boot Infix[1] in a more platform-independent way. I.e., my intention
>> is to eventually add support for some of the features mentioned above,
>> assuming we don't hit any major road blocks. The rest of this letter
>> just gives context for how we got here and where we would like to take
>> Barebox. If that is not interesting, feel free to stop reading here :)
>> 
>> Our idea is to relegate U-Boot to serve only as a UEFI firmware on the
>> platforms where we can't escape it, and then do most of our boot logic
>> in Barebox instead. Primarily we want to do this for two reasons:
>> 
>> 1. Being able to ship barebox as an EFI app means we can use the same
>>    boot logic on x86 machines as we to on everything else.
>
> I have for years been working on an EFI loader implementation for barebox.
> It can boot Fedora and Debian (both OS and CDROM installer) fine on ARM64
> and have gotten lost in the weeds doing the same for ARM32. It works there
> with the most recent kernel, but not what's in Debian Trixie and I have yet
> to find out what is the difference.
>
> I hope to resume this work in the coming months. I know this doesn't address
> the issue of barebox not supporting as wide a hardware range as U-Boot, but
> I mention this to explain where the EFI payload support for ARM is coming from:
>
> The x86 EFI payload support in barebox has reliably been used under a number of
> EFI implementation in different products over the years.
>
> The ARM EFI payload support was started by me dog fooding my barebox-on-ARM
> EFI loader work, so it still needs some more work to be usable as bootloader in
> its own right.
>
> My focus so far was more on getting it to run under all of U-Boot, Tianocore and
> of course barebox to inform the way I implement the EFI loader. (Admittedly,
> I went a bit overboard, e.g., implementing directory fds instead of just doing path
> normalization/resolution inside EFI, but it looks really nifty now!)
>
> Fortunately, Anis (Cc'd) is right now working on exactly the use case
> of filling out the missing pieces for using barebox as EFI payload on ARM and has
> already submitted patches bringing this closer to completion.

Thanks for the background. Yeah, once I figured out I needed
CONFIG_COMPILE_TEST to build for aarch64 I got the sense that there was
still work to be done there :) That's alright though, I'm skating to
where the puck will be.

>> 2. Barebox is a much higher quality code base to work in than
>>    U-Boot. I'm sorry, but it just is.
>> 
>> Barebox would thus take the place occupied by systemd-boot in many
>> distro setups. So why not go with systemd-boot?
>
> Sidenote: Something that been irking me for ages is the over-reliance
> on FAT in systemd-boot. Could the FAT on a file system level break
> by inopportune power cuts? We go to great lengths with barebox-state
> and redundant buckets on raw partitions to avoid this and it leaves
> me asking: Was I wrong to mistrust FAT or is a sudden power cut during
> file system write operations not as much a concern for their users?

This has been bothering me too, and AFAIK the UEFI spec does not
describe any way of defining a redundant ESP either?

> I hope someone (maybe me instead of talking) should do fault injection
> in QEMU or using kernel APIs and see how broken it can get.

That would be great. Doing it at the VM layer seems very hard, at least
if you want something deterministic. In the kernel though, it should be
easier to know when a filesystem is in an inconsistent state, and inject
the errors at that point.

>> 1. Infix does not run systemd as PID 1, so reusing their bootloader is
>>    awkward.
>> 
>> 2. Infix ships as a single immutable filesystem image, including
>>    kernel, DTBs, etc. So we want to extract these files from the
>>    filesystem before booting the kernel. This is not supported by
>>    systemd-boot, AFAIK - all boot files must live on the ESP.
>
> I don't want to talk you out of using barebox of course, but I believe

Not happening! ;)

> they also support XBOOTLDR partitions? At least in barebox, you should
> be able to just assign the rootfs partition of the Infix OS the XBOOTLDR
> partition Type UUID to have barebox automatically look for the bootloader
> spec entries there.

They do support that, yes. However, but that would mean that we could
not use the DPS/DDI partition types that would allow for discovery of
verity data/signature etc.

>> 3. We would like to manage our devices' non-volatile storage with LVM,
>>    and not be bound to a fixed partition table. This will give us more
>>    flexibility in growing our image, efficiently having images of
>>    varying sizes installed, etc.
>
> That sounds very useful.
>
>> Therefore, our plan is (roughly):
>> 
>> 1. Add dm-verity support
>> 2. Add dm-verity root-hash-signature verification support
>> 
>> With that, we can securely extract kernel+DTB from our filesystem
>> without having to sign them individually.
>
> Many embedded systems shipping with barebox right now employ the bootloader
> spec based way of booting and switching to a verified boot chain means
> abandoning all of that in favor of a FIT-Image-in-raw-partition model.
>
> dm-verity support in barebox would be most useful to give users
> a good migration path.

This is my plan forward as well. We're using the syslinux-flavor of the
same idea at the moment. I like barebox's relaxation of the standard to
allow for locating boot entries outside of ESP/XBOOTLDR, without which
we would be back at the split-rootfs-and-kernel problem. Have you
thought about making this case to the UAPI group to amend the spec?

> Not to start bikeshedding already while still going through the cover
> letter, but just to write it down: barebox can already fix up root=
> parameters optionally depending on the boot medium and it would make
> sense for barebox to use that to pass the dm-verity root hash along
> as to avoid a mix-and-match attack that shows barebox and the kernel
> different dm-verity rootfs and thereby mix kernels with rootfs that
> were not meant to be used in that combination.
> In this case, barebox would be the only component caring for the
> signed root hash in the image.

Yeah I noticed that, _very_ useful. For Infix, if we end up going with
LVM, I suspect we won't be able to send all of that info along with the
commandline, and will end up needing to figure that out (again) in an
initramfs - but for most cases I think it would work really well!

>> 3. Add basic LVM support, no RAID or anything, just basic (linear)
>>    logical volumes.
>> 
>> This will allow us to install multiple versions of Infix on individual
>> logical volumes, which Barebox can then find and boot from.
>
> Ack.
>
>> 4. Add high-level helpers for working with DPS disks and DDI images.
>> 
>> I really like the Linux Userspace API Group's thinking around
>> Discoverable Partitions Specification (DPS) and Discoverable Disk
>> Images (DDI). I think it would be great if Barebox had knowledge about
>> these patterns, and could automatically set up the dm-verity
>> configuration for a partition when available, for example.
>
> I am not familiar with what they specified with regard to verity and
> will have to read up on that. I know of this PR who is not going
> anywhere right now for veritysetup, but I haven't read through it myself:
> https://gitlab.com/cryptsetup/cryptsetup/-/merge_requests/738
>
> I believe Marco (Cc'd) did, so maybe he has an opinion.
>
> Generally speaking, whether DDI or veritysetup, if there exists a scheme
> to put a signed hash somewhere discoverable and it's adopted by some
> widely used tool, barebox should not unnecessarily reinvent the wheel.

Exactly. From what I understand, systemd already supports automatically
sourcing the signature from a partition with the ID specified in DPS. So
I don't see them switching from that to something else (Poettering
himself seems quite involved with all UAPI specs).

> As Sascha put it, stuff should just work.
>
>> My hope is that this plan sparks some ideas and reflections. If so, I
>> would love to hear them. If not, sorry for the wall of text :)
>
> Thanks for taking the time and the good timing. I was meaning to use
> the time writing this mails to cut down on some of the slides[3] for a second
> talk at the Linux Security Summit today, but now they are getting more.
> At least the talk is right before a break :)

Thanks for the shout-out! :)

> [1]: https://osseu2025.sched.com/event/25VqL
> [2]: https://osseu2025.sched.com/event/25VwO
> [3]: https://lsseu2025.sched.com/event/25GEc
>
> Cheers,
> Ahmad
>
>
>> 
>> 
>> [1]: https://github.com/kernelkit/infix/
>> 
>> Tobias Waldekranz (5):
>>   string: add strtok/strtokv
>>   dm: Add initial device mapper infrastructure
>>   dm: linear: Add linear target
>>   test: self: dm: Add test of linear target
>>   commands: dmsetup: Basic command set for dm device management
>> 
>>  commands/Kconfig             |  14 ++
>>  commands/Makefile            |   1 +
>>  commands/dmsetup.c           | 145 +++++++++++++
>>  drivers/block/Kconfig        |   2 +
>>  drivers/block/Makefile       |   1 +
>>  drivers/block/dm/Kconfig     |  14 ++
>>  drivers/block/dm/Makefile    |   3 +
>>  drivers/block/dm/dm-core.c   | 393 +++++++++++++++++++++++++++++++++++
>>  drivers/block/dm/dm-linear.c | 123 +++++++++++
>>  drivers/block/dm/dm-target.h |  39 ++++
>>  include/dm.h                 |  16 ++
>>  include/string.h             |   2 +
>>  lib/string.c                 |  66 ++++++
>>  test/self/Kconfig            |   7 +
>>  test/self/Makefile           |   1 +
>>  test/self/dm.c               | 159 ++++++++++++++
>>  16 files changed, 986 insertions(+)
>>  create mode 100644 commands/dmsetup.c
>>  create mode 100644 drivers/block/dm/Kconfig
>>  create mode 100644 drivers/block/dm/Makefile
>>  create mode 100644 drivers/block/dm/dm-core.c
>>  create mode 100644 drivers/block/dm/dm-linear.c
>>  create mode 100644 drivers/block/dm/dm-target.h
>>  create mode 100644 include/dm.h
>>  create mode 100644 test/self/dm.c
>> 
>
>
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


