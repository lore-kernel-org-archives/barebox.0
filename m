Delivery-date: Wed, 15 Sep 2021 10:57:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQQjX-0002RH-79
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 10:57:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQQjW-0000Xb-9A
	for lore@pengutronix.de; Wed, 15 Sep 2021 10:57:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dSG6c8VNFnaOHZlZAMs2S/P2Kya/1mL9El0sooBL5gM=; b=N1I1ZAlQU4wtYeHhhZzV0Bpwhr
	H1Y1RQwNHZMCXZd/n0CFWG/mqKq/fse4rO0nRBkscQz0k1rCbUFYNHt0cdhsOg1XzesCIbLBbpHMp
	EqOHbZoGB3hqnah6ID8TXoRfxuPEzFQbleIXT/9wtWY5t4DsW2cjEUgVN/4yTMb7Lcn6aoST/g46Y
	3BhqXudTixSwQYBbfv/rDmooIfbx+EZq/teo57dmYjWJgykCB+POqTVPzY5IaElhPw1/jFVDaV8fN
	H+wKUwBogo72HGoo9ZPX16rU6jbQotaIOptd8Va7EVg6QZjqUJ51+JTbqS464dFpxblF0zjHACLxK
	uXPtQ3kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQQi6-008Wxd-U8; Wed, 15 Sep 2021 08:56:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQQi1-008WwX-8p
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 08:56:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQQhz-0000N2-KO; Wed, 15 Sep 2021 10:55:59 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>, ejo@pengutronix.de,
 rhi@pengutronix.de, uol@pengutronix.de, renaud.barbier@abaco.com
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
 <20210914132016.22572-3-a.fatoum@pengutronix.de>
 <CAMHeXxMyGYAM=TSE=V9h8jnkO8rmDE-e5axKeCwURvqcYoG63A@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fda4d46a-1025-4bde-4ee0-bebbe20932ab@pengutronix.de>
Date: Wed, 15 Sep 2021 10:55:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMHeXxMyGYAM=TSE=V9h8jnkO8rmDE-e5axKeCwURvqcYoG63A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_015601_392669_9100EBEB 
X-CRM114-Status: GOOD (  28.24  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] scripts: unify libusb.h inclusion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.09.21 21:22, Trent Piepho wrote:
> On Tue, Sep 14, 2021 at 6:21 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> I've also run into downstream patches around broken toolchains that
>> change <libusb.h> to <libusb-1.0/libusb.h>, so the header is found.
> 
> How does this become a problem exactly?  If the toolchain has the file
> in the location <includedir>/ibusb-1.0/libusb.h, then shouldn't
> pkg-config --cflags have returned -I<includedir>/libusb-1.0 and it
> would then find the file just fine?
>
> Or is the problem really that the cross building setup does not have
> correct .pc files?

I ran twice into downstream patches patching imx-usb-loader. So apparently

-lusb1.0 was returned but the CFLAGS were correctl set.

> If it's the latter, then I'll point out that my previous email would
> let someone put CROSS_LIBUSB_CFLAGS=-I<cross-include-dir>/libusb-1.0
> on the make command line and get a build without having .pc files.
> This is pretty much what you get with autoconf configure scripts when
> you put headers in a non-standard place and don't have .pc files setup
> to find them.  You need to supply CFLAGS, LDFLAGS, etc. variables with
> the proper -L and -I options to find them.

I wrote this patch initially to support a pkg-config less build:
If CROSS_PKG_CONFIG wasn't set (no default), we would just use -lusb-1.0
and hope it works. For the header __has_include would try the two paths
that most probably would work.

Now that I dropped that fallback, I should probably drop this patch
as well and let people with broken pkg-config files just fix their
brokenness.

>> +++ b/scripts/libusb.h
> 
> By naming this libusb.h, it requires that "libusb.h" find this file
> and <libusb.h> find a different header of the same name.  That's
> certainly possible by being careful with the "" and <> search paths.
> But it seems unnecessarily fragile.  I suggest using libusb-wrapper.h
> for this file so you avoid name collisions with the real header file.

That's a good point. I'll drop this patch though for v2.

Thanks for your feedback,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

