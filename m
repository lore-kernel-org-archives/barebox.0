Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TcvkJ-0002Xy-SA
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 10:17:00 +0000
Date: Mon, 26 Nov 2012 11:16:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121126101657.GF10369@pengutronix.de>
References: <1353923501-13372-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353923501-13372-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: commands: md, mw: add the '-x' option (swap bytes)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 26, 2012 at 01:51:38PM +0400, Antony Pavlov wrote:
> Most of my MIPS boards run barebox in big-endian mode, but
> sometimes I need see state of little-endian registers
> (e.g. registers of PCI-connected peripherals) and it is not
> very handy to swap bytes manually.
> 
> This patch series adds to memory commands md and mw the ability
> to swap bytes "on the fly".

Applied, thanks

Sascha

> 
> [PATCH 1/3] mem: add the swab (swap bytes) option to
> [PATCH 2/3] commands: md: add the '-x' option (swap bytes)
> [PATCH 3/3] commands: mw: add the '-x' option (swap bytes)
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
