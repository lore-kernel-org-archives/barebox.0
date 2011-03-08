Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwuzm-0001QQ-F9
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:22:32 +0000
Date: Tue, 8 Mar 2011 13:22:18 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110308112217.GD22012@jasper.tkos.co.il>
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

Hi Vanalme,

On Tue, Mar 08, 2011 at 11:09:57AM +0100, Vanalme Filip wrote:
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
> 
> Maybe a tab/space related issue ?

Works for me (using the CodeSourcery toolchain):

$ cat baretest.c 
__asm__ (".text\n"
        ".globl _start\n"
        "_start:\n"
        "ldr    sp, =0xA7E00000\n"
        "bl     main\n"
        "stop:\n"
        "b      stop\n"
        );

int main (int argc, char *argv[])
{
        return 0;
}
$ arm-none-linux-gnueabi-gcc -Wall -Os -nostdlib baretest.c -o baretest.elf -Wl,-Ttext=0x78000000
$ arm-none-linux-gnueabi-objdump -S baretest.elf 

baretest.elf:     file format elf32-littlearm


Disassembly of section .text:

78000000 <_start>:
78000000:   e59fd00c    ldr sp, [pc, #12]   ; 78000014 <main+0x8>
78000004:   eb000000    bl  7800000c <main>

78000008 <stop>:
78000008:   eafffffe    b   78000008 <stop>

7800000c <main>:
7800000c:   e3a00000    mov r0, #0
78000010:   e12fff1e    bx  lr
78000014:   a7e00000    .word   0xa7e00000

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
