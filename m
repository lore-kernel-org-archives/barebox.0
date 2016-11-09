Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x232.google.com ([2607:f8b0:4002:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4KQ9-0006pv-MG
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 04:23:34 +0000
Received: by mail-yw0-x232.google.com with SMTP id i145so104597404ywg.2
 for <barebox@lists.infradead.org>; Tue, 08 Nov 2016 20:23:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161108212434.gvlq5fy6vrbn2en5@pengutronix.de>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
 <20161104071821.jqrhtfmgz3432527@pengutronix.de>
 <CAKZffXHVZ9tvhcgVz=fWciYQr98wrZjZbxiL4QQJEP8DzGuz7Q@mail.gmail.com>
 <20161107074346.pb4uivigwa5gbj6z@pengutronix.de>
 <CAKZffXG6vuJjaQqB9QYSMeSocWZY33vFLSrWfCFf=0ATMM1fkQ@mail.gmail.com>
 <20161108075317.j4xkf7zpkdfyt5y3@pengutronix.de>
 <CAKZffXG5CG9R8e4xoMdP6DFJq42ng5EQqwmhafikNn6HNzuedQ@mail.gmail.com>
 <20161108212434.gvlq5fy6vrbn2en5@pengutronix.de>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
Date: Wed, 9 Nov 2016 05:23:10 +0100
Message-ID: <CAKZffXFjLerW8jK2m82znqH+Mc_9X9C4s7SVJHGyHdnV0R0q_Q@mail.gmail.com>
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
Subject: Re: Configure RAM size on iMX53 board
To: barebox@lists.infradead.org

There is no form of detection. UBoot (a very old version) don't use
any CS1 address, except with the memtest command.
If memtest command is executed with 512MB version, UBoot hangs, as expected.
I set the mem kernel parameter using a environment variable and kernel
can reach CS1 memory.


2016-11-08 22:24 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Tue, Nov 08, 2016 at 09:51:36PM +0100, Jose Luis Zabalza wrote:
>> > So you have 512MiB on each chip select, so I assume that on the 512MiB
>> > board variants CS1 is not equipped.
>>
>> Yes, it is.
>>
>> >In that case you can in lowlevel.c
>> > test if you find SDRAM on CS1 and if not, disable the chip select
>> > completely in the SDRAM controller.
>>
>> OK. But how ? I enable CS0 and CS1 on DCD table. Is there any way to
>> tell barebox not to use CS1 ?
>>
>> > I am not sure how you can detect if there's SDRAM on CS1. I've seen
>> > situations in which the board just hangs if you access non existent RAM
>> > areas.
>>
>> I have tried it, but I have not be able to implement a code for
>> autodetect. If the code write or read a value on a position without
>> physical  chip, the microcontroller hangs. ????
>>
>> But it's not a problem. A solution is configure both CS and MMU. If
>> bootloader don't access to high positions, there is not problem. After
>> I set a environment variable with memory size and the mem kernel
>> parameter (or ATAG) does the rest.
>
> You said that both board variants work with the same U-Boot binary, how
> does it work there? Is there some detection mechanism or is it only some
> environment variable that you have to set manually?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



-- 
jlz.3008  a t  gmail.com
Linux Counter 172551
https://linuxcounter.net/cert/172551.png

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
