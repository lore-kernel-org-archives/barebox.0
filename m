Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([212.27.42.6])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RU3fG-0000YY-4j
 for barebox@lists.infradead.org; Fri, 25 Nov 2011 21:50:40 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
 <20111124094525.GB27267@pengutronix.de> <87zkflw70f.fsf@free.fr>
 <20111124230813.GD27267@pengutronix.de>
Date: Fri, 25 Nov 2011 22:50:02 +0100
In-Reply-To: <20111124230813.GD27267@pengutronix.de> (Sascha Hauer's message
 of "Fri, 25 Nov 2011 00:08:13 +0100")
Message-ID: <87r50vkh2t.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH 9/9] arm/mach-pxa: add mioa701 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Thu, Nov 24, 2011 at 10:22:08PM +0100, Robert Jarzmik wrote:
>> Sascha Hauer <s.hauer@pengutronix.de> writes:
>> > Are the defines in this file used by generic code? If not, please put
>> > them into a board specific include file (or remove them if they are
>> > unused)
>> I intended to use these values in lowlevel_init.S. Isn't that the right place ?
>
> config.h in the board file is included by common.h and thus in nearly
> every compiled file. It is the config.h derived from U-Boot. Ideally
> this file should be empty. Creating some other include file in your
> board directory is just fine though.
Ok, I will empty it.

> BTW the generic lowlevel code in barebox is written in C and it also is
> for several boards. So when you can spare some bytes of SRAM I recommend
> to do it C. You can have a look for example at the pcm038 board. We also
> have a get_pc() function to determine whether we already run from SDRAM
> and thus should skip its initialization.
I was thinking I should write the IPL in lowlevel_init.S (the part which should
be in 0x800 bytes, and which will load the remaining of barebox from the
disk-on-chip ROM part at address 0).

I still don't know if I should design a separate assembly file from barebox, but
my goal was to have it all in barebox (like grub where there's a first stage of
512 bytes and another big stage).

> You should only initialize the barest minimum in lowlevel code. So when
> setup_gpios is not needed for initializing SDRAM you should not do it
> here.
Maybe. My idea was :
 - if power button is not pressed (GPIO0) and the reset is triggered by a
 power/true reset, the IPL will put back the cpu into deep-sleep
 - else light up the keyboard led
 - eventually put SDRAM out of self-refresh
 - eventually jump to resume vector if out of deep-sleep
 - read SPL from docg3
 - jump to SPL (ie. to barebox)

In order to achieve this, I need gpios in the first IPL to activate LEDs.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
