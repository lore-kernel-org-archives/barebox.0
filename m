Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3RNd-0000hy-RO
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 14:23:43 +0000
Date: Wed, 15 Jan 2014 15:23:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140115142319.GQ16215@pengutronix.de>
References: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: Re: [PATCH v2 0/4] mmc: add setdsr support
To: Markus Niebel <list-09_barebox@tqsc.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 14, 2014 at 09:23:33AM +0100, Markus Niebel wrote:
> This is an example to add DSR support to barebox. Why this feature is
> considered as useful is described in the first patch. Second and third
> patch show how to pass values via device tree or platform data and 
> last patch shows how this can be supported for a board using platform 
> data.
> 
> Tested with TQMa53 and a 4.41 Micron eMMC with DSR support.

Applied, thanks

Sascha

> 
> Changelog v1 (RFC) -> v2
> - add device tree support
> - fix possible null pointer access
> 
> [PATCH 1/4] mci: add DSR support
> [PATCH 2/4] mci: add device tree support for DSR
> [PATCH 3/4] mci: imx-esdhc: add DSR support
> [PATCH 4/4] boards: tqma53: add DSR support for eMMC
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
