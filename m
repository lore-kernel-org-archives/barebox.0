Delivery-date: Sun, 31 Aug 2025 09:49:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uscob-006ThO-10
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 09:49:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uscoZ-0006Fv-R4
	for lore@pengutronix.de; Sun, 31 Aug 2025 09:49:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WH5sId2UeKsHlyV0STA/+Vb87hc/0X9OV8qVTB0OiuY=; b=1EBeINhO3+HRHDH1VyeXAwa2EM
	TrERlvnANGmdhj8C98vV9UUAVt0kC4539c7YbKWL0LKAsC3R110Sna/pl2Xh7iV+Kuk5NV50zpJXX
	9Jb5KNXEVifn8H6xYf8SCTKy0HndPgIjLorH3VWteRIvIDgRqNGU9yK3tTU4sTlaqSyGihwvcDsbK
	p4ZUeo2UhbOuSnvA1WJ3wDAH7bMebK6/867kq3dVVHxgdDcwpMkKd+GOhdmoxaamFCumj9WBT58UJ
	RXJAzYp1tC8RF1bviC/74S2P0qHMOQu/Jn4JsuSMxL6CCwe67oKacja1IleNklTf8ebcC259pkuKG
	RW0JqbEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uscnn-00000009stU-38ZD;
	Sun, 31 Aug 2025 07:48:39 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uscnl-00000009st3-0wqA
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 07:48:38 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-336cee72f40so6986441fa.2
        for <barebox@lists.infradead.org>; Sun, 31 Aug 2025 00:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756626515; x=1757231315; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=WH5sId2UeKsHlyV0STA/+Vb87hc/0X9OV8qVTB0OiuY=;
        b=J7I/eulxRDa4CE2FHNpYsvgFUgjS+T5DvzMjim2/UrQgK9ktY1NYcodJ4As5HWXZmY
         2vRYXIZT9qw/44dEjE+Xffen+kTuzK4xNbtKyBKQytpMUs52JZJXmhuMaIuVqahao/yp
         q+JXTx+JmxzfF57d98WX5rvXXYn0EDDoIdGtuz7lZXTeIVaYjQXqtBlWsZkt1LTixF0k
         TMlXYCZkYx45ApyB7sia569oDNgvZhCohcZHxfJhRwzwdPe+7GKsIAIeUapISCngQi8t
         Wy3u00VmtTODkzBXjfCQ6yAHTNlNKZGkBcZfuhXQzlBDWCKD8ifyKEouNCVcK0JwsNUf
         J2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756626515; x=1757231315;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WH5sId2UeKsHlyV0STA/+Vb87hc/0X9OV8qVTB0OiuY=;
        b=oDISlG3qJ+LdnMEQ7KdUVMhE2RHRSgZJ6FajAy7p/FC0ICjRwHyDANOfeDHWksm9Al
         3MvCHjRDxvJgiTqm6AzJQRqypSf7Xg6StahxprQHT1eWcrt364QqSw4CELeMyJocOjkX
         Ebi0LO8IxEuRsFyqhhLm7bSkLaQEtoVUuSrKJoAU1dgZbeeLl5HXeyQRGATXDfYlgfOH
         sTHywqk58h5hCfHtGb95SYYU8EZg5cqysxSOyRP1v1CddijYaMG369lrb/tut0FtuWQP
         GkcLfOPCgDAppJWNIFMurhdgS7nolrjzLOzINrHIKzMLfwHn1vRtm8ZqVDV8ETVWtjeW
         lPVw==
X-Gm-Message-State: AOJu0YwrfhGxpGQ0NI4KaaGbb2a2UYPN8GiJEnIB3bT2lG2K5JfZOaVi
	QMpS80a9rIJZj8Z73ChpD9kzEvyE2LrU/kJ3Hz++ICnxkYI+Lw0vvjmVzhLnnmpYCrPZgYyyyB0
	t/462
X-Gm-Gg: ASbGncu6wseUVK3oo38bDpSI8BRFReItTMgAsKOpoNwkICN5/rlifeOqLGtSqenO7Ig
	GLBMwc7PUiO2UQvdciZOZUFUjpG2Yo0kJJ/WOkfkYg9veY7y0nMZz4GE6DaWEGQojcTAVn66NHG
	rlsSACQk8CLY4qd9z4XbNGAJd7B4njUELyKNEuHGxgmmDeCidaPUYVtoEuwr8OiLjB4xTUPtmsn
	Gm0E0otjF5WZIU4Ut4pvfCCs0fo4ME/YnpBG1R+nSqboKs7czUT0EKFssLxTAGvKUZVTgVRAd92
	708rQ0QkVG6AJyg1R+2fsRX2wdTeCmEPhvm3ubUiEPl/WAs1DrcFi8xFX673ebD5o4U5C2ufln6
	rtbJny0+8GGPSQr9JHF9TB77Nxx1jddChxqzStoRmtbIzOdxHIRBlrz3e/il/Zz6qxg==
