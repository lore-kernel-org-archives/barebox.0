Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTipE-0004RT-R7
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 07:07:14 +0000
Date: Fri, 15 Jun 2018 09:06:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180615070658.rv7tzscgd2a2aj5y@pengutronix.de>
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180615034409.22180-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v7 00/10] ARM: i.MX8MQ and EVK support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 14, 2018 at 08:43:59PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> Picking up where Sascha left off, this is the next version of the
> patchset that adds support for i.MX8MQ EVK board.
> 
> This patchest is also availible at:
> 
>   https://github.com/ndreys/barebox/tree/imx8m-support-v7

Applied with some adjustments. I meant to bypass the call to is_timeout
and get_time_ns for the PBL rather than providing dummy functions for
it.

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
