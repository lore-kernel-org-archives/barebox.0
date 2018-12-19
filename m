Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZa1y-00012e-Qq
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 11:28:53 +0000
References: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
 <20181218140606.lmubb4dff77khwgq@pengutronix.de>
 <87mup229o8.fsf@dell.be.48ers.dk>
 <7c265230ded826f59b0a4e16f90abd6ec5d6c4a2.camel@pengutronix.de>
 <87efad2a3k.fsf@dell.be.48ers.dk>
From: Rouven Czerwinski <rouven@czerwinskis.de>
In-reply-to: <87efad2a3k.fsf@dell.be.48ers.dk>
Date: Wed, 19 Dec 2018 12:28:36 +0100
Message-ID: <871s6ddacb.fsf@czerwinskis.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v5 0/9] Raspberry Pi miniuart support
To: Peter Korsgaard <peter@korsgaard.com>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>


Peter Korsgaard <peter@korsgaard.com> writes:

>>>>>> "Rouven" == Rouven Czerwinski <r.czerwinski@pengutronix.de> writes:
>
> Hi,
>
>  >> >> v5:
>  >> >> - Add defines for register and base values
>  >> >> from Sascha Hauer and Roland Hieber
>  >> 
>  >> > Applied, thanks
>  >> 
>  >> Where did those defines actually go? I still see a bunch of magic
>  >> values.
>  >> 
>  > They are either contained directly in the original patch (for 5/9) or
>  > in the new 9/9 patch.
>
> Sorry, I don't follow. I still see magic values in E.G.:
>
> 97818de1a3d serial_ns16550: add raspberry pi compatible and init
> 776de843636 ARM: rpi: retrieve miniuart clock from firmware
>
> Wasn't this comment about replacing them with sensible defines?

Looking at the patches again the change to defines for the AUX Clock
domain was squashed into the wrong commit.

I'll resend the corrected version.

Thanks for noticing.

- Rouven

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
