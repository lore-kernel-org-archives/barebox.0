Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOBaz-0005Sa-Q5
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 21:56:18 +0000
Date: Tue, 26 Jan 2016 22:55:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160126215555.GD13058@pengutronix.de>
References: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
 <1453787758-12688-7-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453787758-12688-7-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 7/7] commands: Add mdio_read and mdio_write
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 25, 2016 at 09:55:58PM -0800, Andrey Smirnov wrote:
> Add commands for low-level access to MDIO bus.

Do we really need this? We can already read/write phy registers using
/dev/phyx which imo is quite convenient since it can be accessed with
regular md/mw commands.

This of course is currently limited to the phys that are actually
registered, you can't just bang on MDIO addresses on which no phys are
registered. Maybe we could register all phys on a MDIO bus instead of
only the used ones?

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
