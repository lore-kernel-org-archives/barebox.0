Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEjSA-0001dl-Si
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 16:18:16 +0000
Received: by bkcji2 with SMTP id ji2so1236484bkc.36
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 09:18:13 -0700 (PDT)
Message-ID: <505B41C6.5010907@gmail.com>
Date: Thu, 20 Sep 2012 18:18:14 +0200
From: Carlo Caione <carlo.caione@gmail.com>
MIME-Version: 1.0
References: <n> <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348155606.3514.21.camel@coredoba.hi.pengutronix.de>
In-Reply-To: <1348155606.3514.21.camel@coredoba.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: barebox-request <barebox@lists.infradead.org>

On 20/09/2012 17:40, Jan L=FCbbe wrote:
> Hi,
>
> I've tried your patches and the boot fine:

[cut]

> The first patch has some white-space warnings which should be fixed:
>  $ git am ~/\[PATCH_1_2\]_Add_bcm2835_Raspberry-Pi_support.mbox
> Applying: Add bcm2835/Raspberry-Pi support
> /ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:358:
> trailing whitespace. .rate =3D UART0_CLOCK,
> /ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:410: space
> before tab in indent. uint32_t rstc;
> /ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:411:
> trailing whitespace.
>
> /ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:415:
> trailing whitespace.
>
> /ptx/work/dude/jlu/raspi/barebox/.git/rebase-apply/patch:595:
> trailing whitespace.
>
> warning: squelched 1 whitespace error warning: 6 lines add
> whitespace errors.
>
> So feel free to add my Tested-By for the cleaned-up version:
> Tested-By: Jan Luebbe <jlu@pengutronix.de>

Thank you for testing it.
I'll fix the whitespace errors in the next patches.

Best,

--
Carlo Caione

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
