Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-113.126.com ([220.181.15.113])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tguk0-0000cl-Re
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 10:01:11 +0000
Date: Fri, 7 Dec 2012 18:00:33 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121207100033.GA2605@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: mdio_bus_match() bug
To: barebox <barebox@lists.infradead.org>

In drivers/net/phy/mdio_bus.c: mdio_bus_match(), It compare
phy_id between driver and device.

In drivers/net/phy/generic.c set generic phy driver's phy_id
to PHY_ANY_UID

My phy is DM9161E, it's id is 0x181b881.

Of course they won't match! But the generic phy driver indeed
can works with DM9161E

Maybe the match logic should be fixed

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
