Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22b.google.com ([2607:f8b0:4002:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBjbW-0007uJ-JB
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 12:00:40 +0000
Received: by mail-yk0-f171.google.com with SMTP id 19so4611489ykq.2
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 05:00:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1406543035.13346.11.camel@ted>
References: <1406541304-18741-1-git-send-email-freesilicon@gmail.com>
 <1406543035.13346.11.camel@ted>
Date: Mon, 28 Jul 2014 14:00:07 +0200
Message-ID: <CAKRNOGwGr3BM8FTMoqjNQ+p0tFKUj55RdyL+0wemf_7f1r1UcQ@mail.gmail.com>
From: David Vincent <freesilicon@gmail.com>
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
Subject: Re: [OE-core] [PATCH] barebox: Add recipe
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: barebox@lists.infradead.org

Sorry, the patch alone was maybe a little harsh, I should have
submitted it as a RFC.
For me, this recipe was needed because I don't use u-boot as the
bootloader for my custom board but barebox. More generically, I know
that the meta-fsl-arm has also a recipe for barebox and since my board
was not based on a Freescale MPU but an Atmel one, I thought that the
work could be shared by the two layers in oe-core or, at least, in
meta-oe instead of being also redeveloped in meta-atmel or another BSP
layer.

Since barebox also supports many architectures like ARM, MIPS,
Blackfin,... and many vendors like Atmel, Freescale, TI,... I think it
provides a good alternative for the 'virtual/bootloader' task. People
who want to use it should not put more effort than what they need to
do for u-boot currently.

I've cc'ed the barebox mailing list for more technical details if needed.

Greetings,

David

2014-07-28 12:23 GMT+02:00 Richard Purdie <richard.purdie@linuxfoundation.org>:
> On Mon, 2014-07-28 at 11:55 +0200, David Vincent wrote:
>> barebox (formerly known as u-boot-v2) is a bootloader that inherits the
>> best of U-Boot and the Linux kernel. This commit adds the possibility to
>> use it as a virtual/bootloader instead of U-Boot.
>>
>> Signed-off-by: David Vincent <freesilicon@gmail.com>
>> ---
>>  meta/recipes-bsp/barebox/barebox.inc          |   73 +++++++++++++++++++++++++
>>  meta/recipes-bsp/barebox/barebox_2014.07.0.bb |   15 +++++
>>  2 files changed, 88 insertions(+)
>>  create mode 100644 meta/recipes-bsp/barebox/barebox.inc
>>  create mode 100644 meta/recipes-bsp/barebox/barebox_2014.07.0.bb
>
> I have to admit I don't know a lot about this. To make it into OE-Core
> we need some kind of story about why its necessary and commonly used.
> Are there a number of BSPs using this? Can you give some background to
> why this is needed?
>
> Cheers,
>
> Richard
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
