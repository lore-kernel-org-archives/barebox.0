Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q1hhV-0006ti-U2
	for barebox@lists.infradead.org; Mon, 21 Mar 2011 16:11:27 +0000
Message-ID: <4D8778A6.3000503@eukrea.com>
Date: Mon, 21 Mar 2011 17:11:18 +0100
From: =?windows-1252?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF5211@SRV-VS06.TELEVIC.COM>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: NAND flash
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

On 21/03/2011 16:19, Vanalme Filip wrote:
> On our own i.MX27 based boards, we have Micron NAND flash memory
> (MT29F2G08ABBEAH4). Besides the BI-swapping problem for 2K NAND flashes, =
I can
> see that this chip needs an initial reset command before it becomes
> operational. This is something that has to be done in the early boot code=
, so
> before loading the first page of bootloader code (the reset should be sent
> before the first page of code can be read from flash).
>
>  From Freescale doc, I found that we have to blow certain fuses to make t=
he
> i.MX27 boot from internal ROM. According to the document, the ROM code ta=
kes
> care about the initial reset before loading the first page of code from t=
he
> NAND flash.
>
> I=92m however a little concerned about this figure in the document :
>
> If I understand well, this should be the structure of the 2K NFC buffer w=
hen
> booting from internal ROM. I don=92t think this will be the structure when
> loading the first page of Barebox code, correct ?
>
> Anyone familiar with this Micron specific flash problem ? And the consequ=
ences
> for Barebox ? Do we have to make modifications in the Barebox code to tac=
kle
> this ?
>
> (because the Freescale document is rather WinCE related, I=92m not sure t=
his
> also applies to Barebox/Linux based systems=85)
>
> I hope we didn=92t make a bad choice of NAND flash in combination with i.=
MX27=85 ? ;-)
>
this may be the case as unless this has changed recently, flash requiring a =

reset command can't be used on i.MX27 for nand boot without extra logic as =
the =

internal bootrom doesn't send this reset command.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
