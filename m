Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOKOa-0000wc-OR
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 07:20:05 +0000
Date: Wed, 27 Jan 2016 08:19:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160127071939.GF13058@pengutronix.de>
References: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
 <1453787758-12688-7-git-send-email-andrew.smirnov@gmail.com>
 <20160126215555.GD13058@pengutronix.de>
 <CAHQ1cqEemyC0CfVQeshBuJtA1p0mCQaPB33noov4N7FSk5F+Ng@mail.gmail.com>
 <1453861806.29677.31.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453861806.29677.31.camel@rtred1test09.kymeta.local>
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
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jan 27, 2016 at 02:29:47AM +0000, Trent Piepho wrote:
> On Tue, 2016-01-26 at 18:09 -0800, Andrey Smirnov wrote:
> > On Tue, Jan 26, 2016 at 1:55 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > On Mon, Jan 25, 2016 at 09:55:58PM -0800, Andrey Smirnov wrote:
> > >> Add commands for low-level access to MDIO bus.
> > >
> > > Do we really need this? We can already read/write phy registers using
> > > /dev/phyx which imo is quite convenient since it can be accessed with
> > > regular md/mw commands.
> > >
> 
> > Just to explain the purpose of this patch -- there are number of
> > reasons we might want to be able to access "unregistered" PHYs:
> > 
> > - Not all MDIO attached devices would have PHYSID1,2 registers
> > available which might cause mdiobus_scan() to not detect those PHYs
> > 
> > - MDIO bus troubleshooting
> 
> Maybe instead have a command that adds a phydev to a mdio bus?

Or maybe even add an option to the existing miitool to do that.

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
