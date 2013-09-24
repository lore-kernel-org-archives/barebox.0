Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VONDr-0005wh-98
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:39:51 +0000
Date: Tue, 24 Sep 2013 09:39:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130924073928.GC30088@pengutronix.de>
References: <CAO-21LNqyD5-wMWC+Xy9grkxzb9bVRqw+pE7gnJJ_f0jog=izw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO-21LNqyD5-wMWC+Xy9grkxzb9bVRqw+pE7gnJJ_f0jog=izw@mail.gmail.com>
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
Subject: Re: Porting to a new board
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 23, 2013 at 04:47:19PM -0500, Allen Kennedy Jr. wrote:
> > What's the output of some network command, like for example 'dhcp'?
> 
> This hangs the chip.

This shouldn't happen. No reaction from the board at all? Does ctrl-c
work? You could add some debug messages to the FEC driver to see where
it hangs.

One situation where a board might hang is when the clock is disabled,
but I don't see how this can happen since it's explicitly enabled in
arch/arm/mach-imx/clk-imx27.c

What's the output of 'md 0x1002b000'? Does it show the FEC registers
or does it hang the board aswell? The output of 'iomem' might also
help.

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
