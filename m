Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUwPi-0004yL-KF
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 09:54:59 +0000
Date: Wed, 24 Apr 2013 11:54:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130424095455.GC32299@pengutronix.de>
References: <1366794547-29296-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366794547-29296-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] mci: add Secure Digital Host Controller Interface
 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 24, 2013 at 11:09:07AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as today more and more hw use it so import a sdhci implemetation based on
> linux.

Problem is that the Linux implementation sucks :/

At least on i.MX this driver is a pain to use. It needs more quirks than
fit into a 32bit variable and still the i.MX port needs driver logic
in the register accessor functions. Maybe i.MX is the worst of all
implementations, but I'm not considering using the Linux driver for
i.MX on barebox.
If other SoCs work better with the Linux driver we can still merge it
though.

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
