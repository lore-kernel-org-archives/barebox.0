Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvJy-0001eC-65
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:43:23 +0000
Date: Tue, 8 Mar 2011 12:43:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110308114319.GU29521@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
	<20110308054006.GA22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B011E5@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0120B@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0120B@SRV-VS06.TELEVIC.COM>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: test app
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Mar 08, 2011 at 11:09:57AM +0100, Vanalme Filip wrote:
> > -----Original Message-----
> > From: barebox-bounces@lists.infradead.org [mailto:barebox-
> > bounces@lists.infradead.org] On Behalf Of Vanalme Filip
> > Sent: dinsdag 8 maart 2011 9:13
> > To: Baruch Siach
> > Cc: barebox@lists.infradead.org
> > Subject: RE: test app
> > 
> > Thank you Baruch ! Good starting point for my test app.
> > 
> > > -----Original Message-----
> > > From: Baruch Siach [mailto:baruch@tkos.co.il]
> > > Sent: dinsdag 8 maart 2011 6:40
> > > To: Vanalme Filip
> > > Cc: barebox@lists.infradead.org
> > > Subject: Re: test app
> > >
> > > Hi Vanalme,
> > >
> > > On Mon, Mar 07, 2011 at 02:05:32PM +0100, Vanalme Filip wrote:
> > > > We would like to have a kind of small test application, that can be
> > > > started from the barebox prompt, to do some basic tests on some hardware
> > > components.
> > > > What's the best way to do that ? E.g. can I add that test application
> > > > to the environment and would this be good practice ? Or do I better
> > > > extend the barebox commands with my own command to start the tests ?
> > > > Maybe there's an example on how to do it ?
> > >
> > > I'm using the attached program to do a simple RAM read/write test on i.MX25.
> > > This program runs on bare hardware from the internal chip SRAM, and doesn't
> > rely
> > > on the Barebox run-time code.  I only use Barebox to start this program.
> > >
> > > The program is built with the following Makefile rules:
> > >
> > > all: ramtest.bin
> > >
> > > %.bin: %.elf
> > >     ${OBJCOPY} -O binary $^ $@
> > >
> > > ramtest.elf: ramtest.c
> > >     ${CC} -Wall -Os -nostdlib $^ -o $@ -Wl,-Ttext=0x78000000
> > >
> > > Running this program from the Barebox prompt:
> > >
> > > cp ramtest.bin /dev/sram0
> > > go /dev/sram0
> > >
> > > I hope this helps.
> > >
> > > baruch
> > >
> 
> [Filip] 
> 
> As a start, I just took over your Makefile and a minimal source file :
> 
> __asm__ (".text\n"
>         ".globl _start\n"
>         "_start:\n"
>         "ldr    sp, =0xA7E00000\n"
>         "bl     main\n"
>         "stop:\n"
>         "b      stop\n"
>         );
> 
> int main (int argc, char *argv[])
> {
> 	return 0;
> }
> 
> I think I might still miss something because the assembler part gives me errors e.g. 
> 	" Error: no such instruction: 'ldr sp,=0xA7E00000' "
> 	" Error: no such instruction: 'bl main' "
> 	" Error: no such instruction: 'b stop' "

Just a guess, did you set $CC to your cross compiler?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
