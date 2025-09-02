Delivery-date: Tue, 02 Sep 2025 21:10:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWOX-007NXU-37
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:10:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWOW-0005wH-7b
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:10:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wGl6lQbCnQrKXHqDboB03M5cgBayk4scAAXh2hbcKz0=; b=m7gtdmqFqmJtdBO23Ba1YI3OEM
	LYJE0MTEt05LEk1QmvaQuXP0qcxv3ilmj8v5H0GVmi0ghcLOef55S5NL+EU+YSSvv0ehYAfXCHks/
	7MSGrs88ykrHbzPqUxJ73npt00U+yQEPuBJ5WvDnT/I8yI2XjIq34gsRKqZv6B3+U7p/8IjCw2SAL
	+5rnrBahTR/kKFP5wwnpCOsbMMDkUS6/PMOa6GanE4DtXUp5ROeJkHKbATAMhRjO1GZwa2U1QGtXW
	zJeZRp0BK3PBl/GzoYoYHbk0s+D+yG628Uo8tvIwwsSR3dd+0ozFsv3b/RdUbmtRr/oM5V7wvYuht
	GJCbth5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWNb-00000001Z7e-0CGp;
	Tue, 02 Sep 2025 19:09:19 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQdT-0000000HUQn-0yOl
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 13:01:20 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-55f646b1db8so5070201e87.0
        for <barebox@lists.infradead.org>; Tue, 02 Sep 2025 06:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756818077; x=1757422877; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=wGl6lQbCnQrKXHqDboB03M5cgBayk4scAAXh2hbcKz0=;
        b=v45n/A7pwttTtDA5vD8cvyCN725Bar8uN0g+uyGr7bE1JQpdLAGeAv39RZjEh/9nZN
         coJWSCrEORI80p6pIDO7XsOSmrjjaHsXn5fTVJUF1WBVSHD/umKmOjuxdYd2eKFtyyTW
         7S2gNO1VU8nkPMctW+NnFGfu7PMkuRyP/5UFruLiQnWBVwJG2J00IRtx4XWkhUNH/6Hr
         dg5OjBfkwvnNOymrU7xc8GMtzgnIIqqXt7pifQk1F+SuuTtZtfqSfCr8gYfHjjmH3Wtu
         sOoo+m0+DBGGZsge62CufjIuoSM89NEz9Ka/3Cz4uxDvaiwgDXoWa9d+DT+VT78BPzTF
         Za5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756818077; x=1757422877;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wGl6lQbCnQrKXHqDboB03M5cgBayk4scAAXh2hbcKz0=;
        b=gO6/vs/mFjJbtYYetSTFga9Y9SfhPF8AflEwAM0/op7tOw/k0RKRdpE/WnKBeEcSVs
         gx/xi/jFsNzSr/wQs+UdRekxAV/vQtpTDyXFTZ2ViVGxudD/ypHmrJHNfo9x/SSGtoe3
         TLyjE052QbOvl1jPCY97VZTx17RX9iPj4gsGwl+c9J+i3iise64K4paTc6GcISba/kDD
         M1nDmTRTnFIWOPPQ3REeo38+pdi+5Ot7yAerl1yqjNemN0K5R8pVNwFkSLFIxTH4gKoX
         0pJ5YH6Q/WJPInCQQVTJrNM7mkOpQQcsAsJvdJ6zzAkwVD5BsawiJLe4f+e+CsSG/9au
         l3XA==
X-Forwarded-Encrypted: i=1; AJvYcCUAMvxRydC/gBmjQL6psBx2+lAtyXsbxORJkfMLXHxFqq7P2fxAGNrcRIG55/dngapQQFgJ0WEr@lists.infradead.org
X-Gm-Message-State: AOJu0YxKx4878MvO8+dmVYCZIp3hzRHCqVVeDCTBxxKYbd2sL+Tgem0n
	s2RnPAqEynvu5KkmqmieXktvC2CkB77XkYdpqT73+6BtQQhwSZi8qqG5/8264TsqiqU=
X-Gm-Gg: ASbGncsbBJ+RkiNVkHzMUx5S3x33CsvsUq2oMRo1EpPus2bzSGa0LlUTXUDwyJkh8ZR
	qXRXIVuOvM0kQdpRpTWWwee1lEfJSniwEv6reITxAUJv3mP1nKh0MIQzgl/ceqdT47CrGwX67Rr
	FM9ySaTm0Y9wrDn/65vfH8CfUX8QwbS5qMUTWjDbt6hFXKKTp0nIFfdUZ7OcQUj6JLSmJv/7rAx
	u+ueOc3zYY2RK6c9hlU8KpXhK2mAT15dXCz/lf3O+fiB0YjgxR+UkITyEAAx8cyGERflkPNRUaF
	Vo8vBIIbmK0rAmlpG54pVs4gYDxALnL5AY2eBn5/9bNlQ4Qhzifp/Ygc5qgi1mukK/traqGVdMc
	OI50E3ho+8sd3ES3TFkPXVzR6dNr/w9e57rEnlRvwZFCbbykzwMrU
