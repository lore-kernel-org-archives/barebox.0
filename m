Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-x22d.google.com ([2607:f8b0:400e:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEoyn-0001pM-L4
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 22:44:35 +0000
Received: by mail-da0-f45.google.com with SMTP id v40so615951dad.18
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 15:44:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130310223510.GR1906@pengutronix.de>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
 <1362871182-25726-5-git-send-email-vicencb@gmail.com>
 <20130310131601.GA11170@game.jcrosoft.org>
 <CAAMcf8AGOExgear8jxE7fLBvHB2emnWffZ5hfXE1U6LgwfqOGw@mail.gmail.com>
 <20130310223510.GR1906@pengutronix.de>
Date: Sun, 10 Mar 2013 23:44:31 +0100
Message-ID: <CAAMcf8Afx3XxD5okHu7FiAJs8JPD+E7PSZVC3MGUryOz+GMTwQ@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/9] omap_uart: add low level port serial initialization
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 11:35 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Mar 10, 2013 at 11:16:00PM +0100, vj wrote:
>> On Sun, Mar 10, 2013 at 2:16 PM, Jean-Christophe PLAGNIOL-VILLARD
>> <plagnioj@jcrosoft.com> wrote:
>> > On 00:19 Sun 10 Mar     , Vicente Bergas wrote:
>> >>  some sort of UART setup has to be done in order to use PUTC_LL
>> >>
>> >> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>> >> ---
>> >>  arch/arm/mach-omap/include/mach/debug_ll.h | 21 +++++++++++++++++++++
>> >>  1 file changed, 21 insertions(+)
>> >>
>> >> diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
>> >> index eea6eb3..9740848 100644
>> >> --- a/arch/arm/mach-omap/include/mach/debug_ll.h
>> >> +++ b/arch/arm/mach-omap/include/mach/debug_ll.h
>> >> @@ -45,9 +45,30 @@
>> >>  #endif
>> >>
>> >>  #define LSR_THRE     0x20    /* Xmit holding register empty */
>> >> +#define LCR_BKSE     0x80    /* Bank select enable */
>> >>  #define LSR          (5 << 2)
>> >>  #define THR          (0 << 2)
>> >> +#define DLL          (0 << 2)
>> >> +#define IER          (1 << 2)
>> >> +#define DLM          (1 << 2)
>> >> +#define FCR          (2 << 2)
>> >> +#define LCR          (3 << 2)
>> >> +#define MCR          (4 << 2)
>> >> +#define MDR          (8 << 2)
>> >>
>> >> +static inline void INIT_LL(void)
>> > where this come from?
>>
>> This comes from drivers/serial/serial_ns16550.c: ns16550_serial_init_port
>> ns16550_serial_init_port call other functions and has local variables,
>> so a stack is required
>> INIT_LL instead is an extremly simple inline function without local
>> variables, so it can be called at the very beginning
>>
>> from include/debug_ll.h:
>> "Note that several SoCs expect the UART to be initialized by a
>> debugger or a first stage bootloader."
>> INIT_LL implements the second option.
>>
>> I have a question regarding code executed at the very beginning, that
>> is, when the stack may not be available or the binary is not at it's
>> link address
>> What are the things that can't be done in such scenario?
>> For example, from include/debug_ll.h:
>> "Be careful with PUTS_LL, it only works if the binary is running at
>> the link address which often is not the case during early startup."
>> static __inline__ void PUTS_LL(const char * str)
>> {
>>       while (*str) {
>>               if (*str == '\n') {
>>                       PUTC_LL('\r');
>>               }
>>               PUTC_LL(*str);
>>               str++;
>>       }
>> }
>> What does PUTS_LL do that can't be done?
>
> You can't access global variables at that state. They are
> addressed with their absolute address which will not be correct
> when you are not running at the linked address. You can simply
> verify that by doing a PUTHEX_LL("somestring"); You will see
> the address the string is located when running from the correct
> address.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

So the problem is not with PUTS_LL, it's with who calls it that should
modify the string pointer accordingly.
And what are the limitations of not having stack? local variables,
calling non-inline functions, more?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
