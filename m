Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEo76-000738-1y
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 21:16:48 +0000
Date: Thu, 20 Sep 2012 23:16:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120920211645.GA1322@pengutronix.de>
References: <20120920053418.GB26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120920053418.GB26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/6 v3] sandbox fix + bus
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 20, 2012 at 07:34:18AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	now register_driver/device are for bus usage ONLY
> 
> 	v3:
> 	 - drop check on NULL pointer
> 	 - add platform_driver/device_register
> 	 - use bus_for_each
> 
> 	v2:
> 	 - on the sandbox we register device before barebox started
> 	   this is working today as nothing need to be initialized before
> 	   regisering a device. But as I attached device to bus this will no
> 	   be the case anymore so fix it
> 
> 	 - net/tap fix allocated data to be set to 0
> 
> The following changes since commit 4f2aa8ffb124a7f40da2a5bc1a2c225554b24bdd:
> 
>   Merge branch 'for-next/testing-menu' into next (2012-09-17 12:15:53 +0200)

Applied 1-3 to master and 4-5 to next. Will also apply patch 6, but I
currently have no branch to apply this on. I'll probably declare some
-next branch as next-stable and apply this onto that branch.

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
