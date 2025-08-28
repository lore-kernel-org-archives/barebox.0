Delivery-date: Thu, 28 Aug 2025 19:29:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRW-005WTW-1Z
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:29:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRU-0005tw-PK
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:29:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U6Q/aJXTAKLg8BtXjv7eZm15sgJUSsRugA5VHkfXzqA=; b=pW1i0LNdan5RbxElUJ6vL2PZeh
	O8m9H3b0vJAWBz4RBpBvwKvcwK3i/m2PXQtCY0ODJjhRcbHC/xK68mBiQ+C0CcczB4BRqqZU5v+gb
	mh9Jfr/zor63GB3H2958eo/ohd39dCgzzNGpT2pG/1pZui/ZPeiUuHD24cx42YjM11f4oozRud0Gv
	9aqolkv0AlW2KlwfSvyyncyNfV9jRoUDI6PSyuFzRDoJ8LNhe2B51t7Xfg0S71AWTFfmSxGt/ayLC
	TPWFaJO2RQmtQMkrCaV2PTv/CtDQtdpTdrQHoaEOuOPGYWhmDK1VQAhyVBcaSRJsgiJOvLJZ1OOnT
	3Yf/4+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgQv-00000002WZL-1N37;
	Thu, 28 Aug 2025 17:29:09 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ureDK-000000022g3-1VR4
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 15:06:59 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-61a8c134609so1398790a12.3
        for <barebox@lists.infradead.org>; Thu, 28 Aug 2025 08:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756393616; x=1756998416; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U6Q/aJXTAKLg8BtXjv7eZm15sgJUSsRugA5VHkfXzqA=;
        b=Hjn+2gU9SliyJOsxyxwmoq3SezPkS5gjJgVfcERvrIbGx8c2orBq+7pbkk5O2VGV42
         ZCO7BjLDyOjz39f7lPjoU5Z1YxleNReU5Cn8jFpEj8oOAV8sU89wnsktXb/D7AOrP4y1
         fwTxthQPuOPlrSpw05ySgu/zX24ZhMkzXP5c9ckdHD6nBY71oBVzzh6GXeWijsuqpHMo
         9ASKkIoPmwU6WwWE5RTBQZWhAjxRXuHOyPQzkTUsSpNWMMB/kV8BIyvZ5tYAr/EQuB1A
         kKab4NRDvq6i+Z2JwFjBto6MYJCeTeV5Nf+H4E/TL0HpLqYz2F7yyclYPdUp53Yhh4IO
         cQhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756393616; x=1756998416;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U6Q/aJXTAKLg8BtXjv7eZm15sgJUSsRugA5VHkfXzqA=;
        b=UYFR/w1oe4kONiOmw2/GhhIz1qBCWfjg4sWVNoAUmXnh3KZk2dAGEKY1LXqn6R1q72
         EpYEf7usha1G8puU0yO7gQKLLB2SHaXHMAbA18zt1XqZiIfnp/fkzBUWCxTF/kX6ElQT
         eGucutxgzESY+DNTQJ/hHxFFUXJOL/z+BSq2k47sjqTTwDi0KhvLNLASYjrBLcrXtk3k
         hIOztsu7KboC20NYHPlfBvhRlS2iHkRODRe63jsdtPf6tVjN79W0OC0U5Hw9m6CQT+30
         A8vxdHut7ruSvZDnvBpH0twILrR+XDa3fniXayy5UT26Xkge4IIUvXNclbmJpxXjgPhW
         5BKg==
X-Gm-Message-State: AOJu0YxAqdkzSnejCmkPMQ4a49VfwpfNZP1f/4SCf2AvzJnAvOrjHX1P
	joqgS/f8Tk/j3eai5FZxpIfyYWJ+6CgnU3gpUhC3LfhPu4CMCEzdgHlx4kHjCuAuMhw/CjwMr8f
	IZRUa
X-Gm-Gg: ASbGncsFSANIwTQ10hefHlE3p2PGqrAFx0H4icQsO1MTjvQpzqquAonab/NbePelj2P
	nw1C3Wr40bWRyefB1qbHg4DQ4y6bUJAvlWSDkBXwJ+ohXhWZEskphxWKP5Qg/yFwa5FH0DBgDEW
	vv9ewAfM1YyuNY1/aK9J6Z3Qw0A2AqYAAFsfRVRpU/N/dqynXv3JgdtxiOoL69IotqEgjlJ9vHi
	ouaeCa1BIdh6Qtn5i7z+SDpyDf+4OW7xQhor1ARQEtVHlCM5788hfQdcOEhiSi1WSJNn87l3lmz
	yOQUIYWdkqsRilZ9fURZZPU51+11ylbVbXomz50SEqFD2RUgmNuCZWGk+RyIMjjrGXSQxzGZBfG
	ZR1lnDUgiTYT6fAhzBPszSDWKhoOVrb66qx2Q3+q2zvHpneJ1ucEE5spDbDVyiBeiZ7bQr3F5mg
	cJ
