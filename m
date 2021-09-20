Delivery-date: Mon, 20 Sep 2021 22:45:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSQAh-0003Pn-Jl
	for lore@lore.pengutronix.de; Mon, 20 Sep 2021 22:45:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSQAg-0005Lp-66
	for lore@pengutronix.de; Mon, 20 Sep 2021 22:45:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yW52h/VYe9mho0Iqsq/MXVwcCDq4zejLc1u85aAftys=; b=f6Od7xdN5RCcqK
	4BzY7PqAWsvyZltY2thrD3dRtL0KWH5Eii+F+r2gAsT2djBXbhBYPj81t/TkYW6jcPd8O1q1OvFl2
	aaK5K06QoQpF9YD2YO8gZME4lY9LMnYuu2dzsCpE9UtnUeQgDyWfCDfukWodT4mLjVqhd6L/D12yv
	j4e+9bXce5Aiz7Unr6KIlen+V6AdU/wWOHkZPH/U1FOgZiIAYdJTyR5WaW0m3qZ4bxwCc3XPb+Pbp
	XWaBO+yQK5cBlMQ1FVjuoOr6EN48aARfVPs4AEnnRRIuTvpqHdrES1cBRARwMnk6V0m7ck18Ixg4a
	oONCZols5BEU1Gsrigrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSQ95-0033zK-9X; Mon, 20 Sep 2021 20:44:11 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSQ8z-0033yq-KI
 for barebox@lists.infradead.org; Mon, 20 Sep 2021 20:44:07 +0000
Received: by mail-lf1-x12a.google.com with SMTP id g41so40245466lfv.1
 for <barebox@lists.infradead.org>; Mon, 20 Sep 2021 13:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uj323tdWnTogS72pP1FW6/CLWxe0EXGvL2tb7PwM5DQ=;
 b=EopxX8WyqCehsaEAU007DwkTkIyi1AupHeOA6+X+RDWamYKwM+j6poG9B1/5ehI7Ck
 MCWj4MEfeI1Byy8kJHkLpcnVmJDv9QoPsqdfWTUEvB9Luq0JD+4Wr2HWfXpiHP8Z516b
 p3ZwJLF5pditjXp8FoT9Hpil4c60RcshOWcw+GKjCbMcR64/tIFSnma7CDF4Ub1asC8I
 4mZCIWrfpa7aX3CcjklYNq6ZVZIdp6IrpzSI8hxi7smTdwD9apMnwsMQQ9c2FF3zLn9q
 8y/Zw3Pl0B5fDqS3XQIzvLPaU/yCqGYStoeWU3Z8hQcpeCBiyTihl/WsFMOtiMwgwzgn
 luYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uj323tdWnTogS72pP1FW6/CLWxe0EXGvL2tb7PwM5DQ=;
 b=lHwtScrdfgLeozDsdCjsMvb2rshw42dQLf9wCYeHl7JXW3kqHBoXy26bq0pVpIunXE
 eH5p6mMhPOLNSLEMphQdydQQTtoLb7vHmtgVH5iNoLEledwdZ/M2JwwwlarwL4Pfvn39
 /9lhG4odjAP7kwbJli1ZWoQPzDZxLFo5/m5r1tTJGf3IJMQhL3wPQR4aulAZnpHO+WpG
 uy71uK7cpxDLiZjUD/q7mAjzYgjAnd9Xf3JUwtuFLVZlAMX6Z7kyI7+ODT+UO1AgCY+H
 +w1mbyz9KjsH5Wk2t8Cmcm2GxSP9sm9M1oTCY+HnUNU/dPwzRsKRD919MQ4baoJdih30
 20AA==
X-Gm-Message-State: AOAM530D2h4siziqt8TV4PGmxmcewqsoNZpXmPt5iJ/pguUIDejPmzQd
 wLIZZFvtS4L29LxriLe/+hzfH68EAwGu7i0WHd6xOIm0U+Y=
X-Google-Smtp-Source: ABdhPJzm4WRUaBZTbFL0f1XKVMb4Bk4PFcbYBDm2G4esJSVqC7BNcaxFAevzm3Hg4Yt1z2rWUxcSum5VoEN/c5QeA1s=
X-Received: by 2002:a2e:7311:: with SMTP id o17mr12892519ljc.488.1632170643255; 
 Mon, 20 Sep 2021 13:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210908185946.638301-1-trent.piepho@igorinstitute.com>
 <b70fcd46-c1ef-9aa8-9810-cb9af6bf0966@pengutronix.de>
 <CAMHeXxP9fYd9tDdyURJo50MOFwDf+gQyf8jcy4yuwhxB_cKrQw@mail.gmail.com>
 <a2ed83cd-102d-a3f1-1b28-89199d8f2a06@pengutronix.de>
