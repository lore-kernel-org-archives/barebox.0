Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfWCO-00074o-Li
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 18:59:22 +0000
Date: Wed, 9 Aug 2017 14:58:53 -0400
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Message-ID: <20170809185853.lvlar7vyder6supt@gportay>
References: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
 <0ec3c31c-1ede-6108-28bc-af15ab67d0f9@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ec3c31c-1ede-6108-28bc-af15ab67d0f9@rempel-privat.de>
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
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Hi,

On Wed, Aug 09, 2017 at 08:05:57AM +0200, Oleksij Rempel wrote:
> Am 09.08.2017 um 06:13 schrieb Ga=EBl PORTAY:
> > Dear maintainers,
> > =

> > I came accross this issue when I was trying to add support for a new MI=
PS
> > board.
> =

> Just out of curiosity, what MIPS board are you working on? If it is not
> a secret :)
> =


I am working on VoCore2[1]; it is a board based on a mediatek mt7628 CPU.

I am doing this to learn myself how works barebox =


Offtopic: For now it is booting on a really really old version of u-boot. I=
 am
able de boot barebox from u-boot. I had to hack the mips_disable_interrupts=
 to
remove the reset of flag ERL in CP0; but I don't know why yet. This flag is
supposed to be set when CPU reboots; but because I am running barebox from =
a the
command go of u-boot, this flag is unset.

Are you able to re-run barebox from barebox on your MIPS board?

	.macro	mips_disable_interrupts
	.set	push
	.set	noreorder
	mfc0	k0, CP0_STATUS
-	li	k1, ~(ST0_ERL | ST0_IE)
+	li	k1, ~ST0_IE
	and	k0, k1
	mtc0	k0, CP0_STATUS
	.set	pop
	.endm

For now, I have splitted mips_disable_interrupts into two macros. The second
macro mips_reset_error_level checks if the ERL flag is armed before resetti=
ng it
to 0.

	.macro	mips_reset_error_level
	.set	push
	.set	noreorder
	mfc0	k0, CP0_STATUS
	li	k1, ST0_ERL
	and	k1, k0
	bne	k1, zero, 1f
	li	k1, ~(ST0_ERL)
	and	k0, k1
	mtc0	k0, CP0_STATUS
1:	.set	pop
	.endm

But I don't know if this is the right thing to do.
 =

[1]: https://www.indiegogo.com/projects/vocore2-4-coin-sized-linux-computer=
-with-wifi#/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
