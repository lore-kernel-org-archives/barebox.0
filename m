Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYUK-0003Vg-8Z
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 13:52:25 +0000
Date: Wed, 17 Jun 2020 15:52:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200617135222.GD11869@pengutronix.de>
References: <20200617034404.5904-1-dgienda125@gmail.com>
 <20200617034404.5904-9-dgienda125@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617034404.5904-9-dgienda125@gmail.com>
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
Subject: Re: [RFC PATCH 8/8] arm: module: Allow modules outside of bl range
To: David Dgien <dgienda125@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 16, 2020 at 11:44:04PM -0400, David Dgien wrote:
> Unlike the Linux kernel, barebox does not have a dedicated heap for
> storing modules. Therefore, if the system memory configuration places
> the general heap further away than can be reached by a 'bl' instruction
> (24 bits of address, or 16 MiB), then the module relocations will fail
> due to being out of range.

At least the tlsf malloc implementation allows for multiple heaps. It
might be easier to just add another heap just below the barebox image.

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
