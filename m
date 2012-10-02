Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ2fn-0004oT-L3
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 13:38:08 +0000
Date: Tue, 2 Oct 2012 15:38:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121002133805.GV1322@pengutronix.de>
References: <20120926095650.GG31983@game.jcrosoft.org>
 <20120930134749.GN26553@game.jcrosoft.org>
 <20121001181212.GV26553@game.jcrosoft.org>
 <20121002085447.GW26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121002085447.GW26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/6] gui: factorise code
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 02, 2012 at 10:54:47AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	can you announce publicy if you now decide to refuse my contribution in
> 	Barebox

I do not intend to refuse your contribution to barebox, but if you want
to drop huge amounts of code into the repository please give me the
feeling that you have looked at your patches and have tested them. The
series you are pinging here refactors code which didn't even hit the
master branch.

That said, I think this series looks ok and I'm going to apply it.

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
