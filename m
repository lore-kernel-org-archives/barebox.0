Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvQe5-0007CJ-Og
	for barebox@lists.infradead.org; Fri, 04 Mar 2011 08:45:58 +0000
Date: Fri, 4 Mar 2011 09:45:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110304084533.GD29521@pengutronix.de>
References: <n>
 <4d701d2f.9009d80a.2cd3.5e70@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d701d2f.9009d80a.2cd3.5e70@mx.google.com>
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
Subject: Re: [PATCH 00/54] New arch (NIOS2)
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi Franck,

On Thu, Mar 03, 2011 at 11:58:14PM +0100, franck.jullien@gmail.com wrote:
> From: Franck JULLIEN <franck.jullien@gmail.com>
> 
> This is the base files of the Nios2 port. Almost everything is comming from u-boot.
> When those files are acked, I'll post drivers and utility commands.

Soo many patches ;). You can safely combine all these into two
patches, one for the nios2 support and one for the generic board.
The patches are only useful as a whole anyway, so no need to split
them up that fine. You will hit the list limit, so give me some time
to go to the moderator interface and and it through.

I'm not through all patches, but some remarks here:

There is some whitespace damage all around like spaces which should be
tabs. Also, please do not use direct pointer derefs to access registers.
You should use readl/writel accessors for them.

Thanks for doing this work. Although I don't have a nios baord, I really
appreciate extending barebox to more architectures.

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
