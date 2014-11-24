Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XstIe-0001Px-Lb
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 13:03:29 +0000
Date: Mon, 24 Nov 2014 14:03:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141124130306.GI30369@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 00/20] First batch of randconfig fixes
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 24, 2014 at 12:06:40PM +0100, Lucas Stach wrote:
> This series is the first batch of fixes for errors found by doing
> some randconfig builds. Seems we have a good way to go, currently
> *all* randconfig builds produced at least one error.

:(

> 
> Sascha, are you ok with applying such patches to master? That's the
> branch Sisyphus is currently using for doing those tests. If you would
> rather like those patches to go into -next please tell me, so I can
> adapt Sisyphus to build that in order to keep a resonably short loop
> between tests and fixes.

I'm generally ok with applying them to master for obvious fixes, but
sometimes the side effect might not be clear in which case I would
prefer applying them to next.

For now I'm applying the patches I haven't commented on to master.
Compile testing takes a while, so you still have time to protest ;)

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
