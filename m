Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQqfd-00085z-5n
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 08:53:27 +0000
Date: Thu, 7 Jun 2018 10:53:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180607085312.xtrjlsmuxfvfv4jj@pengutronix.de>
References: <20180606151602.11094-1-pvizeli@syshack.ch>
 <20180607072037.3jw4exty4huobpm6@pengutronix.de>
 <CACvFaDd0CUgO8+ExRriuXd4cSNLhvv5pvE=Ar07LX0ytLJiHTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvFaDd0CUgO8+ExRriuXd4cSNLhvv5pvE=Ar07LX0ytLJiHTQ@mail.gmail.com>
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
Subject: Re: [PATCH 1/1] command: oftree: support load device tree from memory
To: Pascal Vizeli <pascal.vizeli@syshack.ch>
Cc: barebox@lists.infradead.org, Pascal Vizeli <pvizeli@syshack.ch>

On Thu, Jun 07, 2018 at 10:29:53AM +0200, Pascal Vizeli wrote:
> Thanks for this workaround. I will use this.
> 
> I will later send a patch they store the device tree address on
> raspberry into a variable.
> So that user can load this, if he need it.
> 
> The question is now, would you allow to load a device tree with a
> memory address on oftree utility?
> And if yes, where is the best place to add this function.

Instead of a command I would prefer if you could just store r2 from
the original bootloader you have been started with, and in a board
specific initcall you copy the devicetree you found in memory to a
file. Then the user has access to the devicetree with regular file
commands and there is no need to guess the memory address where the
original bootloader stored the device tree.

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
