Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwzDR-0004AG-Mj
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:52:54 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Tue, 8 Mar 2011 16:52:49 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01280@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
	<20110308054006.GA22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B011E5@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0120B@SRV-VS06.TELEVIC.COM>
	<20110308112217.GD22012@jasper.tkos.co.il>
In-Reply-To: <20110308112217.GD22012@jasper.tkos.co.il>
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
> Sent: dinsdag 8 maart 2011 12:22
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: test app
> =

> Hi Vanalme,
> =

> On Tue, Mar 08, 2011 at 11:09:57AM +0100, Vanalme Filip wrote:
> > As a start, I just took over your Makefile and a minimal source file :
> >
> > __asm__ (".text\n"
> >         ".globl _start\n"
> >         "_start:\n"
> >         "ldr    sp, =3D0xA7E00000\n"
> >         "bl     main\n"
> >         "stop:\n"
> >         "b      stop\n"
> >         );
> >
> > int main (int argc, char *argv[])
> > {
> > 	return 0;
> > }
> >
> > I think I might still miss something because the assembler part gives m=
e errors
> e.g.
> > 	" Error: no such instruction: 'ldr sp,=3D0xA7E00000' "
> > 	" Error: no such instruction: 'bl main' "
> > 	" Error: no such instruction: 'b stop' "
> >
> > Maybe a tab/space related issue ?
> =

> Works for me (using the CodeSourcery toolchain):
> =

> $ cat baretest.c
> __asm__ (".text\n"
>         ".globl _start\n"
>         "_start:\n"
>         "ldr    sp, =3D0xA7E00000\n"
>         "bl     main\n"
>         "stop:\n"
>         "b      stop\n"
>         );
> =

> int main (int argc, char *argv[])
> {
>         return 0;
> }
> $ arm-none-linux-gnueabi-gcc -Wall -Os -nostdlib baretest.c -o baretest.e=
lf -Wl,-
> Ttext=3D0x78000000
> $ arm-none-linux-gnueabi-objdump -S baretest.elf
> =

> baretest.elf:     file format elf32-littlearm
> =

> =

> Disassembly of section .text:
> =

> 78000000 <_start>:
> 78000000:   e59fd00c    ldr sp, [pc, #12]   ; 78000014 <main+0x8>
> 78000004:   eb000000    bl  7800000c <main>
> =

> 78000008 <stop>:
> 78000008:   eafffffe    b   78000008 <stop>
> =

> 7800000c <main>:
> 7800000c:   e3a00000    mov r0, #0
> 78000010:   e12fff1e    bx  lr
> 78000014:   a7e00000    .word   0xa7e00000
> =

> baruch
> =


[Filip] =


Baruch,

Compiling and linking seems to work well now. When I dump the .elf, I see t=
hat the start address is 0xA7E00000. That's what I wanted.
However, when loading the app in ram and executing it, I see that it tries =
to start from 0xA0000000 (this is the base address of the RAM section) :

barebox:/test tftp testapp.bin
TFTP from server 10.0.48.80 ('testapp.bin' -> 'testapp.bin')

barebox:/test cp testapp.bin /dev/ram0
barebox:/test go /dev/ram0
## Starting application at 0xA0000000 ...
?=B6/=FF'.e=A2=D3=F8=AD=F1_

_=F8=FD=E0=F5=D2=FF=A0=EFO
          =FFO=FF=F0z=FE=F0=F6=E0=FE=A0A'}=AE=FF
=F9=FD"=F5=FF?O=BFPP=BC@Y
             }=B8m
               =D7=B4=EF@=EF=F0x`G-/


Should I specify an address when executing 'go' or 'cp' ? Isn't it loading =
the app always at the beginning of the RAM space, i.e. 0xA0000000 ?

Filip

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
