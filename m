Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.26.mail-out.ovh.net ([46.105.40.147] helo=26.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PzBhL-0002Az-Vp
	for barebox@lists.infradead.org; Mon, 14 Mar 2011 17:36:53 +0000
Date: Mon, 14 Mar 2011 18:31:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110314173104.GC14548@game.jcrosoft.org>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
	<20110308054006.GA22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B011E5@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0120B@SRV-VS06.TELEVIC.COM>
	<20110308112217.GD22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01280@SRV-VS06.TELEVIC.COM>
	<20110308180836.GA2677@tarshish>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B012BB@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01573@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01573@SRV-VS06.TELEVIC.COM>
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

On 15:55 Mon 14 Mar     , Vanalme Filip wrote:
> Hi,
> =

> Would I have to change a lot if I would like to use standard libraries (e=
.g. stdio for printf and sprint) in my test app ?
I think of two ways

1) you could integrate in barebox the app implentation of u-boot
	in dir api and examples / api / =

	this will allow to run application in barebox and be able to use
	the std lib probide by barebox

2) re-implement them

Best Regards,
J.
> =

> =

> Filip
> =

> =

> > -----Original Message-----
> > From: barebox-bounces@lists.infradead.org [mailto:barebox-
> > bounces@lists.infradead.org] On Behalf Of Vanalme Filip
> > Sent: woensdag 9 maart 2011 9:29
> > To: Baruch Siach
> > Cc: barebox@lists.infradead.org
> > Subject: RE: test app
> > =

> > > -----Original Message-----
> > > From: Baruch Siach [mailto:baruch@tkos.co.il]
> > > Sent: dinsdag 8 maart 2011 19:09
> > > To: Vanalme Filip
> > > Cc: barebox@lists.infradead.org
> > > Subject: Re: test app
> > >
> > > Hi Vanalme,
> > >
> > > On Tue, Mar 08, 2011 at 04:52:49PM +0100, Vanalme Filip wrote:
> > > > Compiling and linking seems to work well now. When I dump the .elf,=
 I see
> > > > that the start address is 0xA7E00000. That's what I wanted.
> > > > However, when loading the app in ram and executing it, I see that i=
t tries to
> > start
> > > from 0xA0000000 (this is the base address of the RAM section) :
> > > >
> > > > barebox:/test tftp testapp.bin
> > > > TFTP from server 10.0.48.80 ('testapp.bin' -> 'testapp.bin')
> > > >
> > > > barebox:/test cp testapp.bin /dev/ram0
> > > > barebox:/test go /dev/ram0
> > > > ## Starting application at 0xA0000000 ...
> > > > ?=B6/=FF'.e=A2=D3=F8=AD=F1_
> > > >
> > > > _=F8=FD=E0=F5=D2=FF=A0=EFO
> > > >           =FFO=FF=F0z=FE=F0=F6=E0=FE=A0A'}=AE=FF
> > > > =F9=FD"=F5=FF?O=BFPP=BC@Y
> > > >              }=B8m
> > > >                =D7=B4=EF@=EF=F0x`G-/
> > > >
> > > >
> > > > Should I specify an address when executing 'go' or 'cp' ? Isn't it =
loading the
> > app
> > > always at the beginning of the RAM space, i.e. 0xA0000000 ?
> > >
> > > Is 0xA0000000 the beginning of you external RAM?
> > =

> > =

> > [Filip]  yes.
> > I meanwhile adjusted Makefile and test app source code to start from ad=
dress
> > 0xA0000000. This seem to work well. My test app is running now.
> > Because it's just a test app, I think it's OK to put it at the beginnin=
g of the external
> > RAM (so at address 0xA0000000). No use in trying to move it to another =
region in
> > the external RAM, is it ?
> > =

> > >
> > > Note that in my example I used /dev/sram0 (on-chip 128K SRAM), not /d=
ev/ram0
> > > (external DDR2 RAM).
> > >
> > > baruch
> > >
> > =

> > [Filip] If I'm right (have to verify though), i.MX27 does not have any =
SRAM on
> > board. So, I guess external RAM will be the only option. Because the te=
st app
> > resides in the external RAM, it won't be possible to test the whole RAM=
. But I think
> > we can live with that limitation.
> > =

> > Thanks !
> > =

> > Filip
> > > --
> > >                                                      ~. .~   Tk Open =
Systems
> > > =3D}------------------------------------------------ooO--U--Ooo------=
------{=3D
> > >    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
