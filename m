Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7Rir-00019d-1b
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 13:25:12 +0000
Date: Tue, 13 Mar 2012 14:24:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120313132455.GE3852@pengutronix.de>
References: <201203131416.47776.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201203131416.47776.jbe@pengutronix.de>
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
Subject: Re: [RFC] ARM/serial: add a DCC based console driver
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 13, 2012 at 02:16:46PM +0100, Juergen Beisert wrote:
> Hi,
> 
> please find attached an DCC based driver for Barebox to be able to get early 
> boot messages. It acts as a regular serial console and can be used in 
> conjunction with a JTAG debugger. This is really useful when no serial 
> console is available (don't ask why...) and the bootloader hangs prior it can 
> enable a network based console.
> 
> One issue is still present and I need some hints what might be going wrong 
> here:
> 
> Sending chars via DCC blocks for ever, when I'm using a simple
> while loop waiting for the DCC_OUTPUT_BUSY to be cleared. After adding a 
> timeout loop I receive every other char at the JTAG side. When I write the 
> char to the DCC even if it timeout, I receive *every* char. Only some chars 
> are lost when I reduce the timeout value below 750 us.
> Any idea? I checked the kernel source, but they doing the same: Waiting for 
> the DCC_OUTPUT_BUSY to be cleared and timeout after a specific amount of 
> loops (but without writing the char in this case).
> 
> Comments are welcome.

You are probably not aware that we already have such a driver in
drivers/serial/arm_dcc.c.

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
