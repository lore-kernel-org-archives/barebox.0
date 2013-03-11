Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UExXv-0002jA-MK
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 07:53:24 +0000
Date: Mon, 11 Mar 2013 08:53:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311075321.GA1906@pengutronix.de>
References: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
 <20130310131757.GC11170@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130310131757.GC11170@game.jcrosoft.org>
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
Subject: Re: [PATCH] net: fec: Use standard phy type defines
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 02:17:57PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:03 Sat 09 Mar     , Sascha Hauer wrote:
> > I've never seen a board using sevenwire, so remove this from
> > the fec driver. Also, since we now have standard phy type
> > defines in include/linux/phy.h, use them in the fec platform_data
> > instead of a fec specific enum.
> 
> drop the phy_init too

Can do in a later patch.

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
