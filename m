Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fFvt6-0004Yp-7i
 for barebox@lists.infradead.org; Tue, 08 May 2018 06:14:14 +0000
Date: Tue, 8 May 2018 08:13:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180508061349.wdupjogtoxacdku6@pengutronix.de>
References: <20180502110214.zsdcwbt3qdgy2y7u@pengutronix.de>
 <20180502132356.4207-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180502132356.4207-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH v2] blspec: add checking of optional key machine-id
To: Andreas Schmidt <mail@schmidt-andreas.de>
Cc: barebox@lists.infradead.org

On Wed, May 02, 2018 at 03:23:56PM +0200, Andreas Schmidt wrote:
> For filtering of Bootloader Spec entries, Bootloader Spec
> specify an optional key machine-id. By set the
> global.boot.machine-id variable the checking of machine-id
> key in Bootloader Spec entries will be activate. If the
> variable and key match, appropriate boot entry will be
> booting. If it not match boot entry will be ignore and
> barebox check the next boot entry.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
> ---

As mentioned, machine-id is not for filtering out different bootloader
spec entries for the same OS, but for selecting a particular OS if
different ones are installed. So this patch has a valid usecase, it's
just not the one Andreas made this patch for.

Because it's a valid patch: Applied, thanks

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
