Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGppn-0005CI-AA
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 11:31:21 +0000
Date: Wed, 26 Sep 2012 13:31:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926113116.GN1322@pengutronix.de>
References: <20120924093122.GD26553@game.jcrosoft.org>
 <20120926110244.GH24458@pengutronix.de>
 <20120926112007.GO26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120926112007.GO26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/1 v7] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 01:20:07PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:02 Wed 26 Sep     , Sascha Hauer wrote:
> > 
> > barebox@Freescale i.MX51 PDK:/ dhcp 
> > T transmission timeout
> > T T transmission timeout
> > T T transmission timeout
> > T T transmission timeout
> > T T transmission timeout
> > 
> > Plugging in a cable does not help, since the link status is only
> > evaluated once during eth_open. If then a cable is plugged, adjust_link
> > is never called, so the driver never adjusts to the actual link.
> no this should not happend with the current code

Appearantly the code does not know what should and what should not
happen.

> eth_send set the device as not active if eth_open failled of phy is not up

eth_send doesn't, but eth_rx does.

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
