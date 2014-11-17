Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XqH2y-0002fr-0q
 for barebox@lists.infradead.org; Mon, 17 Nov 2014 07:48:28 +0000
Date: Mon, 17 Nov 2014 08:48:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141117074805.GB30369@pengutronix.de>
References: <1415921097-26063-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415921097-26063-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i.MX6: esdctl: Fix a bug in memory probing code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Thu, Nov 13, 2014 at 03:24:57PM -0800, Andrey Smirnov wrote:
> Old version of imx6_mmdc_add_mem did not use 64-bit arithmetic and
> thus was prone to overflow on systems with 4GB of memory. It also did
> not take into account the fact that i.MX6 does not support more than
> 3.8GB of memory and would report incorrect memory size. This commit
> fixes both issues.

I never had such a luxury board ;)

Applied with some adjustments, I used the already existing min() macro
instead of defineing a new one

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
