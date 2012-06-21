Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShlDg-000309-Jw
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 17:31:00 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShlDf-0000H6-L6
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 17:31:00 +0000
Date: Thu, 21 Jun 2012 19:30:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120621173056.GE28394@pengutronix.de>
References: <1340269942-25253-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340269942-25253-1-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCHv2] ARM/MXS: free the watchdog from acting as a system
 reset source on demand
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 21, 2012 at 11:12:20AM +0200, Juergen Beisert wrote:
> Currently the watchdog is occupied for system reset. This usage collides with
> the dedicated usage of a watchdog. This patch series changes the behaviour of
> at least i.MX23/i.MX28 where the chipset supports a simple and powerful
> alternative to reset the whole SoC (including the PMIC).
> 
> This series fixes the coding style issues Uwe mentions.
> 
> Comments are welcome.

Folded both patches into one and applied.

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
