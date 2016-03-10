Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adwUP-00034n-Os
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 09:02:39 +0000
Date: Thu, 10 Mar 2016 10:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160310090215.GJ30994@pengutronix.de>
References: <1457520654-31116-1-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457520654-31116-1-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH v2] ehci-hcd: preserve DTC in QH for interrupt transactions
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, Mar 09, 2016 at 01:50:54PM +0300, Aleksey Kuleshov wrote:
> In Linux ehci-q Data Toggle Control bit for interrupt transactions
> is preserved in Queue Head (EHCI 3.6.2). So don't set 14's bit in
> qh_endpt1 and don't manage toggle bit anywhere in int transactions.
> 
> This fixes an idle issue for USB keyboards, where keys
> were physically changed but barebox haven't seen them in polling
> until the next USB keyboard polling occurs.
> 
> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>

Applied, thanks

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
