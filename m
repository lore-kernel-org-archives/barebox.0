Delivery-date: Tue, 02 Sep 2025 14:30:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utQA2-007HGX-2V
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 14:30:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utQA1-0000Ow-FV
	for lore@pengutronix.de; Tue, 02 Sep 2025 14:30:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HlhCJFVowpGKfxMt3XrBC15ZAZhTroWzuC4VPEYkoRI=; b=lSdcj8O8eBLZCiFCSZi2L0AzeQ
	CeBYFgVmzxM1SwCkilGXP4vEDhMimJgOsNpu6U2Sen5e90kRYc81sfn5MDx3EqLpGBN0MNMzL+6Kp
	Ns+kr7qHLyYpyP4aMR9fwhC8cZrWi+A4lsqL1UvKXfQ/KPGk7DfpZGx4APQx1V4DPxyQFAq1RGoA4
	yj2EpmnyuT2H3bVwMScvnZU3wc8n2UZ6yJoxWbi9PIADv/+Pw5awdzGxt6WRjGb4iaD2Y2IBD7Lgs
	98gkq34IdB4X5ZXknwXhW/j3vY9n8gJADw1MHRu0C89xIOcsK54WviwpcjAqH3gm9CPUAuj/urbBv
	p1PzAUlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ9Q-0000000HHUY-1ez7;
	Tue, 02 Sep 2025 12:30:16 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNYi-0000000GSVk-0aSF
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 09:44:13 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-55f720ffe34so2959211e87.1
        for <barebox@lists.infradead.org>; Tue, 02 Sep 2025 02:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756806250; x=1757411050; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=HlhCJFVowpGKfxMt3XrBC15ZAZhTroWzuC4VPEYkoRI=;
        b=SSkp5y+Vw2Wf8hAl+0IL8ALkiYpix0IV/vEhdsSO/qVTFGVNIxkt5qpb+V92xXR1zP
         wyj3QpFFMKdTmwvmt/GAtTY9IC0lMXvX58bv4JdQZZddrq7pRO9P58v6Uk65qWsVr2/K
         QzWsOrZp8p1lDEiaKRWdsuFT/Lx0QxWObGsjPDEuI6mwwRDWHacUV+IkaXuh9rqxbX0t
         l2F+ybfJYyiBqPxZqpIgzssHbxTfVboWvUgu03QkHiLnjT/ewIzsAqhTZpWRSPkmI869
         Q268Mz6maukCC0mMwHKTAUB4oBBfHWrWQttAEThiUZlzoVs1ZwcloqFS6A+6b0cVE7WY
         S4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806250; x=1757411050;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HlhCJFVowpGKfxMt3XrBC15ZAZhTroWzuC4VPEYkoRI=;
        b=FiV2gTaP0kavLEaiNyoAhiK0NbAXzxgNivY2eZqNuTlZ/tf7a7NsfP8jKA7XdJy00O
         y65TE6e1iIatcftV10FCaPvq5ycqDdnEK38ckxSMilhyzrT28Nef7b3rD41zRgluE6Fa
         7oI7y+B0S3ssYX/D8SbBrfgBZwAbRNLbmkS0E9VxySDsHR3UAGAHBF7k+Ut2EIksP8X3
         /OgPigIX9lib9Urw4dM07f5RmqO92MbNJgwfWPKTv56MRS+D+VcFLZNOK+LeNnNaI7FN
         FK8j5hu/uZJ0BmAPuKQTKcbri2WhRuRgCOTNSoylZOhWp4q1fNuNNF4mCv6vV6A5/8fu
         0n2Q==
X-Gm-Message-State: AOJu0YzforfSLV4XyMSQ1m/cx69iKAA8kP+LccSF0HwDaYiWbaE/VGIM
	b9KQyWuPgdJ35Dt6UWnkaA9HHWY2FV0Sh+oD4UonPZYXc/0TOx97JgY7fpQXaPjUeOq7DS5gDfN
	NySfo
X-Gm-Gg: ASbGnctVXw/lB+jOuOcMQlWL9Rh7tiDLhnQJWmTxUNme7K+EpNy+N33X/5kx8yoaTOr
	dmvxz0Mw11/cSaa7rqsk7lkZJ85uj1f7vSLS7KECV3bjFWTFUTMIpC4MGnOgz7Juwv7UzDSZtnf
	99/gMsDJ35K+qOkthUQuYF9Zr/KidLUvesPccEO/N7Q9Qgv14HscGFDbEk1hNX8KkjE3dAp3mLT
	eGX2hMnYqK2c6diIu3r2gEtuYoystV1WKtngvOHfDmSRL4SSrCixx41FJYe/LdEROYQBXuoc2AV
	2qtmCHvTkLUJDPivpccG3xtQ16LE3eRNS79HwcyCY4x8zIDV91LIhMsbQ7pIYJ9rdMa61jTiabu
	Eaul79OPkLP4oCKunXp/7A4qpK5HixwacOHD6eM/+/E1uUsLngDaOy5iraeQDxTg=
