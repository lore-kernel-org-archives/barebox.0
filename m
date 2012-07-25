Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Stv8g-0005BF-FH
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 06:32:08 +0000
Date: Wed, 25 Jul 2012 08:31:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120725063107.GG30009@pengutronix.de>
References: <20120723064121.GW30009@pengutronix.de>
 <1343121891-1643-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343121891-1643-1-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH] ARM/Samsung: remaining clean up...
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 24, 2012 at 11:24:48AM +0200, Juergen Beisert wrote:
> ...in preparation to add the S3C6410 SoC support.
> 
> Mostly simplifying the Samsung serial driver and some more cosmetic. These
> patches are a re-work and re-send of the remaining ones not yet included from
> the previous "ARM/Samsung: more clean up..." series.
> 
> The patches 1/3 and 3/3 base on the current "next", because they touch code
> for the new S5Pxx SoCs.

Applied, thanks

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
