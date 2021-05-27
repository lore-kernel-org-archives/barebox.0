Delivery-date: Thu, 27 May 2021 10:15:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmBAq-0003QR-8W
	for lore@lore.pengutronix.de; Thu, 27 May 2021 10:15:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmBAp-0005qi-17
	for lore@pengutronix.de; Thu, 27 May 2021 10:15:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsOHKjAarv78jj07d65M+SKKKIZcKHbD3Ps/tAbWNTE=; b=IBJlr+QFxj0C9s
	Tufa50A2sral3GtqirEy0D9Yw6JNXMJyh1vGMjQgxHU2kubLWwtcb/I+ldArGnfquruTGYAWFv4bV
	6ggrtq5PKhjg+vI0xLFo5xr4jqEfjjkmYwTvySDdvnZinE4DOAYKturqSjrzKnH+sapBVRHTrmWdo
	W+YF9jkopKP0ggp/wSY8eSsoPvjtYuq566j4rRwEqzkgXNVaLv53pvmhgI8Raka51NVVaECx1n7Q8
	pw++Uw6AcQuLJmIbPV+F0qM+vAVT3tip9IyT0Z9zenp9JS6MnwqhKvYT2Gp3fLgBdi6ZgQ3E9bcPC
	clpBaYForSapsiDoJ1Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmB9K-003kaD-VW; Thu, 27 May 2021 08:13:51 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmB9F-003kXD-3C
 for barebox@lists.infradead.org; Thu, 27 May 2021 08:13:46 +0000
Received: by mail-lj1-x232.google.com with SMTP id w7so5159671lji.6
 for <barebox@lists.infradead.org>; Thu, 27 May 2021 01:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z+vdjq4+Cs8mH9/2vtAOf4UgrplVkpxkuhKDEMqshb0=;
 b=kyo+yecUrDdoHqZkEY4x7/FVxDfc2Z8NH6jJEov3elT8p8Aq67bRBwOASRxS1XiJBB
 oFk15HroFnC2bws+r4m6LzUJ0fxOWONiCHraIHtCecyboVszp4aptg2DboKUoD07NHgH
 o3eVw3741Tr4rHpAca80j/AvW7IlyvJdRCm8l/33FwKUV+EBU8YoJwbyw+tz3YYnF4/9
 EKIxB5/4tS8EIjox8a3T4V07jq2eK9f5GlAoMYSvkOWl4ZkRv9RhN70JHw8/wICcfBv6
 LXmtRTuomVSJ5823C+OYYvF/ov/8RBsOWlPgP3L6S9jyisV+7kgHGvoVbu0HaVbefF8G
 4qWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z+vdjq4+Cs8mH9/2vtAOf4UgrplVkpxkuhKDEMqshb0=;
 b=Gjkwl4JDSMVmVEEE1isbPfN6TjwUGaQu3wLlQX8ZkEitoNbpdOU4EJFtgyEmSLk2ro
 7tLqtE2z96gBtRpRP6iKOslZXUB5LGkDOkmJbxSLNKqiBz9d96MFfGoMuezXQARgpf5l
 Ik8Sy7culFHQJLIWbJczPMj5IlPbm/orhIXRSt1+aC2e1ThbsHRCqjxgeVYQrlws3zVa
 j/wxNRy2J7xybp2W3MKdMIB9/Nks848XT9PGT4BTgXMXWP7O2NNQL29MNCLzsX1ttc3y
 17fGYAww/YOFGsX7xiv2ovh7N7Xdc84F32iaGygbTKagweHZPrPQCONNOCvh9fW5QQsE
 zg0w==
X-Gm-Message-State: AOAM532GLWHMJQARYNWE9yaizWVWaSy9qUDqSXFv6CsDlLoSnXsRUiWd
 EB6veQtmLEuHOt8seXXxq8dvE9aA6S4NcgsQuBQr/g==
