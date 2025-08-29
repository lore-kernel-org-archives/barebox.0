Delivery-date: Fri, 29 Aug 2025 11:07:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urv54-005l2Z-2K
	for lore@lore.pengutronix.de;
	Fri, 29 Aug 2025 11:07:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urv53-0007Gx-Eh
	for lore@pengutronix.de; Fri, 29 Aug 2025 11:07:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mq1xyAJzgWJANNpU+yr5iajmQ66dzl7Rg6UsLF/IYZU=; b=2C6v5QRUEp7UFlMg+m3tmKAFeZ
	IaVM1hxn5DPaRE6VII1iVUTfAXIWmMk9f7rqEBvQgcx+LxRz1LeQR2oSRE9QsPaMjOv3zIAzuqP5j
	q3anhGwjCMJX5n0iHDqAbuJA49Iok8/ON6kN8Un54hMK6T7vOWeO6wf5lPoYBTbssZyeKh7JyGsZ5
	IWzNkgvoQgnpiq77wqUGFpEAvU42So/fjgaG+5e8ZwxrpilgksuMl8jMlWPnDQx8yFUSNrWJrM7dp
	6A6GWDdQKAUqBGjl5JWAbg98d+8Dx7z19moWnMrLdNBgRdM1Sc/r57W6TIRJqVVM1QWeeM9bFpfVo
	1+bP+a3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urv4L-0000000556x-0wYD;
	Fri, 29 Aug 2025 09:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uruUQ-00000004yoJ-3zwu
	for barebox@lists.infradead.org;
	Fri, 29 Aug 2025 08:29:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uruUO-0004b8-Ci; Fri, 29 Aug 2025 10:29:40 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uruUO-002hHO-0N;
	Fri, 29 Aug 2025 10:29:40 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uruUO-006yAa-00;
	Fri, 29 Aug 2025 10:29:40 +0200
Date: Fri, 29 Aug 2025 10:29:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>
Cc: barebox@lists.infradead.org
Message-ID: <aLFk86Wk1uSR0JQl@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250828150637.2222474-1-tobias@waldekranz.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_012942_995260_D6FBB96D 
X-CRM114-Status: GOOD (  40.39  )
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

On Thu, Aug 28, 2025 at 05:05:25PM +0200, Tobias Waldekranz wrote:
> Start work on adding a device mapper that is compatible with the
> corresponding subsystem in Linux.
> 
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

That's great stuff. We are also interested especially in dm-verity as
that would allow us to get rid of separate partitions for the Kernel
image and maybe even the FIT image format we currently use whenever we
need signed Kernel images.

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
> 
> 2. Barebox is a much higher quality code base to work in than
>    U-Boot. I'm sorry, but it just is.
> 
> Barebox would thus take the place occupied by systemd-boot in many
> distro setups. So why not go with systemd-boot?
> 
> 1. Infix does not run systemd as PID 1, so reusing their bootloader is
>    awkward.
> 
> 2. Infix ships as a single immutable filesystem image, including
>    kernel, DTBs, etc. So we want to extract these files from the
>    filesystem before booting the kernel. This is not supported by
>    systemd-boot, AFAIK - all boot files must live on the ESP.
> 
> 3. We would like to manage our devices' non-volatile storage with LVM,
>    and not be bound to a fixed partition table. This will give us more
>    flexibility in growing our image, efficiently having images of
>    varying sizes installed, etc.
> 
> Therefore, our plan is (roughly):
> 
> 1. Add dm-verity support
> 2. Add dm-verity root-hash-signature verification support
> 
> With that, we can securely extract kernel+DTB from our filesystem
> without having to sign them individually.

Ok, it seems we have the same goals ;)

> 
> 3. Add basic LVM support, no RAID or anything, just basic (linear)
>    logical volumes.
> 
> This will allow us to install multiple versions of Infix on individual
> logical volumes, which Barebox can then find and boot from.
> 
> 4. Add high-level helpers for working with DPS disks and DDI images.
> 
> I really like the Linux Userspace API Group's thinking around
> Discoverable Partitions Specification (DPS) and Discoverable Disk
> Images (DDI). I think it would be great if Barebox had knowledge about
> these patterns, and could automatically set up the dm-verity
> configuration for a partition when available, for example.

I haven't looked into this yet, but it sounds good. It's a good thing
when barebox can just do the right thing without much configuration.

> 
> My hope is that this plan sparks some ideas and reflections. If so, I
> would love to hear them. If not, sorry for the wall of text :)

Well I am very open for adding DM and dm-verity support to barebox. We
would likely have done it anyway at some point, but that could have
taken some time.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


