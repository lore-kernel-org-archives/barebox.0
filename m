Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x230.google.com ([2607:f8b0:4002:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4DN8-0004TG-Dh
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 20:51:59 +0000
Received: by mail-yw0-x230.google.com with SMTP id r204so195111618ywb.0
 for <barebox@lists.infradead.org>; Tue, 08 Nov 2016 12:51:38 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161108075317.j4xkf7zpkdfyt5y3@pengutronix.de>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
 <20161104071821.jqrhtfmgz3432527@pengutronix.de>
 <CAKZffXHVZ9tvhcgVz=fWciYQr98wrZjZbxiL4QQJEP8DzGuz7Q@mail.gmail.com>
 <20161107074346.pb4uivigwa5gbj6z@pengutronix.de>
 <CAKZffXG6vuJjaQqB9QYSMeSocWZY33vFLSrWfCFf=0ATMM1fkQ@mail.gmail.com>
 <20161108075317.j4xkf7zpkdfyt5y3@pengutronix.de>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
Date: Tue, 8 Nov 2016 21:51:36 +0100
Message-ID: <CAKZffXG5CG9R8e4xoMdP6DFJq42ng5EQqwmhafikNn6HNzuedQ@mail.gmail.com>
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

> So you have 512MiB on each chip select, so I assume that on the 512MiB
> board variants CS1 is not equipped.

Yes, it is.

>In that case you can in lowlevel.c
> test if you find SDRAM on CS1 and if not, disable the chip select
> completely in the SDRAM controller.

OK. But how ? I enable CS0 and CS1 on DCD table. Is there any way to
tell barebox not to use CS1 ?

> I am not sure how you can detect if there's SDRAM on CS1. I've seen
> situations in which the board just hangs if you access non existent RAM
> areas.

I have tried it, but I have not be able to implement a code for
autodetect. If the code write or read a value on a position without
physical  chip, the microcontroller hangs. ????

But it's not a problem. A solution is configure both CS and MMU. If
bootloader don't access to high positions, there is not problem. After
I set a environment variable with memory size and the mem kernel
parameter (or ATAG) does the rest.

So, I have to make sure Barebox don't reach CS1 memory positions. That is all.

Thanks for your help. See you later.


-- 

jlz.3008  a t  gmail.com
Linux Counter 172551
https://linuxcounter.net/cert/172551.png

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
