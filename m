Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z56Ps-0001nl-A5
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 06:01:40 +0000
Date: Wed, 17 Jun 2015 08:01:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150617060117.GB6325@pengutronix.de>
References: <1434399757-19360-1-git-send-email-antonynpavlov@gmail.com>
 <20150616091246.1123a8b08e9590e87ddaf932@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150616091246.1123a8b08e9590e87ddaf932@gmail.com>
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
Subject: Re: [PATCH] mtd: m25p80: add Spansion S25FL204K support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Tue, Jun 16, 2015 at 09:12:46AM +0300, Antony Pavlov wrote:
> On Mon, 15 Jun 2015 23:22:37 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> > Spansion S25FL204K is a 4-Mbit 3.0V Serial Flash Memory
> > with Uniform 4 kB Sectors.
> 
> It looks that I have to recheck this patch with spi-nor framework.

Ok, so I won't apply this one.

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