In-Reply-To: <a2ed83cd-102d-a3f1-1b28-89199d8f2a06@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 20 Sep 2021 13:43:52 -0700
Message-ID: <CAMHeXxPZ9on3rZu92H1EeNQj79rUFBRbs5Qre=AS3U7_y=UueQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_134405_926060_EB5DB4AF 
X-CRM114-Status: GOOD (  44.92  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: dtc: Allow adding device tree fragments via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 20, 2021 at 2:02 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> >>> Preprocessing the dts file gains another layer, where a generated dts
> >>> source consisting of an include directive for the original dts source is
> >>> followed by more includes for each fragment.  This is piped to the
> >>> existing preprocessor call on stdin to avoid another temporary file.
> >>> cpp/dtc will correctly identify errors in the source files they occur
> >>> in.  The -MT option is used so the cpp auto-dependencies reference the
> >>> original dts source and not the generated code passed on stdin.
> >>
> >> If you go this route wouldn't you want to apply device tree overlays?
> >
> > Can the Barebox apply overlays to the *Barebox dtb* when it starts?
>
> I meant overlay application at compile time. I have no experience with
> that and was interested to hear your opinion on it.

This could be done, but I think overall it is worse.  Additional
fragments can be made into dtbo files and then fdtoverlay from dtc
package can apply them to the main dtb at compile time.  But there are
drawbacks:
dtb must be compiled with symbols, which makes it larger.  And
non-fragment users get a different dtb than before for no reason.
One can not use the preprocessor to control overlays per board.  Such
as changing a node name from <&nand> to <&emmc> based on board or
enabling/disable the entire fragment.
The overlay can not delete nodes or properties, i.e. /delete-property/
and /delete-node/ are not useful.

A possible benefit of overlays is if an overlay is used in many
different images, then it could be compiled only once.  But dtc is not
any slower to compile a dts fragment append to the main dts than
fdoverlay is to apply an already compiled dtbo to the main dtb, so
there is not even a build time improvement here.

So, I can see only disadvantages and not advantages for compile time overlays.

Maybe one could ship a firmware update with a pool of overlays, then
firmware update installation could construct a final dtb from hardware
variant appropriate overlays.  That would be a way to make use of
non-dynamic overlays.  Otherwise I think there is no advantage to
non-runtime applied overlays over appended dts fragments.

>
> There is an easy way out, define the (sanitized) board name as a macro
> and let users worry about it.

Ok, I can add that.  I think the same identifier as constructed for
the C symbol of the compiled in dtb bytes will work.


> >
> > That is the use case here. So I can use rauc with just the standard
> > Barebox source without needing to patch it.
>
> I see the utility when using e.g. evaluation kits barebox already
> supports. Could be useful for DistroKit if RAUC support were to
> be added.

I used this originally for a devkit.  But it is Variscite's DART-6UL,
which is not supported in Barebox.  So I added support.  But not just
support for the one thing my FW does, support as a proper Barebox
devkit target.

Now I want to change the flash partitions for my specific FW design
and also want RAUC and barebox-state.  Should I include this in my
Barebox devkit support?  No one else wants it, at least not as I have
implemented it.   Should other users submit patches to Barebox to
change the partitions to what they want?  Of course not.

My answer is I should not have to patch Barebox to do this.  I do not
patch Barebox to change the defconfig I'm building with.  I do not
patch RAUC to configure it.  I do not patch wic to change my SD card
partitions.

Now we have made a custom board for the next phase and I have added a
new board to Barebox for this.  But still I use external dts fragments
despite having my FW specific Barebox git repo.  Because I do not want
FW system configuration to be done inside the bootloader codebase.  It
is much better if it is part of my FW git repo that configures
everything else in the system too.

In the old days, we had to patch a header in U-Boot to change *any*
bootloader configuration. Yuck! Then we had Barebox and it used the
kernel config system and we could have an external defconfig.  So much
better!  And Linux had board code with compiled in driver
configuration data, but then we got OF device trees and it was much
better.

So I want external dts files with Barebox.  Complete external dts is
really hard to do with the way Barebox images work.  But really, I
never write a complete dts from scatch. It is always a modification of
a base dts.  This patch to Barebox is not very complex and it lets me
do anything I have ever wanted to do with external Linux dts files in
Barebox.

>
> > If I was building two different
> > boards under yocto, I would have a machine specific override in my
> > barebox bbappend to add the only dts fragment for board I was building
> > for.  Yocto builds a different copy of barebox for each
> > target/machine.  I do not need barebox to use the preprocessor to turn
> > off the fragment I am not using.  I would not have yocto give it the
> > unused fragment in the first place.
>
> I usually avoid Yocto MACHINEs for board variants. Build same rootfs
> for both variants, ship two device trees and reference them either
> from FIT configurations or bootloader specs and let the bootloader worry
> about selecting the correct DT to boot.

When I have done one FW for multiple boards, I've always been able to
use the same bootloader and have it, or a preloader, determine board,
usually by resistor strapping on a GPIO or ADC, so it is easy to use
without drivers and to keep consistent on each board variant.  But if
one simply could not do that, then I see that multiple images from a
single Barebox machine target would be useful.  Also useful for
Buildroot, which is not as sophisticated as Yocto when it comes to
building a package in different ways.  One gets one target or one
host.  Not target-arm, target-arm-machineA, target-arm-machineB, etc.
like Yocto.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