X-Google-Smtp-Source: ABdhPJzJ9S3+wTsYvxUCF3/os/kJDhnRK6siaLjAdJfZ7LR0m5nOFjUoRJj6usdB3iHYRyuAOKW/fZnXIIJMtFBJEvg=
X-Received: by 2002:a2e:7a17:: with SMTP id v23mr1656398ljc.99.1622103220141; 
 Thu, 27 May 2021 01:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210526065856.368345-1-trent.piepho@igorinstitute.com>
 <20210527071105.GC19819@pengutronix.de>
In-Reply-To: <20210527071105.GC19819@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 27 May 2021 01:13:29 -0700
Message-ID: <CAMHeXxMyahfBYm-sw9zpF105Uc5PCH71D7DvV0BnS+V=PKza3A@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Trent Piepho <tpiepho@gmail.com>, barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_011345_347284_56EECB2A 
X-CRM114-Status: GOOD (  30.52  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] imx-image: Fix uninitialized add_barebox_header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 27, 2021 at 12:11 AM Sascha Hauer <sha@pengutronix.de> wrote:
> On Tue, May 25, 2021 at 11:58:56PM -0700, Trent Piepho wrote:
> > Note that ommiting -b, so as to not add a barebox header, still adds a
> > 1024 byte header, it's just blank.  I think it would be better if it was
> > not added at all.  If flashing to an SD card or eMMC main block, this
> > header overlaps the partition table, and so needs to not be flashed.
> > It's not part of the imx image.  It's just padding to place the imx
> > image at the correct location w.r.t. the start of flash.
>
> The idea is that you can put the imx image at the beginning of an SD/MMC
> card without knowing any offsets. Yes, you'll overwrite the partition
> table in that case, but once you know that you can skip/seek 512 bytes
> on both the image and the card and be done. Note that with newer i.MX
> SoCs like i.MX8 the offset was changed to 33k to support GPT partition
> tables. With i.MX8MP they changed the offset again to 32k. I think
> Having to know all these offsets is not better than the current
> situation.

It's still possible to use GPT with imx6-7.  The GPT table only uses
the 2nd sector (bytes 512-1023) as a fixed location.  The rest of the
GPT data has pointers to it from that sector and can be anywhere.
Convention is to place it immediately after, where it overlaps the imx
image, but it doesn't have to be there.  Five years ago I had to add
this feature to gptfdisk, but it's the option --move-main-table now.

Speaking of partition tables,it's possible to add the bootloader as a
partition.  Then I don't need to know the offset as the partition
table handles that.  And it means the bootloader shows up as being on
the disk, instead of hiding inside unallocated space, waiting to get
wiped out by something that doesn't think unallocated space needs to
be preserved.  And the partition has a size, so flashing to it will
not go past the end and clobber anything else.  Using unallocated
space on the whole disk device involves a much riskier dd command.

And I need to know where the bootloader is to make that partition
table.  So adding the padding to the image didn't help me to not need
to know where the bootloader goes.

When I make the sd image, I need to add an extra step to the script to
strip the padding, so I still need to know the offset there, and keep
it correct.  I.e., both the code that strips the padding and the code
that places the bootloader into the correct location in the image need
to know the size.

U-boot doesn't do this padding with its images, so any script that
makes a sd/emmc image for u-boot in buildroot, yocto, etc. needs to be
adapted for barebox to strip the header.

When it comes to flashing, I'm not aware of a good way to flash
barebox from barebox.  If it was unpadded, I'd just write it to a
partition.  But with padding and the default of no partition for
barebox, I do this:

# Ugly hack, specify size as 767kB, since we don't know the total file size, and
# that's all NXP's chosen env location allows barebox.  We need to use memcpy to
# skip the first 1kB, but memcpy has no option to use the source size.
echo "Ignore 'ran out of data' message that follows"
memcpy -s /mnt/nfs/barebox-nxp-imx6ul-evk.img -d /dev/mmc1 0x400 0x400 0xbfc00

But other than during bootloader development, no one flashes just the
bootloader.  It's all part of the build system that makes the full
image.  Everyone flashes that for new boards or uses their software
update system on existing ones.  So just the need to deal with header
stripping the image building portion remains.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

