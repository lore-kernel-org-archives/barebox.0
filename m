Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwpec-0007KL-BV
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 05:40:20 +0000
Date: Tue, 8 Mar 2011 07:40:07 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110308054006.GA22012@jasper.tkos.co.il>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: test app
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Vanalme,

On Mon, Mar 07, 2011 at 02:05:32PM +0100, Vanalme Filip wrote:
> We would like to have a kind of small test application, that can be started 
> from the barebox prompt, to do some basic tests on some hardware components. 
> What's the best way to do that ? E.g. can I add that test application to the 
> environment and would this be good practice ? Or do I better extend the 
> barebox commands with my own command to start the tests ?  Maybe there's an 
> example on how to do it ?

I'm using the attached program to do a simple RAM read/write test on i.MX25.  
This program runs on bare hardware from the internal chip SRAM, and doesn't 
rely on the Barebox run-time code.  I only use Barebox to start this program.

The program is built with the following Makefile rules:

all: ramtest.bin

%.bin: %.elf
    ${OBJCOPY} -O binary $^ $@

ramtest.elf: ramtest.c
    ${CC} -Wall -Os -nostdlib $^ -o $@ -Wl,-Ttext=0x78000000

Running this program from the Barebox prompt:

cp ramtest.bin /dev/sram0
go /dev/sram0

I hope this helps.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

--3MwIy2ne0vdjdPXF
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="ramtest.c"

/*
 * Test RAM on an i.MX25 machine
 * 
 * Author: Baruch Siach <baruch@tkos.co.il>
 *
 * This is a standalone program which does not use any external library.
 * The RAM test algorithm that is implemented here is based on idea from the 
 * "Testing RAM in Embedded Systems" article at 
 * http://www.ganssle.com/testingram.htm
 */
#define MX25_UART1_BASE         0x43F90000
#define MX25_GPIO2_BASE         0x53FD0000

#define IOMUXC_BASE_ADDR        0x43FAC000
#define IOMUX_MUX_SD1_DATA2_PAD 0x1a0
#define IOMUX_PAD_SD1_DATA2_PAD 0x398

#define MX25_WDOG_BASE          0x53FDC000
#define MX25_WDOG_SEQ1          0x5555
#define MX25_WDOG_SEQ2          0xAAAA

#define RAM_BASE                0x80000000
#define RAM_SIZE                0x04000000

#define TEST_START_VALUE        0x55

#define writeb(v, a)    (*(volatile unsigned char *)(a)) = (v)
#define readb(a)        *(volatile unsigned char *)(a)

#define writew(v, a)    (*(volatile unsigned short *)(a)) = (v)
#define readw(a)        *(volatile unsigned short *)(a)

#define writel(v, a)    (*(volatile unsigned int *)(a)) = (v)
#define readl(a)        *(volatile unsigned int *)(a)

static char hex_tab[] = "0123456789abcdef";

__asm__ (".text\n"
        ".globl _start\n"
        "_start:\n"
        "ldr    sp, =0x78020000\n"
        "bl     main\n"
        "stop:\n"
        "b      stop\n"
        );

static void uart_putc (char c)
{
    while (readl (MX25_UART1_BASE + 0xb4) & 0x10)
        ;

    writel (c, MX25_UART1_BASE + 0x40);
}

static void uart_puthex (unsigned int val, int width)
{
    unsigned char digit;

    while (width-- > 0) {
        digit = (val >> (width*4)) & 0xf;
        uart_putc (hex_tab[digit]);
    }
}

static void uart_puts (char *str)
{
    for (; *str; str++) {
        if (*str == '\n')
            uart_putc ('\r');
        uart_putc (*str);
    }
}

static void watchdog_ping ()
{
    writew (MX25_WDOG_SEQ1, MX25_WDOG_BASE + 0x02);
    writew (MX25_WDOG_SEQ2, MX25_WDOG_BASE + 0x02);
}

static void reset_cpu ()
{
    unsigned short wcr = readw (MX25_WDOG_BASE);

    writew (wcr & 0xff, MX25_WDOG_BASE);
    watchdog_ping ();
}

static void __attribute__ ((unused)) led_on (void)
{
    /* set pad */
    writel (5, IOMUXC_BASE_ADDR + IOMUX_MUX_SD1_DATA2_PAD);
    writel (1, IOMUXC_BASE_ADDR + IOMUX_PAD_SD1_DATA2_PAD);

    /* set direction */
    writel (0x08000000, MX25_GPIO2_BASE + 4);
    /* set value */
    writel (0, MX25_GPIO2_BASE);
}

static void filler (unsigned char val, int cycle)
{
    unsigned int i;

    for (i = 0; i < RAM_SIZE; i++) {
        if ((i & 0xfffff) == 0) {
            uart_putc ('#');
            watchdog_ping ();
        }
        if (val == TEST_START_VALUE) {
            writeb(val, RAM_BASE + i);
            i++;
        }
        writeb(val, RAM_BASE + i);
        if (cycle)
            val++;
        else if (i & 1) /* negate bits on every 16bit write */
            val = ~val;
    }
    uart_puts ("\n");
}

static void check_err (unsigned long addr, unsigned char expect,
        unsigned char val)
{
    uart_puts ("Error at 0x");
    uart_puthex (addr, 8);
    uart_puts (" expected 0x");
    uart_puthex (expect, 2);
    uart_puts (", got 0x");
    uart_puthex (val, 2);
    uart_puts ("\n");
}

static int checker (int cycle)
{
    unsigned int i;
    unsigned char expected_val = TEST_START_VALUE;
    unsigned char ram_val;
    int err = 0;

    for (i = 0; i < RAM_SIZE; i++) {
        if ((i & 0xfffff) == 0) {
            uart_putc ('#');
            watchdog_ping ();
        }
        if (expected_val == TEST_START_VALUE) {
            ram_val = readb(RAM_BASE + i);
            if (ram_val != expected_val) {
                check_err (RAM_BASE + i, expected_val, ram_val);
                err++;
            }
            i++;
        }
        ram_val = readb(RAM_BASE + i);
        if (ram_val != expected_val) {
            check_err (RAM_BASE + i, expected_val, ram_val);
            err++;
        }
        if (err >= 10)
            return err;
        if (cycle)
            expected_val++;
        else if (i & 1) /* negate bits on every 16bit check */
            expected_val = ~expected_val;
    }
    uart_puts ("\n");

    return err;
}

int main (int argc, char *argv[])
{
    watchdog_ping ();

#ifdef TERMINATION_TEST
    if (argc > 1) {
        uart_puts ("Doing termination testing ");

        if (argv[1][0] == 'w') {
            unsigned char val;

            uart_puts ("(write)\n");

            if (argc == 3 && argv[2][0] == 'a')
                val = 0xAA;
            else
                val = TEST_START_VALUE;

            while (1)
                filler (val, 0);
        } else {
            uart_puts ("(read)\n");
            uart_puts ("Filling RAM...\n");
            filler (TEST_START_VALUE, 0);

            uart_puts ("Reading RAM...\n");
            while (1)
                checker (0);
        }
    }
#endif

    uart_puts ("Starting RAM write\n");
    filler (TEST_START_VALUE, 1);
    uart_puts ("Starting RAM read\n");
    if (checker (1) == 0)
        uart_puts ("RAM test finished successfully\n");
    else
        uart_puts ("RAM test failed\n");

    reset_cpu ();

    return 0;
}

--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--3MwIy2ne0vdjdPXF--
