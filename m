Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WieTB-0008Eh-VW
 for barebox@lists.infradead.org; Fri, 09 May 2014 06:39:46 +0000
Date: Fri, 9 May 2014 08:39:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140509063923.GV5858@pengutronix.de>
References: <536BEABE.9060705@exegin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <536BEABE.9060705@exegin.com>
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
Subject: Re: [PATCH] Fix the options and protocols used by the loadx command.
To: Owen Kirby <osk@exegin.com>
Cc: barebox@lists.infradead.org

Hi Owen,

On Thu, May 08, 2014 at 01:36:14PM -0700, Owen Kirby wrote:
> From 3cd970250ff17ac406e46e18ebb26aa35949d1db Mon Sep 17 00:00:00 2001
> From: Owen Kirby <osk@exegin.com>
> Date: Thu, 8 May 2014 13:27:11 -0700
> Subject: [PATCH] Fix the options and protocols used by the loadx command.
> 
> It seems like the loadx command was improperly copy/pasted from the loady
> implementation, and was trying to load files using the ymodem protocol. This
> patch should fix the command so that it uses xmodem, implements the -t option
> and outputs the correct baudrate being used.
> 
> Signed-off-by: Owen Kirby <osk@exegin.com>

I'm always surprised to still see patches to the serial download
protocols. I hardly ever use them. Anyway, patch looks good, so:
Applied, thanks

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