X-Google-Smtp-Source: AGHT+IE90PyiBEoE6Adude5dEoff0OKVeGA52oX5Zhfh+0FJmzWJceHcsIAeyAw8hOUD7Cw+Sjd3yA==
X-Received: by 2002:a05:6512:3f28:b0:55b:9283:b590 with SMTP id 2adb3069b0e04-55f70983a86mr3516403e87.50.1756818077160;
        Tue, 02 Sep 2025 06:01:17 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560826d1279sm697431e87.25.2025.09.02.06.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 06:01:16 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Michael Olbrich <mol@pengutronix.de>, Richard Weinberger
 <richard@nod.at>, Marco Felsch <m.felsch@pengutronix.de>, anis chali
 <chalianis1@gmail.com>
In-Reply-To: <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
 <87frd83p9h.fsf@waldekranz.com>
 <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
Date: Tue, 02 Sep 2025 15:01:15 +0200
Message-ID: <878qix3t5w.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_060119_275017_BE084266 
X-CRM114-Status: GOOD (  55.66  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On tis, sep 02, 2025 at 11:03, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> On 8/31/25 9:48 AM, Tobias Waldekranz wrote:
>> On fre, aug 29, 2025 at 13:24, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>> On 28.08.25 17:05, Tobias Waldekranz wrote:
>>> Fortunately, Anis (Cc'd) is right now working on exactly the use case
>>> of filling out the missing pieces for using barebox as EFI payload on ARM and has
>>> already submitted patches bringing this closer to completion.
>> 
>> Thanks for the background. Yeah, once I figured out I needed
>> CONFIG_COMPILE_TEST to build for aarch64 I got the sense that there was
>> still work to be done there :) That's alright though, I'm skating to
>> where the puck will be.
>
> Great. I think it shapes up quite nicely right now.
>
>>> Sidenote: Something that been irking me for ages is the over-reliance
>>> on FAT in systemd-boot. Could the FAT on a file system level break
>>> by inopportune power cuts? We go to great lengths with barebox-state
>>> and redundant buckets on raw partitions to avoid this and it leaves
>>> me asking: Was I wrong to mistrust FAT or is a sudden power cut during
>>> file system write operations not as much a concern for their users?
>> 
>> This has been bothering me too, and AFAIK the UEFI spec does not
>> describe any way of defining a redundant ESP either?
>
> Not really, but depending on the tools you use, there are workarounds:
>
> - barebox skips partitions with the DPS_TYPE_FLAG_NO_AUTO flag.
> Currently only for blspec, but in future also when searching for ESP
>
> - RAUC supports a "boot-gpt-switch"[1] that "[changes] the GPT to switch
> the first GPT partition entry between the first and second halves of a
> region configured for that purpose"
>
> [1]:
> https://rauc.readthedocs.io/en/latest/advanced.html#update-bootloader-partition-in-gpt

Neat! We use RAUC in Infix, so I will definitely look into that.

>>> I hope someone (maybe me instead of talking) should do fault injection
>>> in QEMU or using kernel APIs and see how broken it can get.
>> 
>> That would be great. Doing it at the VM layer seems very hard, at least
>> if you want something deterministic. In the kernel though, it should be
>> easier to know when a filesystem is in an inconsistent state, and inject
>> the errors at that point.
>
> Ack.
>
>>> they also support XBOOTLDR partitions? At least in barebox, you should
>>> be able to just assign the rootfs partition of the Infix OS the XBOOTLDR
>>> partition Type UUID to have barebox automatically look for the bootloader
>>> spec entries there.
>> 
>> They do support that, yes. However, but that would mean that we could
>> not use the DPS/DDI partition types that would allow for discovery of
>> verity data/signature etc.
>
> I haven't read the spec in full, but after a discussion with Jan (Cc'd),
> we had an unanswered question about the root verity partition:
>
> "Contains dm-verity integrity hash data for the matching root partition.
> If this feature is used the partition UUID of the root partition should
> be the first 128 bits of the root hash of the dm-verity hash data, and
> the partition UUID of this dm-verity partition should be the final 128
> bits of it, so that the root partition and its Verity partition can be
> discovered easily, simply by specifying the root hash."
>
> Now a UUID is only 128 bits and the partition UUID is supposed to be
> unique, so splitting a 256 bit hash over two partitions UUIDs means that
> in an A/B setup, we can end up with duplicate partition UUIDs if the
> same update bundle is installed twice.
>
>   - A and B root partition are identical
>   - A and B verity super block are identical
>
> When updating this may prove to be problematic: The system will start up
> normally (partitions are identical), but when flashing the update, how
> would the updater easily find out which is the inactive partition that
> it should write to..?

That was a question I had as well. My conclusion, given how they think
about blspec entries only existing on ESP/XBOOTLDR with split
rootfs/kernel etc., is that they are not designing for the kinds of
systems that you and I typically target.

