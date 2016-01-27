Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOFs2-0004jt-9p
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 02:30:10 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 27 Jan 2016 02:29:47 +0000
Message-ID: <1453861806.29677.31.camel@rtred1test09.kymeta.local>
References: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
 <1453787758-12688-7-git-send-email-andrew.smirnov@gmail.com>
 <20160126215555.GD13058@pengutronix.de>
 <CAHQ1cqEemyC0CfVQeshBuJtA1p0mCQaPB33noov4N7FSk5F+Ng@mail.gmail.com>
In-Reply-To: <CAHQ1cqEemyC0CfVQeshBuJtA1p0mCQaPB33noov4N7FSk5F+Ng@mail.gmail.com>
Content-Language: en-US
Content-ID: <B28A62FBA5CB1940B861AB1F034AE80B@kymetacorp.com>
MIME-Version: 1.0
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2016-01-26 at 18:09 -0800, Andrey Smirnov wrote:
> On Tue, Jan 26, 2016 at 1:55 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Mon, Jan 25, 2016 at 09:55:58PM -0800, Andrey Smirnov wrote:
> >> Add commands for low-level access to MDIO bus.
> >
> > Do we really need this? We can already read/write phy registers using
> > /dev/phyx which imo is quite convenient since it can be accessed with
> > regular md/mw commands.
> >

> Just to explain the purpose of this patch -- there are number of
> reasons we might want to be able to access "unregistered" PHYs:
> 
> - Not all MDIO attached devices would have PHYSID1,2 registers
> available which might cause mdiobus_scan() to not detect those PHYs
> 
> - MDIO bus troubleshooting

Maybe instead have a command that adds a phydev to a mdio bus?  So if
you wanted to issue commands to some address that doesn't have a phy
detected you could add a dummy phy using this command and then use
standard md/mw and so on commands with it.  There is still a new command
but it does not have to duplicate existing functionality this way.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
