Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22c.google.com ([2607:f8b0:4001:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsCMV-0005G4-7B
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 16:17:07 +0000
Received: by igpw7 with SMTP id w7so15170910igp.0
 for <barebox@lists.infradead.org>; Fri, 30 Oct 2015 09:16:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151030072007.GY25308@pengutronix.de>
References: <1446057278-20538-1-git-send-email-andrew.smirnov@gmail.com>
 <1446057278-20538-2-git-send-email-andrew.smirnov@gmail.com>
 <20151030072007.GY25308@pengutronix.de>
Date: Fri, 30 Oct 2015 09:16:45 -0700
Message-ID: <CAHQ1cqFFKvu3V_eJy31nbTKqwX3mtKgQmZKiDfYoY22_=wVE9A@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/2] arm/cpu/start.c: Distil some common code in
 __start().
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>
> Previously we knew that the pointer barebox_arm_machine() works on is a
> machine type entry and we knew that the pointer returned from
> barebox_arm_boot_dtb() is a dtb. With this patch both are share the same
> pointer so we would have to check if the result returned from
> barebox_arm_boot_dtb() is actually a dtb. That's not so nice.

That is only partially true. The code before this patch assigned the
value of `boarddata` to `barebox_boarddata` unconditionally before it
did any checks of the contents validity, so there were no real
guarantees about barebox_arm_machine().

And we can add those checks to the code of barebox_arm_machine() and
barebox_arm_boot_dtb() and restore the original semantics.

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
