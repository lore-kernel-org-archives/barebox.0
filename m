Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQFK-0005DB-0Z
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 08:42:55 +0000
Date: Wed, 4 Dec 2019 09:42:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191204084251.dnzjclmgf7pf5ayc@pengutronix.de>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/12] Share i.MX ESDHC PBL and PIO code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 02, 2019 at 07:19:42AM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This series is an attempt to share as much functionality between PBL
> ESDHC code and PIO case of regular ESDHC driver as possible, since
> both implementations are identical in a lot of ways.
> 
> Tested on RDU2 (i.MX6) and RDU3 (i.MX8MQ)
> 
> Feedback is welcome!

Looks good. I gave it some testing on a Phytec board, both with PBL and
non PBL. Works as expected. I have merged it to next, let's see if it
survives my compile tests.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