>> This is my plan forward as well. We're using the syslinux-flavor of the
>> same idea at the moment. I like barebox's relaxation of the standard to
>> allow for locating boot entries outside of ESP/XBOOTLDR, without which
>> we would be back at the split-rootfs-and-kernel problem. Have you
>> thought about making this case to the UAPI group to amend the spec?
>
> I tried to get linux-appendroot upstreamed as first step, but haven't
> been too successful so far:
> https://github.com/uapi-group/specifications/pull/136

Oh wow, the x86 is strong in this one.

Unfortunately I think this is in line with my hunch about the gamut of
systems on their radar not including our domain (embedded+immutable).

>> Yeah I noticed that, _very_ useful. For Infix, if we end up going with
>> LVM, I suspect we won't be able to send all of that info along with the
>> commandline, and will end up needing to figure that out (again) in an
>> initramfs - but for most cases I think it would work really well!
>
> Ah, didn't think of LVM. If mix-and-match is no problem for you, then
> doing it in the initramfs is a workable solution of course.

I definitely want to avoid mix-and-matching between kernel and
rootfs. My idea was that barebox could still pass the partition UUID and
the root hash to the kernel, then the (very small) initramfs would just:

1. Run some LVM probing to find and setup the volume with that UUID
2. Run verity setup on the it with the (already signature-checked) root
   hash
3. pivot_root

Maybe this is more trouble than its worth, still not sure.

I just seems strange to me that this is fairly common on setups with raw
flash (via UBI volumes), but for some reason it is never used (at least
to my knowledge) on systems with managed flash.

>>> Generally speaking, whether DDI or veritysetup, if there exists a scheme
>>> to put a signed hash somewhere discoverable and it's adopted by some
>>> widely used tool, barebox should not unnecessarily reinvent the wheel.
>> 
>> Exactly. From what I understand, systemd already supports automatically
>> sourcing the signature from a partition with the ID specified in DPS. So
>> I don't see them switching from that to something else (Poettering
>> himself seems quite involved with all UAPI specs).
>
> Ack.
>
>>> Thanks for taking the time and the good timing. I was meaning to use
>>> the time writing this mails to cut down on some of the slides[3] for a second
>>> talk at the Linux Security Summit today, but now they are getting more.
>>> At least the talk is right before a break :)
>> 
>> Thanks for the shout-out! :)
>
> You had me dig out WordArt just for this special announcement ;)

I k-n-o-w - instantly felt the urge to put on my old roller blades and
blast some eurodisco on my Walkman!

> Cheers,
> Ahmad
>
>> 
>>> [1]: https://osseu2025.sched.com/event/25VqL
>>> [2]: https://osseu2025.sched.com/event/25VwO
>>> [3]: https://lsseu2025.sched.com/event/25GEc
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>
>>>>
>>>>
>>>> [1]: https://github.com/kernelkit/infix/
>>>>
>>>> Tobias Waldekranz (5):
>>>>   string: add strtok/strtokv
>>>>   dm: Add initial device mapper infrastructure
>>>>   dm: linear: Add linear target
>>>>   test: self: dm: Add test of linear target
>>>>   commands: dmsetup: Basic command set for dm device management
>>>>
>>>>  commands/Kconfig             |  14 ++
>>>>  commands/Makefile            |   1 +
>>>>  commands/dmsetup.c           | 145 +++++++++++++
>>>>  drivers/block/Kconfig        |   2 +
>>>>  drivers/block/Makefile       |   1 +
>>>>  drivers/block/dm/Kconfig     |  14 ++
>>>>  drivers/block/dm/Makefile    |   3 +
>>>>  drivers/block/dm/dm-core.c   | 393 +++++++++++++++++++++++++++++++++++
>>>>  drivers/block/dm/dm-linear.c | 123 +++++++++++
>>>>  drivers/block/dm/dm-target.h |  39 ++++
>>>>  include/dm.h                 |  16 ++
>>>>  include/string.h             |   2 +
>>>>  lib/string.c                 |  66 ++++++
>>>>  test/self/Kconfig            |   7 +
>>>>  test/self/Makefile           |   1 +
>>>>  test/self/dm.c               | 159 ++++++++++++++
>>>>  16 files changed, 986 insertions(+)
>>>>  create mode 100644 commands/dmsetup.c
>>>>  create mode 100644 drivers/block/dm/Kconfig
>>>>  create mode 100644 drivers/block/dm/Makefile
>>>>  create mode 100644 drivers/block/dm/dm-core.c
>>>>  create mode 100644 drivers/block/dm/dm-linear.c
>>>>  create mode 100644 drivers/block/dm/dm-target.h
>>>>  create mode 100644 include/dm.h
>>>>  create mode 100644 test/self/dm.c
>>>>
>>>
>>>
>>> -- 
>>> Pengutronix e.K.                           |                             |
>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>> 
>
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


