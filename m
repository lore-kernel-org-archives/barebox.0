Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Px1L3-0005Q0-H3
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 18:08:55 +0000
Date: Tue, 8 Mar 2011 20:08:36 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110308180836.GA2677@tarshish>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
	<20110308054006.GA22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B011E5@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0120B@SRV-VS06.TELEVIC.COM>
	<20110308112217.GD22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01280@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01280@SRV-VS06.TELEVIC.COM>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: test app
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Vanalme,

On Tue, Mar 08, 2011 at 04:52:49PM +0100, Vanalme Filip wrote:
> Compiling and linking seems to work well now. When I dump the .elf, I see =

> that the start address is 0xA7E00000. That's what I wanted.
> However, when loading the app in ram and executing it, I see that it trie=
s to start from 0xA0000000 (this is the base address of the RAM section) :
> =

> barebox:/test tftp testapp.bin
> TFTP from server 10.0.48.80 ('testapp.bin' -> 'testapp.bin')
> =

> barebox:/test cp testapp.bin /dev/ram0
> barebox:/test go /dev/ram0
> ## Starting application at 0xA0000000 ...
> ?=B6/=FF'.e=A2=D3=F8=AD=F1_
> =

> _=F8=FD=E0=F5=D2=FF=A0=EFO
>           =FFO=FF=F0z=FE=F0=F6=E0=FE=A0A'}=AE=FF
> =F9=FD"=F5=FF?O=BFPP=BC@Y
>              }=B8m
>                =D7=B4=EF@=EF=F0x`G-/
> =

> =

> Should I specify an address when executing 'go' or 'cp' ? Isn't it loadin=
g the app always at the beginning of the RAM space, i.e. 0xA0000000 ?

Is 0xA0000000 the beginning of you external RAM?

Note that in my example I used /dev/sram0 (on-chip 128K SRAM), not /dev/ram=
0 =

(external DDR2 RAM).

baruch

-- =

                                                     ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
