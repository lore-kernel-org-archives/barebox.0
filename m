Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gteac-000723-Py
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 20:23:36 +0000
Date: Tue, 12 Feb 2019 21:23:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212202332.illgomcrw3wkokmv@pengutronix.de>
References: <20190212151041.17507-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190212151041.17507-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] of: base: add helper to rename a node
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de

On Tue, Feb 12, 2019 at 04:10:40PM +0100, Marco Felsch wrote:
> Sometimes it can be necessary to rename a node, e.g. a upstream node was
> renamed and the whole board logic depends on the old naming scheme.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Note:
> In my v1 this patch was required for the followed, but now it isn't. So
> feel free to add or drop it. IMHO it can be a useful helper in the
> future.

Indeed it can be, but as it's currently unused I only applied 2/2.

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
