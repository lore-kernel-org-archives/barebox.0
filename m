Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgGA-0007E5-WF
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:33:32 +0000
Date: Thu, 5 Apr 2012 08:33:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120405063322.GV3852@pengutronix.de>
References: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
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
Subject: Re: debugging on board
To: Gabriel Tisan <gabriel.tisan@gmail.com>
Cc: barebox@lists.infradead.org

Hi Gabriel,

On Thu, Apr 05, 2012 at 08:11:47AM +0200, Gabriel Tisan wrote:
> Hi !
> 
> What should I do to be able to see any debug messages ? On the serial console I
> could see the Barebox version but after that nothing. I suppose that
> is something
> regarding nand.

This means that your console is already running, a first step can then
be to put a '#define DEBUG' above the includes in common/startup.c. This
will cause the initcalls to be printed which will give you a first clue
where execution stops.

Also you should have the following options enabled:

CONFIG_MMU
ARM_EXCEPTIONS
CONFIG_ARM_UNWIND
CONFIG_KALLSYMS

This gives you a stack dump when something bad happens.

> 
> If I have no JTAG debugger what should I do to be able to debug ? For
> other board I
> could not see any messages on console.

That's more difficult. If you have for example a U-Boot as first stage
loader then you can add some register writes to the UART send register
in the early startup code. Otherwise you are stuck with LED debugging
(Just configure a gpio connected to a LED and see where you can still
turn it on)

What machine are you working on?

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
