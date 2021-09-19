Delivery-date: Sun, 19 Sep 2021 23:53:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mS4kH-0004hK-0u
	for lore@lore.pengutronix.de; Sun, 19 Sep 2021 23:53:09 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mS4kF-0001GG-SJ
	for lore@pengutronix.de; Sun, 19 Sep 2021 23:53:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrIcO7+Lav6mLblY/zWoIiubWg+c+GAfBhp8BbH08QI=; b=1FeelyxbWZKGhj
	BxyrYFQL0KDqPRjwzmoE2fwA++xfZH89MW6kS/XA6Md5Lnr7IAqweJajm+EDdxAVaGN2oYitE2Ad+
	dMdYMggl0G9ZU5vVX10L7TJ50sTNkJSJU0QpiaWN/63eqmPovWmyvZ8tidUqai8di18YpFnnYCojm
	UrINctqq6SGRt5TwYFrwv+eGtW2OJWA9slvFvfTdj7Er6uIuPgr+cBtx834gJ71f+ot/EZCNTZEf6
	MSHF9O3UTJqjZIqSoT5wLHZ38VdX7kFj99K7Yg9k7e4W39nWG+aVd2eDZ8V/DN65EF9l1Gc1OIWr7
	uf70KQjK+spuGKXu2PhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mS4ig-000Gj0-9Q; Sun, 19 Sep 2021 21:51:30 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mS4ia-000Gho-5N
 for barebox@lists.infradead.org; Sun, 19 Sep 2021 21:51:26 +0000
Received: by mail-lf1-x12b.google.com with SMTP id e15so20530166lfr.10
 for <barebox@lists.infradead.org>; Sun, 19 Sep 2021 14:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hCVtvGhnxvSqqMiTiVY8Vq8JrPWlZN6N/9Fj81qQiqw=;
 b=neB3fq1tdoR9xbFMFUbTy+gn9wNnb8mbiy0a0Vncp9jCC0mglubrugyRwQ5sGExcqI
 Nl6PbWD9kXx/R+F7UgLXZyRdD06GXzEUlU1f2tuJdVKFm7dvbgdD1nGXJHdA9UDj4DyM
 V+0rJfIvzoRRZi2q6Cr7pMbhD+wXrFNhxxm5+iS+xMV3ep/XD4hrcpNTshYDcw70vznE
 X7qrYnJMUVYb/x1JeRtGyplHC99MeCoweN6H/T+25k/wdBNiQSpw3Q9+fkO1L38dxzea
 Q+yIa0lsgQVGK5pVuRZyCasvPrctq+Iis1tODweiczy+1JJNqIEOQMBazgMNks4mxvm2
 ccyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hCVtvGhnxvSqqMiTiVY8Vq8JrPWlZN6N/9Fj81qQiqw=;
 b=qtjkeR4JwUTvQwSSQk/tiV/8f4Xx+4xIcwn77XBmQSLPvUquWG6hR8+kryk6hPeQxI
 aRniRi5n66C4z2l2fNnt8dxpb7gTE/UKR3tzWHraepNSzaSI7VodL4ZI/hzBU68nXoTi
 kXeL3f6UWg0yByqpvjnMt++ku+Z6nuWbF/0fdk20nG5x7N6xGkg4PfboT0nhA5DbC9NK
 /WedpQx5zWW6tzIw06hi+JsjWkP8bXf7Q5D33C/kZxTZKN1Sd2l3N2k1pi5pyA5+kllv
 Hw5vvH64wlWzwL+9iLRD7LyWkBsoAN05+Bwg1HtqhjFKn+inIcBzXNYxD98EDdPEYrJJ
 ZkaA==
X-Gm-Message-State: AOAM533GIGm5xHpyqovGxdpPR1ZaPNR4Vw/p1Znra40NmTKu6lioL5Oj
 qj/aeQK7Ss9MjBSZLngPhM6P/ZNB+5Wf6kJhr+yUJQ==
X-Google-Smtp-Source: ABdhPJxsD/zXInQZNwaKO0ouA20DG2aNePgKH401EgpoE/BDIT7TwcK7LLTYOW/FqJ/SmCdTH9/xeZcd35WRhqMAjA8=
X-Received: by 2002:a2e:7311:: with SMTP id o17mr8092031ljc.488.1632088281455; 
 Sun, 19 Sep 2021 14:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210908185946.638301-1-trent.piepho@igorinstitute.com>
 <b70fcd46-c1ef-9aa8-9810-cb9af6bf0966@pengutronix.de>
