Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV2gu-0002N3-O6
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 15:00:26 +0000
Date: Mon, 28 Nov 2011 15:59:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111128145957.GC27267@pengutronix.de>
References: <4ED399D0.7020302@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ED399D0.7020302@ge.com>
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
Subject: Re: Running Barebox in Barebox.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Mon, Nov 28, 2011 at 02:25:20PM +0000, Renaud Barbier wrote:
> I have seen an example of tftp loading barebox in /dev/ram0
> and then running it with the go command.

Yes, this works on most boards.

> 
> Is that something that has been tested with the MPC5200?

This should work since

commit 1c9c937a6ac34c4d41fa70d0339f546f40b6c6d5
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Sep 26 17:29:51 2011 +0200

    ppc mpc5200b: cleanup lowlevel startup
    
    The old startup process consisted of several CFG_LOWBOOT,
    CFG_RAMBOOT ifdeffery which I do not understand. So remove
    all this and replace it with:
    
    - put the entry point for second stage loaders to offset 0x0
      so that we can do a go /dev/ram0 to start a second barebox
    - When we come from the reset vector assume MBAR is at 0x80000000
    - When we come from the second stage entry assume that
      SPR 311 is in sync with the current MBAR address.
    - Switch MBAR to 0xf0000000 and we are done.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Just tested on current master and this works for me.

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
