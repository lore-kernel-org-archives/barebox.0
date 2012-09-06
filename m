Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9eXy-0005qQ-Ma
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 16:03:19 +0000
Date: Thu, 6 Sep 2012 18:03:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906160308.GA26594@pengutronix.de>
References: <20120906060058.GE4761@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120906060058.GE4761@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/12] add PNG support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

The discussion in this thread makes it clear that there are two problems
with this logo, one technical and one political.

The technical problem:

From a technical pov it makes no sense to put big image binaries into
the repository when a small svg image would be sufficient to generate
all other images.

The political problem:

For an open source project a closed image is a no go. We (and by we I
mean we as the community, not we as Pengutronix) must for example be
able to:

- generate versions with different colors, sizes, dimensions
- generate a logo without text
- modify the image and to redistribute without limitations
- add a journal to the logo and use it for bwn.org (barebox weekly news) ;)

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
