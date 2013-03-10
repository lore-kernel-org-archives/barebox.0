Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEoXC-0008Hp-Ra
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 22:16:03 +0000
Received: by mail-da0-f43.google.com with SMTP id u36so611037dak.2
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 15:16:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130310131601.GA11170@game.jcrosoft.org>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
 <1362871182-25726-5-git-send-email-vicencb@gmail.com>
 <20130310131601.GA11170@game.jcrosoft.org>
Date: Sun, 10 Mar 2013 23:16:00 +0100
Message-ID: <CAAMcf8AGOExgear8jxE7fLBvHB2emnWffZ5hfXE1U6LgwfqOGw@mail.gmail.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 2:16 PM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 00:19 Sun 10 Mar     , Vicente Bergas wrote:
>>  some sort of UART setup has to be done in order to use PUTC_LL
>>
>> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>> ---
>>  arch/arm/mach-omap/include/mach/debug_ll.h | 21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
>>
>> diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
>> index eea6eb3..9740848 100644
>> --- a/arch/arm/mach-omap/include/mach/debug_ll.h
>> +++ b/arch/arm/mach-omap/include/mach/debug_ll.h
>> @@ -45,9 +45,30 @@
>>  #endif
>>
>>  #define LSR_THRE     0x20    /* Xmit holding register empty */
>> +#define LCR_BKSE     0x80    /* Bank select enable */
>>  #define LSR          (5 << 2)
>>  #define THR          (0 << 2)
>> +#define DLL          (0 << 2)
>> +#define IER          (1 << 2)
>> +#define DLM          (1 << 2)
>> +#define FCR          (2 << 2)
>> +#define LCR          (3 << 2)
>> +#define MCR          (4 << 2)
>> +#define MDR          (8 << 2)
>>
>> +static inline void INIT_LL(void)
> where this come from?

This comes from drivers/serial/serial_ns16550.c: ns16550_serial_init_port
ns16550_serial_init_port call other functions and has local variables,
so a stack is required
INIT_LL instead is an extremly simple inline function without local
variables, so it can be called at the very beginning

from include/debug_ll.h:
"Note that several SoCs expect the UART to be initialized by a
debugger or a first stage bootloader."
INIT_LL implements the second option.

I have a question regarding code executed at the very beginning, that
is, when the stack may not be available or the binary is not at it's
link address
What are the things that can't be done in such scenario?
For example, from include/debug_ll.h:
"Be careful with PUTS_LL, it only works if the binary is running at
the link address which often is not the case during early startup."
static __inline__ void PUTS_LL(const char * str)
{
	while (*str) {
		if (*str == '\n') {
			PUTC_LL('\r');
		}
		PUTC_LL(*str);
		str++;
	}
}
What does PUTS_LL do that can't be done?


>> +{
>> +     writeb(0x00, UART_BASE + LCR);
>> +     writeb(0x00, UART_BASE + IER);
>> +     writeb(0x07, UART_BASE + MDR);
>> +     writeb(LCR_BKSE, UART_BASE + LCR);
>> +     writeb(26, UART_BASE + DLL); /* 115200 */
>> +     writeb(0, UART_BASE + DLM);
>> +     writeb(0x03, UART_BASE + LCR);
>> +     writeb(0x03, UART_BASE + MCR);
>> +     writeb(0x07, UART_BASE + FCR);
>> +     writeb(0x00, UART_BASE + MDR);
>> +}
>>  static inline void PUTC_LL(char c)
>>  {
>>       /* Wait until there is space in the FIFO */
>> --
>> 1.8.1.5
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
