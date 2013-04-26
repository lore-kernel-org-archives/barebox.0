Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVqes-0005zz-7o
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 21:58:22 +0000
Date: Fri, 26 Apr 2013 23:58:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426215820.GA32299@pengutronix.de>
References: <1366973682.4158.142.camel@coredoba.hi.pengutronix.de>
 <517A5E0A.3000507@sam-solutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <517A5E0A.3000507@sam-solutions.net>
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
Subject: Re: Re: [PATCH] ARM: OMAP5 processors support
To: Uladzimir Bely <u.bely@sam-solutions.net>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 01:59:22PM +0300, Uladzimir Bely wrote:
> As an example, are there any DT-only (without machine ID) boards in barebox?

basically you just don't have to call armlinux_set_architecture()

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
