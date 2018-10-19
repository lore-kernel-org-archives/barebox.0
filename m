Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDTSV-0006zW-Ut
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 12:01:04 +0000
Date: Fri, 19 Oct 2018 14:00:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181019120040.zs3oml7c4nutb2ag@pengutronix.de>
References: <20181017140849.10433-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181017140849.10433-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] Makefile: move -Wmissing-prototypes from mips to main
 Makefile
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 17, 2018 at 04:08:49PM +0200, Oleksij Rempel wrote:
> Currently we get -Wmissing-prototypes warning only on arch/mips.
> With this patch we should be able to see this warning on all supported
> architectures.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Generally I like this. However, there are *so* many warnings on other
architectures that I would prefer fixing another bunch of them before
merging this change.

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
