Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbqq-0008NE-ME
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 13:41:30 +0000
Date: Fri, 15 Nov 2019 14:41:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191115134123.qezite7fnztgihgr@pengutronix.de>
References: <20191112120036.5dghk76prcxsxtjh@pengutronix.de>
 <20191115073239.21013-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115073239.21013-1-ahmad@a3f.at>
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
Subject: Re: [PATCH v2 0/3] net: designware: eqos: stop DMA on halt
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Fri, Nov 15, 2019 at 08:32:36AM +0100, Ahmad Fatoum wrote:
> I recently learnt that barebox Ethernet drivers need to call ->halt 
> themselves, either directly or indirectly.
> 
> The first patch does this. Sascha, do you do fixups into master? If so,
> you could fix the first commit up into my previous patch.
> 
> After applying the patch and doing a round of boot bnet, the first MDIO
> access during probe times out:
> 
>     ERROR: <NULL>: MDIO not idle at entry
> 
> This is fixed by the other two commits.
> 
> The driver isn't in a release yet, so I hope they could join the driver
> in master.

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