X-Google-Smtp-Source: AGHT+IEGsADWgcz8vJT7uWqFrjCL48NEBU+92ZN/yI8tFH8d5OYW7xHKjobdGSHVjchSU/HBYHMDag==
X-Received: by 2002:a05:6512:3088:b0:55f:6c89:255a with SMTP id 2adb3069b0e04-55f6f7b9d12mr3345616e87.28.1756806249549;
        Tue, 02 Sep 2025 02:44:09 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560827a53bbsm560076e87.124.2025.09.02.02.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:44:08 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <7c59b735-a223-47a3-99ae-227617aee4fa@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <aLFk86Wk1uSR0JQl@pengutronix.de> <87h5xo3p9r.fsf@waldekranz.com>
 <7c59b735-a223-47a3-99ae-227617aee4fa@pengutronix.de>
Date: Tue, 02 Sep 2025 11:44:08 +0200
Message-ID: <87bjnt42af.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_024412_290466_792FA426 
X-CRM114-Status: GOOD (  33.50  )
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

On tis, sep 02, 2025 at 10:40, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hi,
>
> On 8/31/25 9:48 AM, Tobias Waldekranz wrote:
>> On fre, aug 29, 2025 at 10:29, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> We are sort of in the same boat. We wrap our rootfs in an FIT header,
>> just because that is the only format U-Boot knows how to verify. After
>> verification, we strip off the header, mount it, and then sysboot from
>> it, with the kernel and DTBs in /boot on the squash.
>> 
>> Just shipping the fs with verity data (+ possibly FEC, in the future)
>> and a signature would be _so_ much nicer.
>
> FEC with verity indeed sounds interesting. Apparently, it can go beyond
> fixing occasional bit flips on read to even recover completely lost
> blocks[1].

Yes, this is very exciting!

Today, we use a classic A/B partition scheme for redundancy, but I would
much rather have a setup where you install one or more versions of
Infix, and all versions are always "redundant" in that the image ships
with its own parity data.

For users I think this also makes more sense: rather than configuring a
boot order based on partitions, you specify which versions you want to
boot and in what order.

> For the latter case, someone will need to implement some "blkhealthd"
> that reads regularly and fixes up bit errors in the backing device.
> Would also mesh nicely with retention on the medium itself as it gives
> e.g. the eMMC a chance to correct ECC on infrequently used data before
> it's completely irrecoverable.
>
> [1]:
> https://android-developers.googleblog.com/2016/07/strictly-enforced-verified-boot-with.html
>
>>> Well I am very open for adding DM and dm-verity support to barebox. We
>>> would likely have done it anyway at some point, but that could have
>>> taken some time.
>> 
>> Cool! I did a toy implementation in Python yesterday, just to convince
>> myself I understood how it works, and it was actually very straight
>> forward. So if this series is eventually merged, I hope to follow up
>> with an implementation of dm-verity pretty quickly.
>
> Did you consider porting dm/dm-verity from the kernel instead and
> decided against it?

"Implmentation" was maybe being to generous to myself :)

It was more or less an exercise to figure out which subset of
dm-verity-target.c from the kernel that we need to extract to Barebox.

> I imagine there's a lot that would need to be dropped/adapted, but
> having the same general structure may prove useful in future when adding
> new device mapper targets. I can understand though, that for dm-verity
> it may turn out to be easier to reimplement the functionality (which is ok).

The I/O paths are very different, so the .map() method that targets
implement on the kernel side, based on a struct bio, felt a bit awkward
to replicate in Barebox, so I went for .read()/.write() instead, to map
cleaner to the existing block device interface. In general, the kernel
does lots of performance enhancing tricks with async I/O etc.

Basic device creation, based on a target table as the input, is the
same, with the same format as the kernel.

Target creation from an argument vector is also the same as in the
kernel. I chose to go with .create()/.destroy() over (at least to me
somewhat idiosyncratic) .ctr()/.dtr() - but I am happy to keep this
closer to the original, if you prefer.

Like in the kernel, each target reports its own status. I chose to start
with something simple here, rather than copying the kernel's many
different output variants etc.

> Cheers,
> Ahmad
>
>
>
>> 
>>> Sascha
>>>
>>> -- 
>>> Pengutronix e.K.                           |                             |
>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>> 
>> 
>
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


