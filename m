Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLKim-0005Lf-EU
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 21:18:41 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so3142031lbb.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 14:18:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121008205857.GV1322@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
 <1349725459-20226-6-git-send-email-s.hauer@pengutronix.de>
 <CAONxwYMpwB32gJi892ed301r9A9fVEHiHRfZv2=HSYcPOLr1-g@mail.gmail.com>
 <20121008205857.GV1322@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Mon, 8 Oct 2012 23:18:17 +0200
Message-ID: <CAONxwYP8rz98fWZ0-kYzcxK9o+x7OCG2g=bMzm1sjFsSsWqCAw@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/10] ARM i.MX25: Enable all needed clocks during startup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>> > +                       base + CCM_CGCR0);
>> > +
>> > +       writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
>> > +                       (1 << 15) | (1 << 19) | (1 << 20) | (1 << 21) | (1 << 22) |
>> > +                       (1 << 26) | (1 << 29) | (1 << 31),
>> > +                       base + CCM_CGCR1);
>> > +
>> > +       writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
>> > +                       (1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
>> > +                       base + CCM_CGCR2);
>>
>> Quite a change from writing 0x15692B58 (sum) to CGCR0, enabling PER
>> clocks esdhc1, esdhc2, i2c, nfc, owire, sim1, ssi1, and AHB clocks
>> ata, emi, esdhc1, esdhc2, lcdc, sdma, usbotg, to now enabling the
>> following clocks:
>>
>> PER: esdhc1, esdhc2, i2c, nfc, owire, pwm(!), uart (!)
>> AHB: emi, esdhc1, esdhc2, fec, lcdc, usbotg
>>
>> Why not enable all clocks (i.e. sim1, sim2, ssi1, ssi2)? Maybe because
>> we have no drivers (yet)?
>
> I really hope we do not get sound support in barebox...

Famous last words ... some marketing executive will find a reason to
do so in the future ;).

On a more serious note, I have in the past worked as a freelancer on a
project where they used sim1 and sim2, albeit there was no
functionality implemented into the boot loader. So I reckon your clock
enable selection is fine as is.

>> Or does it not matter, because each platform
>> driver is required to set the clocks anyway in the init routine?
>
> No, the strategy I want to follow is that we enable all necessary clocks
> for barebox during startup. Barebox normally does not run long enough to
> waste a significant amount og energy. The kernel will turn of the
> unneeded clocks anyway, so I think it's just not worth the effort (and
> binary size) to add proper clk gate support.

Fair enough.

>> IPG: cspi1, cspi2, cspi3, esdhc1, esdhc2, fec, gpt1, gpt2, gpt3, gpt4,
>> iim, LCDC_EN, pwm1, pwm2, pwm3, pwm4, spba, tsc, uart1, uart2, uart3,
>> uart4, uart5.
>
> Ok, can add this.

Cheers
Roberto

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