X-Google-Smtp-Source: AGHT+IEFoWERmk+RvMV/fWZfHVWNk5AlvMTsrtmvKxzv7V38em9P1M3R5IQfSOnuEq9KhX6xmUDg2g==
X-Received: by 2002:a05:6402:5255:b0:61c:e2b4:88d2 with SMTP id 4fb4d7f45d1cf-61ce2b48c31mr1974999a12.7.1756393615834;
        Thu, 28 Aug 2025 08:06:55 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c78e49c90sm7371038a12.45.2025.08.28.08.06.55
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 08:06:55 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Aug 2025 17:05:25 +0200
Message-ID: <20250828150637.2222474-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_080658_484728_EBC0B9D9 
X-CRM114-Status: GOOD (  19.17  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Start work on adding a device mapper that is compatible with the
corresponding subsystem in Linux.

This is the foundation of several higher level abstractions, for
example:

- LVM: Linux Volume manager. Dynamically allocates logical volumes
  from one or more storage devices, manages RAID arrays, etc.

- LUKS: Linux Unified Key Setup. Transparent disk
  encryption/decryption.

- dm-verity: Transparent integrity checking of block devices.

This is part of an exploratory project for investigating how we could
boot Infix[1] in a more platform-independent way. I.e., my intention
is to eventually add support for some of the features mentioned above,
assuming we don't hit any major road blocks. The rest of this letter
just gives context for how we got here and where we would like to take
Barebox. If that is not interesting, feel free to stop reading here :)

Our idea is to relegate U-Boot to serve only as a UEFI firmware on the
platforms where we can't escape it, and then do most of our boot logic
in Barebox instead. Primarily we want to do this for two reasons:

1. Being able to ship barebox as an EFI app means we can use the same
   boot logic on x86 machines as we to on everything else.

2. Barebox is a much higher quality code base to work in than
   U-Boot. I'm sorry, but it just is.

Barebox would thus take the place occupied by systemd-boot in many
distro setups. So why not go with systemd-boot?

1. Infix does not run systemd as PID 1, so reusing their bootloader is
   awkward.

2. Infix ships as a single immutable filesystem image, including
   kernel, DTBs, etc. So we want to extract these files from the
   filesystem before booting the kernel. This is not supported by
   systemd-boot, AFAIK - all boot files must live on the ESP.

3. We would like to manage our devices' non-volatile storage with LVM,
   and not be bound to a fixed partition table. This will give us more
   flexibility in growing our image, efficiently having images of
   varying sizes installed, etc.

Therefore, our plan is (roughly):

1. Add dm-verity support
2. Add dm-verity root-hash-signature verification support

With that, we can securely extract kernel+DTB from our filesystem
without having to sign them individually.

3. Add basic LVM support, no RAID or anything, just basic (linear)
   logical volumes.

This will allow us to install multiple versions of Infix on individual
logical volumes, which Barebox can then find and boot from.

4. Add high-level helpers for working with DPS disks and DDI images.

I really like the Linux Userspace API Group's thinking around
Discoverable Partitions Specification (DPS) and Discoverable Disk
Images (DDI). I think it would be great if Barebox had knowledge about
these patterns, and could automatically set up the dm-verity
configuration for a partition when available, for example.

My hope is that this plan sparks some ideas and reflections. If so, I
would love to hear them. If not, sorry for the wall of text :)


[1]: https://github.com/kernelkit/infix/

Tobias Waldekranz (5):
  string: add strtok/strtokv
  dm: Add initial device mapper infrastructure
  dm: linear: Add linear target
  test: self: dm: Add test of linear target
  commands: dmsetup: Basic command set for dm device management

 commands/Kconfig             |  14 ++
 commands/Makefile            |   1 +
 commands/dmsetup.c           | 145 +++++++++++++
 drivers/block/Kconfig        |   2 +
 drivers/block/Makefile       |   1 +
 drivers/block/dm/Kconfig     |  14 ++
 drivers/block/dm/Makefile    |   3 +
 drivers/block/dm/dm-core.c   | 393 +++++++++++++++++++++++++++++++++++
 drivers/block/dm/dm-linear.c | 123 +++++++++++
 drivers/block/dm/dm-target.h |  39 ++++
 include/dm.h                 |  16 ++
 include/string.h             |   2 +
 lib/string.c                 |  66 ++++++
 test/self/Kconfig            |   7 +
 test/self/Makefile           |   1 +
 test/self/dm.c               | 159 ++++++++++++++
 16 files changed, 986 insertions(+)
 create mode 100644 commands/dmsetup.c
 create mode 100644 drivers/block/dm/Kconfig
 create mode 100644 drivers/block/dm/Makefile
 create mode 100644 drivers/block/dm/dm-core.c
 create mode 100644 drivers/block/dm/dm-linear.c
 create mode 100644 drivers/block/dm/dm-target.h
 create mode 100644 include/dm.h
 create mode 100644 test/self/dm.c

-- 
2.43.0