In-Reply-To: <b70fcd46-c1ef-9aa8-9810-cb9af6bf0966@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Sun, 19 Sep 2021 14:51:10 -0700
Message-ID: <CAMHeXxP9fYd9tDdyURJo50MOFwDf+gQyf8jcy4yuwhxB_cKrQw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210919_145124_465627_FD2D7806 
X-CRM114-Status: GOOD (  47.74  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] kbuild: dtc: Allow adding device tree fragments via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 15, 2021 at 4:42 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> On 08.09.21 20:59, Trent Piepho wrote:
> > This introduces config variables that allow adding additional fragments
> > to the Barbox device tree(s).
> >
> > Example uses are adjusting the flash partition layout, adding barebox
> > state varibles, or adding an I2C device.  These can be now be done with
> > build configuration only, without needing to patch the existing dts
> > files in the Barebox source.
> >
>
> I don't see the utility of using this new mechanism for in-tree boards.
> I suggest dropping EXTRA_DTS_FRAGMENTS.

I wasn't sure if this was useful or not.  I didn't have a use case,
but thought somebody might think of one.

> > Preprocessing the dts file gains another layer, where a generated dts
> > source consisting of an include directive for the original dts source is
> > followed by more includes for each fragment.  This is piped to the
> > existing preprocessor call on stdin to avoid another temporary file.
> > cpp/dtc will correctly identify errors in the source files they occur
> > in.  The -MT option is used so the cpp auto-dependencies reference the
> > original dts source and not the generated code passed on stdin.
>
> If you go this route wouldn't you want to apply device tree overlays?

Can the Barebox apply overlays to the *Barebox dtb* when it starts?
of_register_overlay() applies the overlay to the Linux dtb if I'm not
mistaken.  The Barebox dtb is passed to the entry function from the
pbl.  By the time board code runs in the main Barebox it's too late to
modify the Barebox device tree.

> Blindly applying fragments doesn't mesh well with multi-image.

It is working well for me, but it was not done blindly.  I think the
use case was not clear.  This is for Barebox when integrated into a
build system using something like Yocto or Buildroot for someone
creating a complete finished FW for a real product..  If one was only
working on Barebox alone, then you would probably just modify existing
dts files or add a new image build for your board+dts combo.

Since one is configuring Barebox for their specific product, they do
not want to build every board Barebox supports.  They just want their
board built.  So one will not create specific NAND flash partitions
for their exact firmware design and then want those partitions in
every board Barebox supports.  That doesn't make sense.

I have one product I am writing FW for, but I still use multi-image
build because there are different Barebox images for mutually
exclusive choices on how to configure the hardware.

I want to use RAUC and for that I need to create barebox-state
variables in the Barebox device tree.

With this patch, I can create a dts fragment with a barebox-state
node.  Then I configure buildroot to add this to Barebox.  All my
different Barebox images now have the barebox-state node, since the
fragment works for all them.

I commit to my FW repository (which would be like a product specific
Yocto meta-layer) the barebox-state dts fragment and the RAUC system
config that references those state variables.  They are both in the
same repository and if the variables change, both the dts fragment and
the RAUC config can be updated in the same atomic commit.

So now I have added rauc support entirely from the Buildroot
configuration menu with added dts fragment and rauc config files in my
FW repository.  *I did not need to apply any patches to the Barebox
code*

That is the use case here. So I can use rauc with just the standard
Barebox source without needing to patch it.

Of course there are many other things one would probably also do this
way, like changing an expansion header from I2C to UART or
partitioning NAND flash.

I do not see how one could do this with overlays.  Even if it was
possible to apply an overlay in the pbl, one would still need to patch
the lowlevel board code to find and apply those overlays, which
defeats the whole point of not needing to patch the Barebox source.

I'll also mention that Linux can do this too in a way.  If you need to
modify your board dts for Linux, what you do is add an external dts
file in Buildroot/Yocto and have it make a dtb from that.  You don't
need to patch the dts files in the kernel source.  But the Barebox dtb
is not supplied to Barebox by a bootloader like Linux.  The way dtb
generation is integrated into the image Makefile and even the lowlevel
code makes it not practical to add new images to Barebox with only a
make command line argument.

> I assume with overlays, you could skip an overlay if it has a differing
> compatible. If we don't use overlays, you should at least define
> a symbol with the name of the device tree file, so fragments have
> a chance of being multi-image compatible via preprocessor logic.

Certainly one could use the preprocessor.  It would be much easier to
just define what you need in the dts itself.  But one would need to
patch the Barebox dts and the point was to avoid that.  I suppose the
makefile could construct a valid C macro name from the filename and
define it.

But I wonder if one needs this?  If I was building two different
boards under yocto, I would have a machine specific override in my
barebox bbappend to add the only dts fragment for board I was building
for.  Yocto builds a different copy of barebox for each
target/machine.  I do not need barebox to use the preprocessor to turn
off the fragment I am not using.  I would not have yocto give it the
unused fragment in the first place.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

