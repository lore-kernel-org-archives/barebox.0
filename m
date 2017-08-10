Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfgDc-00007c-HP
 for barebox@lists.infradead.org; Thu, 10 Aug 2017 05:41:19 +0000
Received: by mail-lf0-x243.google.com with SMTP id t128so5721621lff.3
 for <barebox@lists.infradead.org>; Wed, 09 Aug 2017 22:40:55 -0700 (PDT)
Date: Thu, 10 Aug 2017 08:51:46 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170810085146.f7d28709750f2181bad6e45c@gmail.com>
In-Reply-To: <20170809185853.lvlar7vyder6supt@gportay>
References: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
 <0ec3c31c-1ede-6108-28bc-af15ab67d0f9@rempel-privat.de>
 <20170809185853.lvlar7vyder6supt@gportay>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] readline_simple: return -1 if getc fails
To: =?ISO-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Wed, 9 Aug 2017 14:58:53 -0400
Ga=EBl PORTAY <gael.portay@savoirfairelinux.com> wrote:

> Hi,
> =

> On Wed, Aug 09, 2017 at 08:05:57AM +0200, Oleksij Rempel wrote:
> > Am 09.08.2017 um 06:13 schrieb Ga=EBl PORTAY:
> > > Dear maintainers,
> > > =

> > > I came accross this issue when I was trying to add support for a new =
MIPS
> > > board.
> > =

> > Just out of curiosity, what MIPS board are you working on? If it is not
> > a secret :)
> > =

> =

> I am working on VoCore2[1]; it is a board based on a mediatek mt7628 CPU.
> =

> I am doing this to learn myself how works barebox =


Please see this branch for mt7628:

  https://github.com/frantony/barebox/tree/20160815.mediatek



> =

> Offtopic: For now it is booting on a really really old version of u-boot.=
 I am
> able de boot barebox from u-boot. I had to hack the mips_disable_interrup=
ts to
> remove the reset of flag ERL in CP0; but I don't know why yet. This flag =
is
> supposed to be set when CPU reboots; but because I am running barebox fro=
m a the
> command go of u-boot, this flag is unset.
> =

> Are you able to re-run barebox from barebox on your MIPS board?
> =

> 	.macro	mips_disable_interrupts
> 	.set	push
> 	.set	noreorder
> 	mfc0	k0, CP0_STATUS
> -	li	k1, ~(ST0_ERL | ST0_IE)
> +	li	k1, ~ST0_IE
> 	and	k0, k1
> 	mtc0	k0, CP0_STATUS
> 	.set	pop
> 	.endm
> =

> For now, I have splitted mips_disable_interrupts into two macros. The sec=
ond
> macro mips_reset_error_level checks if the ERL flag is armed before reset=
ting it
> to 0.
> =

> 	.macro	mips_reset_error_level
> 	.set	push
> 	.set	noreorder
> 	mfc0	k0, CP0_STATUS
> 	li	k1, ST0_ERL
> 	and	k1, k0
> 	bne	k1, zero, 1f
> 	li	k1, ~(ST0_ERL)
> 	and	k0, k1
> 	mtc0	k0, CP0_STATUS
> 1:	.set	pop
> 	.endm
> =

> But I don't know if this is the right thing to do.
>  =

> [1]: https://www.indiegogo.com/projects/vocore2-4-coin-sized-linux-comput=
er-with-wifi#/
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
