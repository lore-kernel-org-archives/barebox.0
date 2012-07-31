Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpsmtpb-ews10.kpnxchange.com ([213.75.39.15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SwA27-0006UK-H0
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 10:50:36 +0000
Message-ID: <5017B839.7070806@erwinrol.com>
Date: Tue, 31 Jul 2012 12:49:29 +0200
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
References: <50170C6A.2000101@erwinrol.com>
In-Reply-To: <50170C6A.2000101@erwinrol.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: x86 weirdness
To: barebox@lists.infradead.org

Hey x86-asm-experts,

On 31-7-2012 0:36, Erwin Rol wrote:
> Hallo,
>
> after I had successfully "ported" barebox to about 5 different embedded
> x86 (mostly N270 and Z510 Atom boards) I ran into problems with a
> Celeron SU2300 CPU based board. After a lot of trail and error, which
> included the implementation of a BIOS based console cause the board does
> not have a RS232 port, it looked like the global variables were not what
> I expected them to be, namely zero.
>
> So in arch/x86/boot/main_entry.c i changed to following;
>
> /**
>    * Called plainly from assembler that switches from real to flat mode
>    *
>    * @note The C environment isn't initialized yet
>    */
> void uboot_entry(void)
> {
> #if 0
>           /* clear the BSS first */
>           memset(__bss_start, 0x00, __bss_stop - __bss_start);
> #else
>           unsigned char* ptr;
>           for (ptr = __bss_start; ptr < __bss_stop; ptr++)
>                   *ptr = 0x00;
> #endif
>
>
>           start_barebox();
> }
>
>
> After doing that it works. I have not yet looked into the resulting asm
> to find the differences, but could someone have an explanation for why
> the memset doesn't work and the simple loop does work?

So when I use the memset code the asm looks like this below. As you can 
see the memset gets its 3 parameters from the stack (see comments below 
in the asm src). But when you look at the location when memset is called 
it looks like the caller tries to pass the parameters in registers. 
After looking into the Makefile I noticed the arch/x86/boot/* sources 
get compiled with -mregparm=3, but the other sources use normal calling 
convention. This means code from arch/x86/boot/* can not call any other 
barebox functions when they are not of type void f(void). The file 
arch/x86/boot/regs.c also calls memset but it seems the compiler notices 
that regs.c is 16bit code and so it inlines a 16bit memset version (I at 
least don't see a call function).

Is there any GCC or LD magic we can use to prevent error like this? 
Wouldn't it be better to _not_ change the calling convention in the 
Makefile, but mark the functions that need it with __attribute__ ?

00023e98 <in_pm32>:
    23e98:       8e d9                   mov    %ecx,%ds
    23e9a:       8e c1                   mov    %ecx,%es
    23e9c:       8e e1                   mov    %ecx,%fs
    23e9e:       8e e9                   mov    %ecx,%gs
    23ea0:       8e d1                   mov    %ecx,%ss
    23ea2:       bc c8 f8 03 00          mov    $0x3f8c8,%esp
    23ea7:       0f 00 df                ltr    %di
    23eaa:       31 c9                   xor    %ecx,%ecx
    23eac:       31 d2                   xor    %edx,%edx
    23eae:       31 db                   xor    %ebx,%ebx
    23eb0:       31 ed                   xor    %ebp,%ebp
    23eb2:       31 ff                   xor    %edi,%edi
    23eb4:       0f 00 d1                lldt   %cx
    23eb7:       e9 00 00 00 00          jmp    23ebc <uboot_entry>
00023ebc <uboot_entry>:
// calculate (3rd parameter) size and put it in %ecx
    23ebc:       b9 c8 78 03 00          mov    $0x378c8,%ecx
    23ec1:       81 e9 70 a2 02 00       sub    $0x2a270,%ecx
// clear %edx (2nd paremeter)
    23ec7:       31 d2                   xor    %edx,%edx
// start address in %eax (1st parameter)
    23ec9:       b8 70 a2 02 00          mov    $0x2a270,%eax
    23ece:       e8 e6 0b ff ff          call   14ab9 <memset>
    23ed3:       e9 4c a4 fe ff          jmp    e324 <start_barebox>

00014ab9 <memset>:
    14ab9:       55                      push   %ebp
    14aba:       89 e5                   mov    %esp,%ebp
    14abc:       53                      push   %ebx
// get parameter 1 (dst address)
    14abd:       8b 45 08                mov    0x8(%ebp),%eax	
// get parameter 2 (src byte to fill)
    14ac0:       8b 5d 0c                mov    0xc(%ebp),%ebx
// get parameter 3 (size)
    14ac3:       8b 4d 10                mov    0x10(%ebp),%ecx
    14ac6:       31 d2                   xor    %edx,%edx
    14ac8:       eb 04                   jmp    14ace <memset+0x15>
    14aca:       88 1c 10                mov    %bl,(%eax,%edx,1)
    14acd:       42                      inc    %edx
    14ace:       39 ca                   cmp    %ecx,%edx
    14ad0:       75 f8                   jne    14aca <memset+0x11>
    14ad2:       5b                      pop    %ebx
    14ad3:       5d                      pop    %ebp
    14ad4:       c3                      ret
















_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
