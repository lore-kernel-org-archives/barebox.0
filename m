Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQAkE-0003uV-KV
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 08:53:47 +0000
Date: Fri, 14 Aug 2015 10:53:24 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20150814085324.GD9841@pengutronix.de>
References: <CAE2nzutff9nhFvrgbQbBQnZ_JXAKzwwUc5V-4hVZmL9ELLyGxw@mail.gmail.com>
 <1439480360.13210.22.camel@pengutronix.de>
 <CAE2nzut0jYEGFSXdH72ZYaquH+Ty_-o1N2joUuwdH+S26omrmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE2nzut0jYEGFSXdH72ZYaquH+Ty_-o1N2joUuwdH+S26omrmw@mail.gmail.com>
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
Subject: Re: Passing devicetree to kernel
To: Raj Swaminathan <rajshyam@gmail.com>
Cc: barebox@lists.infradead.org

Hi!

On Thu, Aug 13, 2015 at 09:58:51AM -0700, Raj Swaminathan wrote:
> Hi Lucas,
> 
> I am using Altera's cyclone 5 SoCFPGA.
> 
> Barebox version 2015.04.0
> Linux is rocketboards version 3.18.0
> 

Why are you using exactly these versions? Just curious.

> I put some debug statements into the code at common/bootm.c and found
> that the internal device tree is being used and it is the right
> version. The problem is probably in the way I'm manipulating the
> devicetree in barebox. I'm trying to enable some devices and fill up
> the mac address field in barebox before i hand off the same devicetree
> to the kernel.  One way i have gotten around the problem is to keep 2
> versions of the devicetree but have barebox open the kernel devicetree
> file and modify it.
> 

The linux clkdriver can't handle the internal devicetree from barebox and
hangs. See the patches I just posted. It works with v2015.08.0 and 4.2-rc6.
What really breaks the linux boot is the mpu_periph_clk, though. It is
marked as gate-clk but doesn't have one specified, resulting in a NULL
pointer.

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
