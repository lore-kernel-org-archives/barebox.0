Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9u5W-0003l1-L8
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 17:15:14 +0000
Received: by mail-lf1-x141.google.com with SMTP id s23so5258261lfs.10
 for <barebox@lists.infradead.org>; Thu, 05 Mar 2020 09:15:07 -0800 (PST)
Date: Thu, 5 Mar 2020 20:14:54 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20200305171453.GA24026@localhost.localdomain>
References: <20200227172646.31180-1-pmamonov@gmail.com>
 <20200305133205.GV3335@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305133205.GV3335@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 05, 2020 at 02:32:05PM +0100, Sascha Hauer wrote:
> On Thu, Feb 27, 2020 at 08:26:46PM +0300, Peter Mamonov wrote:
> > This patch adds translation from CPU to DMA addresses, which is required for
> > proper operation on certain architectures like MIPS.
> > 
> > This patch also fixes the bug introduced by 4350744bf5 "usb: ehci-hcd: port
> > periodic transactions implementation from the u-boot", which is still present
> > in the original U-Boot code:
> > 
> > 	td->qt_buffer[0] =
> > 		cpu_to_hc32((unsigned long)buffer + i * elementsize);
> > 	td->qt_buffer[1] =
> > 		cpu_to_hc32((td->qt_buffer[0] + 0x1000) & ~0xfff);
> > 	...
> > 
> > In case of a big-endian CPU 0x1000 is added to the byte-swapped value
> > `td->qt_buffer[0]`, the result is byte swapped once again and stored to
> > `td->qt_buffer[1]`. This results in erroneous values being stored in
> > `td->qt_buffer[1..4]`.
> > 
> > N.B.: This patch needs some testing on architectures different from MIPS.
> 
> I tested it on ARM. Yup, it works.

Thanks!

Peter

> 
> Applied, thanks
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
