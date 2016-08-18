Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x243.google.com ([2607:f8b0:400c:c08::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baIIA-00072C-O9
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 08:03:11 +0000
Received: by mail-ua0-x243.google.com with SMTP id u13so2314536uau.0
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 01:02:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160818063059.GD20657@pengutronix.de>
References: <CABDcavbrkt2q3cQ5Tzi3d0pU+Pm3v4S3OGzFo_aG_SNgmEgOnA@mail.gmail.com>
 <CABDcavYP7m5BvVk1Ki=uZe7GdSp8RGwMu_kCV-SQO2+0kb5_NQ@mail.gmail.com>
 <20160818063059.GD20657@pengutronix.de>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Date: Thu, 18 Aug 2016 10:02:48 +0200
Message-ID: <CABDcavYO3AtqLPuaDwtOfpm4Vs-qazrD8xzC4wu0wrJ8uL5mvw@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Fwd: Shouldn't boot_board be called from boot instead of init?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

2016-08-18 8:31 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi,
>
> On Tue, Aug 16, 2016 at 10:42:32AM +0200, Guillermo Rodriguez Garcia wrote:
>> Hello all,
>>
>> Currently, for defaultenv v1, the /env/bin/boot_board script is called
>> from /env/bin/init.
>>
>> However this means boot_board will not be run if booting manually (by
>> running 'boot' from the barebox console).
>>
>> Shouldn't this script be called from /env/bin/boot instead? If a board
>> needs any specific stuff to be done when booting, this probably
>> applies both when autobooting and when booting manually (otherwise,
>> anything that only applies only when autobooting could also be done
>> from init_board instead of boot_board).
>
> The only boot_board script we have is
> arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board. Here a menu is
> built which I think makes sense at that stage and not at init_board.

The thing is, if boot_board is called from init, then it will not be
called if autoboot is interrupted and you later boot manually with the
boot command.

We actually use boot_board to do some board-specific processing that
should be done both when autobooting and when booting "manually". The
way it is right now, this is not possible.

With the change I am proposing, boards such as at91sam9m10g45ek could
still do what they are doing now (just move the code to init_board
instead). Or, with some tweaking, perhaps it could even be left in
boot_board (with boot_board being called from boot).

Is this specific board the only objection to the change I am
proposing? If so I could try to come up with a patch which accomodates
this specific case. Or are there other, more general objections?

>
> However, I would be glad to get rid of defaultenv-1 rather sooner than
> later.

Uhm. I actually like defaultenv-1 better than defaultenv-2. Why not
keep both? Everyone can then make their choice :)

Regards,

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