X-Google-Smtp-Source: AGHT+IEHkVJ4+ZamOXA/kMUJLB60qCQi7ejcsClOBAgfzaDUzHwa9OJYCKVfmP7yS75zxpf47MD2Dg==
X-Received: by 2002:a05:651c:1119:b0:336:bb9c:d392 with SMTP id 38308e7fff4ca-336ca90366fmr7436421fa.9.1756626514436;
        Sun, 31 Aug 2025 00:48:34 -0700 (PDT)
Received: from wkz-x13 (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-336d0e3f3absm7352841fa.37.2025.08.31.00.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 00:48:33 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <aLFk86Wk1uSR0JQl@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <aLFk86Wk1uSR0JQl@pengutronix.de>
Date: Sun, 31 Aug 2025 09:48:32 +0200
Message-ID: <87h5xo3p9r.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_004837_505033_F2251C38 
X-CRM114-Status: GOOD (  36.25  )
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

On fre, aug 29, 2025 at 10:29, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Tobias,
>
> On Thu, Aug 28, 2025 at 05:05:25PM +0200, Tobias Waldekranz wrote:
>> Start work on adding a device mapper that is compatible with the
>> corresponding subsystem in Linux.
>> 
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
>
> That's great stuff. We are also interested especially in dm-verity as
> that would allow us to get rid of separate partitions for the Kernel
> image and maybe even the FIT image format we currently use whenever we
> need signed Kernel images.

We are sort of in the same boat. We wrap our rootfs in an FIT header,
just because that is the only format U-Boot knows how to verify. After
verification, we strip off the header, mount it, and then sysboot from
it, with the kernel and DTBs in /boot on the squash.

Just shipping the fs with verity data (+ possibly FEC, in the future)
and a signature would be _so_ much nicer.

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
>> 
>> 2. Barebox is a much higher quality code base to work in than
>>    U-Boot. I'm sorry, but it just is.
>> 
>> Barebox would thus take the place occupied by systemd-boot in many
>> distro setups. So why not go with systemd-boot?
>> 
>> 1. Infix does not run systemd as PID 1, so reusing their bootloader is
>>    awkward.
>> 
>> 2. Infix ships as a single immutable filesystem image, including
>>    kernel, DTBs, etc. So we want to extract these files from the
>>    filesystem before booting the kernel. This is not supported by
>>    systemd-boot, AFAIK - all boot files must live on the ESP.
>> 
>> 3. We would like to manage our devices' non-volatile storage with LVM,
>>    and not be bound to a fixed partition table. This will give us more
>>    flexibility in growing our image, efficiently having images of
>>    varying sizes installed, etc.
>> 
>> Therefore, our plan is (roughly):
>> 
>> 1. Add dm-verity support
>> 2. Add dm-verity root-hash-signature verification support
>> 
>> With that, we can securely extract kernel+DTB from our filesystem
>> without having to sign them individually.
>
> Ok, it seems we have the same goals ;)

Very glad to hear it! :)

>> 
>> 3. Add basic LVM support, no RAID or anything, just basic (linear)
>>    logical volumes.
>> 
>> This will allow us to install multiple versions of Infix on individual
>> logical volumes, which Barebox can then find and boot from.
>> 
>> 4. Add high-level helpers for working with DPS disks and DDI images.
>> 
>> I really like the Linux Userspace API Group's thinking around
>> Discoverable Partitions Specification (DPS) and Discoverable Disk
>> Images (DDI). I think it would be great if Barebox had knowledge about
>> these patterns, and could automatically set up the dm-verity
>> configuration for a partition when available, for example.
>
> I haven't looked into this yet, but it sounds good. It's a good thing
> when barebox can just do the right thing without much configuration.
>
>> 
>> My hope is that this plan sparks some ideas and reflections. If so, I
>> would love to hear them. If not, sorry for the wall of text :)
>
> Well I am very open for adding DM and dm-verity support to barebox. We
> would likely have done it anyway at some point, but that could have
> taken some time.

Cool! I did a toy implementation in Python yesterday, just to convince
myself I understood how it works, and it was actually very straight
forward. So if this series is eventually merged, I hope to follow up
with an implementation of dm-verity pretty quickly.

> Sascha
>
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


