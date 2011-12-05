Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXW73-0004dF-8T
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 10:49:34 +0000
Date: Mon, 05 Dec 2011 11:49:23 +0100 (CET)
From: robert.jarzmik@free.fr
Message-ID: <611c10fc-3097-4519-84b6-c56508dad731@zimbra1-e1.priv.proxad.net>
In-Reply-To: <20111205084032.GY27267@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH V3 3/3] arm/mach-pxa: add mioa701 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

----- Mail original -----
De: "Sascha Hauer" <s.hauer@pengutronix.de>
On Sat, Dec 03, 2011 at 06:02:02PM +0100, Robert Jarzmik wrote:
> Add Mitac MioA701 board initial support.
> The support only provides basic boot and a console over USB
> (serial gadget).

> This currently does not compile because mach/udc_pxa2xx.h is missing.
> We could either remove the udc support or wait with your board support
> until the udc driver is in the tree.
I think we can safely wait for the UDC to reach the tree. The board support
is still a new born, and there's no hurry in getting it merged.

> I'm fine with your udc driver, I was just waiting for the cache issues
> to be resolved before applying it.
Which cache issues ? I think I missed a mail in there ... I only have in mind the discussion about page 0 mapping for the MTD driver ... I must have missed something.

> Also, please provide a defconfig file for your board (generated with
make savedefconfig). As a bonus we will break your board less
frequently ;)
Of course.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
