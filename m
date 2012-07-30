Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpsmtpb-ews02.kpnxchange.com ([213.75.39.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Svyac-0003kI-Jc
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 22:37:26 +0000
Message-ID: <50170C6A.2000101@erwinrol.com>
Date: Tue, 31 Jul 2012 00:36:26 +0200
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
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
Subject: x86 weirdness
To: barebox@lists.infradead.org

Hallo,

after I had successfully "ported" barebox to about 5 different embedded 
x86 (mostly N270 and Z510 Atom boards) I ran into problems with a 
Celeron SU2300 CPU based board. After a lot of trail and error, which 
included the implementation of a BIOS based console cause the board does 
not have a RS232 port, it looked like the global variables were not what 
I expected them to be, namely zero.

So in arch/x86/boot/main_entry.c i changed to following;

/**
  * Called plainly from assembler that switches from real to flat mode
  *
  * @note The C environment isn't initialized yet
  */
void uboot_entry(void)
{
#if 0
         /* clear the BSS first */
         memset(__bss_start, 0x00, __bss_stop - __bss_start);
#else
         unsigned char* ptr;
         for (ptr = __bss_start; ptr < __bss_stop; ptr++)
                 *ptr = 0x00;
#endif


         start_barebox();
}


After doing that it works. I have not yet looked into the resulting asm 
to find the differences, but could someone have an explanation for why 
the memset doesn't work and the simple loop does work?

- Erwin







_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
