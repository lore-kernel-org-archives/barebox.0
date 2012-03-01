Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S3CHs-0006ge-8s
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 20:07:40 +0000
Date: Thu, 1 Mar 2012 21:07:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120301200729.GE3852@pengutronix.de>
References: <4F4FD0EF.1000905@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F4FD0EF.1000905@ge.com>
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
Subject: Re: Booting PPC Linux
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 01, 2012 at 07:41:35PM +0000, Renaud Barbier wrote:
> I have a uImage + dtb that use to boot on a MPC8544-like system
> a few months ago.
> 
> After rebasing my code, it did not work.
> 
> I notice that in arch/ppc/lib/ppclinux.c the kernel is now called
> with the device tree as a parameter.
> 
> After investigation, I copied the device tree to within 8MB of the
> kernel entry point (0x0). It booted.
> 
> Is the DTB relocation a missing step?

Yes, it seems so. barebox holds the device tree in malloced space. This
is likely outside 8MB of the kernel entry point. I was not aware of that
restriction.

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
