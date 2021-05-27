Delivery-date: Thu, 27 May 2021 11:23:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmCEN-0004Fq-Tt
	for lore@lore.pengutronix.de; Thu, 27 May 2021 11:23:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmCEM-0001Ks-Qc
	for lore@pengutronix.de; Thu, 27 May 2021 11:23:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGGg0GFXoWFf3odXQB8DXaqeP8GE17tfEoorXC+dQ4M=; b=d8v3bLyNNAX6FX
	NcHBgKiO0yRlZfhNtVxzA2rRXTBfkNx+b3v8+b8rxwqKholzHLRIhT0CBtJzHCE91X1RUUyPTKWb3
	DGiRYYyDZGwIWapqTC56zanJc06mlb4xzW/GZcvqxiJaX76yHWh/+UQV8n7QULRN7oYEyCLxcG2t/
	TrnmpwKoRlBeHJHVCeblVuEd7dT3KzrEpuJT3A9BjvDObchn+n3hzp2krtXLe22PiyOjCpxl+jfyR
	j9YJubdWrZjNDo88IaNjulbEFAWIgYbVtDcsVk/D2WX/A8UalZcyGwoBFx2nphi1ro3bN9I7c+9Hi
	E0Q2g9i2mAXbyfPAvlFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmCCp-004HLJ-Ho; Thu, 27 May 2021 09:21:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmCCh-004HIj-7k
 for barebox@lists.infradead.org; Thu, 27 May 2021 09:21:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmCCe-00012b-UJ; Thu, 27 May 2021 11:21:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmCCe-0005Xs-HJ; Thu, 27 May 2021 11:21:20 +0200
Date: Thu, 27 May 2021 11:21:20 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Trent Piepho <tpiepho@gmail.com>, barebox@lists.infradead.org
Message-ID: <20210527092120.GH19819@pengutronix.de>
References: <20210526065856.368345-1-trent.piepho@igorinstitute.com>
 <20210527071105.GC19819@pengutronix.de>
 <CAMHeXxMyahfBYm-sw9zpF105Uc5PCH71D7DvV0BnS+V=PKza3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxMyahfBYm-sw9zpF105Uc5PCH71D7DvV0BnS+V=PKza3A@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:50:31 up 98 days, 12:14, 116 users,  load average: 0.02, 0.07,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_022123_324795_490960EC 
X-CRM114-Status: GOOD (  49.46  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] imx-image: Fix uninitialized add_barebox_header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 27, 2021 at 01:13:29AM -0700, Trent Piepho wrote:
> On Thu, May 27, 2021 at 12:11 AM Sascha Hauer <sha@pengutronix.de> wrote:
> > On Tue, May 25, 2021 at 11:58:56PM -0700, Trent Piepho wrote:
> > > Note that ommiting -b, so as to not add a barebox header, still adds a
> > > 1024 byte header, it's just blank.  I think it would be better if it was
> > > not added at all.  If flashing to an SD card or eMMC main block, this
> > > header overlaps the partition table, and so needs to not be flashed.
> > > It's not part of the imx image.  It's just padding to place the imx
> > > image at the correct location w.r.t. the start of flash.
> >
> > The idea is that you can put the imx image at the beginning of an SD/MMC
> > card without knowing any offsets. Yes, you'll overwrite the partition
> > table in that case, but once you know that you can skip/seek 512 bytes
> > on both the image and the card and be done. Note that with newer i.MX
> > SoCs like i.MX8 the offset was changed to 33k to support GPT partition
> > tables. With i.MX8MP they changed the offset again to 32k. I think
> > Having to know all these offsets is not better than the current
> > situation.
> 
> It's still possible to use GPT with imx6-7.  The GPT table only uses
> the 2nd sector (bytes 512-1023) as a fixed location.  The rest of the
> GPT data has pointers to it from that sector and can be anywhere.
> Convention is to place it immediately after, where it overlaps the imx
> image, but it doesn't have to be there.  Five years ago I had to add
> this feature to gptfdisk, but it's the option --move-main-table now.
> 
> Speaking of partition tables,it's possible to add the bootloader as a
> partition.  Then I don't need to know the offset as the partition
> table handles that.  And it means the bootloader shows up as being on
> the disk, instead of hiding inside unallocated space, waiting to get
> wiped out by something that doesn't think unallocated space needs to
> be preserved.  And the partition has a size, so flashing to it will
> not go past the end and clobber anything else.  Using unallocated
> space on the whole disk device involves a much riskier dd command.
> 
> And I need to know where the bootloader is to make that partition
> table.  So adding the padding to the image didn't help me to not need
> to know where the bootloader goes.
> 
> When I make the sd image, I need to add an extra step to the script to
> strip the padding, so I still need to know the offset there, and keep
> it correct.  I.e., both the code that strips the padding and the code
> that places the bootloader into the correct location in the image need
> to know the size.
> 
> U-boot doesn't do this padding with its images, so any script that
> makes a sd/emmc image for u-boot in buildroot, yocto, etc. needs to be
> adapted for barebox to strip the header.
> 
> When it comes to flashing, I'm not aware of a good way to flash
> barebox from barebox.  If it was unpadded, I'd just write it to a
> partition.  But with padding and the default of no partition for
> barebox, I do this:
> 
> # Ugly hack, specify size as 767kB, since we don't know the total file size, and
> # that's all NXP's chosen env location allows barebox.  We need to use memcpy to
> # skip the first 1kB, but memcpy has no option to use the source size.
> echo "Ignore 'ran out of data' message that follows"
> memcpy -s /mnt/nfs/barebox-nxp-imx6ul-evk.img -d /dev/mmc1 0x400 0x400 0xbfc00

You are probably not aware of the barebox_update command which handles
all these ugly details and does more for you like powerfail safe update
on devices that support it or checking the image type before flashing
it.

Putting the bootloader in a partition has its problems as well, like you
have to create a very special partition table. Anyway, you made some
valid arguments. How about adding a Kconfig option that lets you decide
which images you want to have? That would also be a good place to
document the differences.

Just changing the behaviour of the '-b' option might not be the best
idea as this was introduced to insert the initial barebox opcode into
the image, not to prepend another header to the image. I think we should
introduce a new option for this purpose.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

