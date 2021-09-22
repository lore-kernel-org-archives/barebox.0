Delivery-date: Wed, 22 Sep 2021 09:07:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwLy-0005dg-SO
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 09:07:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwLx-0004gL-SD
	for lore@pengutronix.de; Wed, 22 Sep 2021 09:07:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aa5hAjynj7b/KOzGGD4zX8bJFWUZjUcoyO3LMaw8Rl8=; b=AcG5F7LyL8G5qqYv04rrsEFuFn
	te3Imi87dzssW46FJkBV2wUXFcgYdBAxFfCXFX+4q2Q9oOn2YJVtuBJCTdOtI2tMbndV7qjQl0bgW
	RpOcNO2S6/ZvSZLDBQd0DxCdynolTsyMnfTB5au5qMRiMHWk8kHA3fua5L9Iaa7w/NQuexfCKEE3x
	10U/OAjFVkDuJPbc+m5Rw/7ft/gtnBewRpIRrolozghuX2nzOhPfSvc95Ox8y+CVJr5El1j2RllxC
	RNqwMN79x/fGaZtgKDPTCRNt24h+3VpBuaJjvEh9yL7m8b7ETkatZbFvgVjrPFu4+MB5Rr7ug/neF
	OS5vbKLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwKb-007EbS-8U; Wed, 22 Sep 2021 07:06:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSwKW-007EZq-16
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 07:06:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mSwKS-0004P7-O4; Wed, 22 Sep 2021 09:06:04 +0200
To: Peter Rosin <peda@axentia.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <bf4bc5ce-8206-ee40-f36c-1e5dff759b6e@axentia.se>
 <237cc091-69e4-c49a-9c7b-eb195515da63@axentia.se>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <07c2f7c4-47f3-7fd7-537c-8826da6cb24c@pengutronix.de>
Date: Wed, 22 Sep 2021 09:06:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <237cc091-69e4-c49a-9c7b-eb195515da63@axentia.se>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_000608_152334_5053D250 
X-CRM114-Status: GOOD (  33.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: at91 sama5d3 "regressions"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 19.09.21 08:32, Peter Rosin wrote:
> On 2021-09-18 01:57, Peter Rosin wrote:
>> On 2021-09-18 00:37, Peter Rosin wrote:
>>> Hi!
>>>
>>> I have old boards that I'm trying to get up to current
>>> revisions of various pieces of software, and I'm running
>>> into a couple of problems with barebox. After bisecting
>>> and sorting though git history for a couple of days,
>>> these are my findings...
>>
>> I meant to mention that I'm using this extra patch for my board.
>>
>> As you can see, it's been a couple of years, and it is not at
>> all unlikely that the root cause is in these files, and that
>> there has been changes in the other parts of the sama5d3 code
>> that I need to pick up.
>>
>> I will dig into updating these files, and check if that help.
> 
> Ok, it turns out I don't need to do that update, because the
> only thing that's actually used from the extra patch are the
> tse850_defconfig file and the environment. But since the
> tse850_defconfig file fails to set CONFIG_MACH_TSE850, the
> actual code in the extra patch is not used (not even compiled).
> Instead, the board code for sama5d3x is what I have been using
> all along. Big blush about that, and sorry for the confusion!

No worries.

> However, the above also means that the quotes around the
> "regressions" word in the subject can be removed. The problems
> are squarely in the upstream code base, and I do need fixes
> for region overlap, eXecute Never and RO_DATA_SECTION.

I am interested in understanding how that breakage came about.
I have a sama5d3_xplained here with NAND, which I will try to
find some time to reproduce this on.

For your immediate issue: I'd like to use the occasion to get
all sama5d3 to probe from device tree. We already have one
sama5d3 DT-enabled board upstream (microchip-ksz9477-evb) and
I just CC'd you on a series to migrate the sama5d3_xplained
from legacy board code to DT. I tested this boots correctly
after at91bootstrap from NAND without your series here.

The relevant defconfig is at91_multi_defconfig. It will generate
a barebox-sama5d3-xplained.img, which should boot to shell
on your board.

If that works, we could create a new barebox-sama5d3xek.img image
that does the same as barebox-sama5d3-xplained.img, but with
different device tree and see if all peripherals you use
still work.


With everything nice and dandy, we could finally remove non-DT
code for sama5d3 altogether and your board would reuse the same
early bootstrap code basically all other platforms use and test.

Sounds good?

Cheers,
Ahmad

> 
> I have this hunch that the region overlap is what triggers
> the other problems, but that's a pretty wild guess...
> 
> Cheers,
> Peter
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

