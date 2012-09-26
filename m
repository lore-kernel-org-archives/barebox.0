Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGqxH-0001sn-KR
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 12:43:08 +0000
Date: Wed, 26 Sep 2012 14:43:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926124305.GO1322@pengutronix.de>
References: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
 <1348660411-9210-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348660411-9210-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/3] net/eth: fix link handling
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 01:53:31PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> The current code handle just the send where we are supposed to the same on rx
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---

This is broken. For better readability I refer to the result, not to the
patch:

> int eth_open(void)
> {
> 	int ret;
> 
> 	if (!eth_current)
> 		return -ENODEV;
> 
> 	if (!eth_current->active) {
> 		ret = eth_current->open(eth_current);
> 		if (ret)
> 			return ret;
> 
> 		if (eth_current->phydev)
> 			eth_current->active = eth_current->phydev->link;
> 		else
> 			eth_current->active = 1;
> 	}
> 
> 	if (!eth_current->active)
> 		return -ENETDOWN;
> 
> 	return 0;
> }

The eth->active is for tracking whether a device is opened (thus we have
to call eth->halt). With this patch eth->active == 0 could mean:

a) device not opened
b) opened, but no link

This is asking for trouble. A bit only has two states, you should not
encode three states in it.

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
