Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PzS2Q-0008LL-6k
	for barebox@lists.infradead.org; Tue, 15 Mar 2011 11:03:43 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Tue, 15 Mar 2011 12:03:39 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF4F05@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
	<20110308054006.GA22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B011E5@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0120B@SRV-VS06.TELEVIC.COM>
	<20110308112217.GD22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01280@SRV-VS06.TELEVIC.COM>
	<20110308180836.GA2677@tarshish>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B012BB@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01573@SRV-VS06.TELEVIC.COM>
	<20110314180338.GA1950@nataf.siach.name>
In-Reply-To: <20110314180338.GA1950@nataf.siach.name>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: test app
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Baruch Siach [mailto:baruch@tkos.co.il]
> Sent: maandag 14 maart 2011 19:04
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: test app
> =

> Hi Vanalme,
> =

> On Mon, Mar 14, 2011 at 03:55:29PM +0100, Vanalme Filip wrote:
> > Hi,
> >
> > Would I have to change a lot if I would like to use standard libraries =
(e.g.
> > stdio for printf and sprint) in my test app ?
> =

> For printf you may use a standalone implementation, and just provide a pu=
tc()
> routine. See the following implementations:
> =

> http://www.sparetimelabs.com/tinyprintf/index.html
> http://www.menie.org/georges/embedded/
> =

> baruch

[Filip] =

Thanks for the information.

I guess this one is because I'm not an experienced programmer.... :

If I use a division operator or a modulo division operator in a static func=
tion, all compiles well. If I change the static function into a global func=
tion, I get following errors :
Undefined reference to '__aeabi_idiv'
Undefined reference to '__aeabi_idivmod'

The function looks basicly like this (just took the 'problem' part) :

static void testfunc (int row)
{
	char c[2];

	c[0] =3D row / 10 + '0';
	row %=3D 10;
	c[1] =3D row + '0';
}

This is how my Makefile looks like :	=


CC 			=3D $(CROSS_COMPILE)gcc
OBJCOPY		=3D $(CROSS_COMPILE)objcopy
OBJDUMP		=3D $(CROSS_COMPILE)objdump
AR			=3D $(CROSS_COMPILE)ar
AS			=3D $(CROSS_COMPILE)as
LD			=3D $(CROSS_COMPILE)ld

CFLAGS		=3D -Wall -Os -nostdlib -Wl,-Ttext=3D0xA0000000
OBJECTS		=3D testapp.o gpio.o uart.o time.o
SRCS		=3D $(OBJECTS:.o=3D.c)

all: testapp.bin

%.bin : %.elf
	$(OBJCOPY) -O binary $^ $@
	=

%.elf : $(SRCS)
	$(CC) $(CFLAGS) $^ -o $@
	$(OBJDUMP) -S $@ > dump	=

	=

.PHONY: clean	=

clean:
	rm -f *bin *elf $(OBJECTS)		=


I never encountered this problem before in other projects and I don't see w=
hy this is working in static functions and not in global functions.... =



Filip
> =

> > > -----Original Message-----
> > > From: barebox-bounces@lists.infradead.org [mailto:barebox-
> > > bounces@lists.infradead.org] On Behalf Of Vanalme Filip
> > > Sent: woensdag 9 maart 2011 9:29
> > > To: Baruch Siach
> > > Cc: barebox@lists.infradead.org
> > > Subject: RE: test app
> > >
> > > > -----Original Message-----
> > > > From: Baruch Siach [mailto:baruch@tkos.co.il]
> > > > Sent: dinsdag 8 maart 2011 19:09
> > > > To: Vanalme Filip
> > > > Cc: barebox@lists.infradead.org
> > > > Subject: Re: test app
> > > >
> > > > Hi Vanalme,
> > > >
> > > > On Tue, Mar 08, 2011 at 04:52:49PM +0100, Vanalme Filip wrote:
> > > > > Compiling and linking seems to work well now. When I dump the .el=
f, I see
> > > > > that the start address is 0xA7E00000. That's what I wanted.
> > > > > However, when loading the app in ram and executing it, I see that=
 it tries to
> > > start
> > > > from 0xA0000000 (this is the base address of the RAM section) :
> > > > >
> > > > > barebox:/test tftp testapp.bin
> > > > > TFTP from server 10.0.48.80 ('testapp.bin' -> 'testapp.bin')
> > > > >
> > > > > barebox:/test cp testapp.bin /dev/ram0
> > > > > barebox:/test go /dev/ram0
> > > > > ## Starting application at 0xA0000000 ...
> > > > > ?=B6/=FF'.e=A2=D3=F8=AD=F1_
> > > > >
> > > > > _=F8=FD=E0=F5=D2=FF=A0=EFO
> > > > >           =FFO=FF=F0z=FE=F0=F6=E0=FE=A0A'}=AE=FF
> > > > > =F9=FD"=F5=FF?O=BFPP=BC@Y
> > > > >              }=B8m
> > > > >                =D7=B4=EF@=EF=F0x`G-/
> > > > >
> > > > >
> > > > > Should I specify an address when executing 'go' or 'cp' ? Isn't i=
t loading the
> > > app
> > > > always at the beginning of the RAM space, i.e. 0xA0000000 ?
> > > >
> > > > Is 0xA0000000 the beginning of you external RAM?
> > >
> > >
> > > [Filip]  yes.
> > > I meanwhile adjusted Makefile and test app source code to start from =
address
> > > 0xA0000000. This seem to work well. My test app is running now.
> > > Because it's just a test app, I think it's OK to put it at the beginn=
ing of the
> external
> > > RAM (so at address 0xA0000000). No use in trying to move it to anothe=
r region
> in
> > > the external RAM, is it ?
> > >
> > > >
> > > > Note that in my example I used /dev/sram0 (on-chip 128K SRAM), not
> /dev/ram0
> > > > (external DDR2 RAM).
> > > >
> > > > baruch
> > > >
> > >
> > > [Filip] If I'm right (have to verify though), i.MX27 does not have an=
y SRAM on
> > > board. So, I guess external RAM will be the only option. Because the =
test app
> > > resides in the external RAM, it won't be possible to test the whole R=
AM. But I
> think
> > > we can live with that limitation.
> > >
> > > Thanks !
> > >
> > > Filip
> =

> --
>                                                      ~. .~   Tk Open Syst=
ems
> =3D}------------------------------------------------ooO--U--Ooo----------=
--{=3D
>    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
