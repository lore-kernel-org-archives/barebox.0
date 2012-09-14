Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQPB-0003j5-PT
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:33:39 +0000
Date: Fri, 14 Sep 2012 09:33:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120914073336.GU6180@pengutronix.de>
References: <1347558111-1633-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347558111-1633-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 0/2] P2020RDB eTSEC2
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Thu, Sep 13, 2012 at 06:41:49PM +0100, Renaud Barbier wrote:
> This patch set updates the gianfar driver and enables the port eTSEC2
> of the P2020RDB. Both eTSEC2 and eTSEC3 can be used.
> Also it has been noticed that dev_request_mem_region returns NULL when
> a region is already mapped. Some of the registers set may be the same between
> or within driver instances. This patch sorts out the conflict in region
> request.

That's not nice to have conflicting resources. The best solution would
be to register the phy independently of the network device and just use
the phy in the driver instead of registering it.
I see that with the current (generic network, mii) code this does not
work. Jean-Christophe currently works on phylib support which could
improve the situation somewhat. It may still not be possible to do what
you have to, but your patches will need adjustments to phylib anyway.

Could have have a look at it? I asked Jean-Christophe for sending the
phylib support again, and I think it can be merged then.

Thanks
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
