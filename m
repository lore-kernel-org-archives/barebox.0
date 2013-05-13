Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubvdy-0000z2-Ht
 for barebox@lists.infradead.org; Mon, 13 May 2013 16:30:35 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so2634757bkc.0
 for <barebox@lists.infradead.org>; Mon, 13 May 2013 09:30:11 -0700 (PDT)
Message-ID: <51911510.8050207@gmail.com>
Date: Mon, 13 May 2013 18:30:08 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de> <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de> <5190E56F.9080903@gmail.com>
 <20130513162313.4f5849a9@skate> <519110D0.5040801@gmail.com>
 <20130513182141.12af9b31@skate>
In-Reply-To: <20130513182141.12af9b31@skate>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 05/13/13 18:21, Thomas Petazzoni wrote:
> On Mon, 13 May 2013 18:12:00 +0200, Sebastian Hesselbarth wrote:
>>> One solution for Barebox is to have a DATA line in our kwbimage.cfg
>>> that does:
>>>
>>> DATA 0xd0020080 0xf1000000
>>>
>>> and so when Barebox boots, the remapping to 0xf1 is already done,
>>> and we don't have to worry about it. This way, a Barebox can
>>> chainload a second Barebox.
>>
>> Thomas, have you tried the above? I did and Dove immediately stops
>> responding to Xmodem transfer. I have the strong feeling, that BootROM
>> relies on stuff located at 0xd0000000.
>>
>> So remapping _that_ early will maybe not work either.
>
> No, I did not test that, it was just a supposition from me that it
> would work. I was under the impression that the SoC would load the
> entire image in SRAM, and then go through the DATA commands and apply
> them. But of course, if it does apply each and every DATA command as
> soon as it receives them, then it cannot work, and Barebox will have to
> do its remapping and give up the possibility of being booted by itself.

Hmm, Dove spec says about BootROM Address Decoding:
"BootROM firmware uses the default address map, and does not change it
throughout the entire boot process."

And of course, if you change the address map early, BootROM will fail
to access peripherals (SPI, I2C, NAND, ...).

Remap by kwbimage.cfg looks like a no-go.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
