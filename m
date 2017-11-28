Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJfoK-0001Yx-OT
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 13:20:30 +0000
Date: Tue, 28 Nov 2017 14:20:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128132006.cbcplw7rr2lqvme3@pengutronix.de>
References: <311f4693-85fc-e2bc-6e07-7714cd89c522@ebee.berlin>
 <20171128084351.wcdzcp7m43iijsun@pengutronix.de>
 <51e9790a-364c-782d-cd81-721dcba52d78@ebee.berlin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51e9790a-364c-782d-cd81-721dcba52d78@ebee.berlin>
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
Subject: Re: ASIX USB dongle problem: asix_rx_fixup() Bad Header Length
To: Holger Birkmeyer <holger.birkmeyer@ebee.berlin>
Cc: barebox@lists.infradead.org

On Tue, Nov 28, 2017 at 01:40:28PM +0100, Holger Birkmeyer wrote:
> Dear Sascha,
> 
> the ASIX USB dongle is working on the same hardware running a 4.4
> vanilla kernel. The dongle also works on my Linux PC with a 4.13 kernel.
> 
> I added memory_display(buf, 0, len, 4, 0) to asix_rx_fixup(). Here are
> the logs:

Hm, comparing that to the traffic my device receives that may look
somewhat shifted. Do you have CONFIG_MMU enabled? If yes, please try
with MMU disabled. Also, maybe the buffer is not sufficiently aligned.
Could you print the pointer address of buf?

The buffer is statically allocated in drivers/net/usb/usbnet.c:

static char rx_buf[4096];

This looks fishy. It should be allocated with dma_alloc() instead.

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
