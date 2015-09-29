Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22a.google.com ([2607:f8b0:4001:c06::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zgz5u-0004BK-4h
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 17:53:38 +0000
Received: by iofb144 with SMTP id b144so19736749iof.1
 for <barebox@lists.infradead.org>; Tue, 29 Sep 2015 10:53:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150929073225.GQ7858@pengutronix.de>
References: <1443064645-4007-1-git-send-email-andrew.smirnov@gmail.com>
 <1443086443.8476.7.camel@pengutronix.de>
 <20150929073225.GQ7858@pengutronix.de>
Date: Tue, 29 Sep 2015 10:53:17 -0700
Message-ID: <CAHQ1cqGL1_ge=xpv1n8AS5X0DAVXhPSevrXoT5761wARSNuvug@mail.gmail.com>
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
Subject: Re: [PATCH] arm: Disable unaligned access if MMU is switched off
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>
> Even with MMU enabled in the config we still run some initial portions
> of the code with MMU disabled, so it seems safer to enable this option
> unconditionally.
> On the other hand disabling unaligned accesses makes the image around
> 1.5% bigger (tested with imx_v7_defconfig), so the compiler really makes
> use of this option.
> Ok, better safe than sorry, so I vote for always passing
> -mno-unaligned-accesses.

OK, sounds good, I'll update the patch and send the second version shortly.

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
