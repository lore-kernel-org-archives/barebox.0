Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2uMF-0005b0-U7
 for barebox@lists.infradead.org; Wed, 18 May 2016 05:49:24 +0000
Date: Wed, 18 May 2016 07:49:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160518054901.GY19714@pengutronix.de>
References: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 0/6] AIODEV subsystem
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 16, 2016 at 09:45:55AM -0700, Andrey Smirnov wrote:
> Hi everyone,
> 
> Here's the third version of AIODEV patchset. The change list is the
> following:
> 
> Changes since v2:
> 
> 	- TEMPMON driver converted to use existing DT bindings
> 
> 	- As a result of the above NVMEM subsystem was dropped
> 
> 	- TEMPMON driver converted to use syscon_base_lookup_by_phandle
> 
> Changes since v1:
> 
> 	- Patches fixed to use IIO DT bindings
> 
> 	- Channel's index is now cached and no O(n) complex lookup is
>           perfomed when a channel is queried by its index
> 
> 	- Added GPL v2 headers
> 
> 	- Incorporated Sascha's feedback to simplify code
> 
> 
> Andrey Smirnov (5):
>   RDU2: Add more peripheral reset code
>   commands: Add 'hwmon' command
>   syscon: Do not return NULL when driver is not selected
>   syscon: Decrease driver registration priority
>   aiodev: Add TEMPMON driver
> 
> Sascha Hauer (2):
>   drivers: Introduce AIODEV subsystem
>   aiodev: Add basic LM75 temperature driver

Applied, thanks for continuing the work on this.

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
