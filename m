Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7YID-0001aU-W9
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 06:06:50 +0000
Date: Mon, 17 Aug 2020 08:06:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200817060647.GO13023@pengutronix.de>
References: <20200816214300.137240-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200816214300.137240-1-dev@lynxeye.de>
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
Subject: Re: [PATCH] of: base: move memory init from DT to initcall
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

On Sun, Aug 16, 2020 at 11:43:00PM +0200, Lucas Stach wrote:
> Instead of calling it from of_probe, convert it to a initcall at
> the appropriate level. This allows to move of_probe to later in
> the init sequence while keeping the memory init at the same place,
> which is important as many other drivers need the valid memory area
> to be set up properly.

With this the latest point where of_probe() could be called would be
one before mem_initcall, so postconsole_initcall.

On some architectures we have a driver for the SDRAM controller which
configures the RAM banks based on values read from the controller. On
others we depend on the device tree information and finally there are
cases where we have both and hope for the best that both information
sources do not clash. This is all not very nice and moving the initcall
level for registering the RAM might have undesired side effects.
In this situation I'm a bit hesitant to merge this patch when it doesn't
have a concrete user.

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
