Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9qbf-0001G6-3B
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 13:32:08 +0000
Date: Thu, 5 Mar 2020 14:32:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200305133205.GV3335@pengutronix.de>
References: <20200227172646.31180-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227172646.31180-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] usb: host: ehci: distinguish DMA addresses
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 27, 2020 at 08:26:46PM +0300, Peter Mamonov wrote:
> This patch adds translation from CPU to DMA addresses, which is required for
> proper operation on certain architectures like MIPS.
> 
> This patch also fixes the bug introduced by 4350744bf5 "usb: ehci-hcd: port
> periodic transactions implementation from the u-boot", which is still present
> in the original U-Boot code:
> 
> 	td->qt_buffer[0] =
> 		cpu_to_hc32((unsigned long)buffer + i * elementsize);
> 	td->qt_buffer[1] =
> 		cpu_to_hc32((td->qt_buffer[0] + 0x1000) & ~0xfff);
> 	...
> 
> In case of a big-endian CPU 0x1000 is added to the byte-swapped value
> `td->qt_buffer[0]`, the result is byte swapped once again and stored to
> `td->qt_buffer[1]`. This results in erroneous values being stored in
> `td->qt_buffer[1..4]`.
> 
> N.B.: This patch needs some testing on architectures different from MIPS.

I tested it on ARM. Yup, it works.

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
