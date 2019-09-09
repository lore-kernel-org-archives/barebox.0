Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FUg-00055D-Js
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:57:55 +0000
Date: Mon, 9 Sep 2019 10:57:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909085753.g7iiluefz4otlfki@pengutronix.de>
References: <20190906132008.25309-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906132008.25309-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH v2 0/7] Device Tree Overlay Support
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 06, 2019 at 03:20:01PM +0200, Michael Tretter wrote:
> Hello,
> 
> This is the v2 for adding device tree overlay support to barebox.
> 
> The biggest change is the new function of_overlay_apply_tree() which accepts a
> devicetree and the root node of an overlay and applies the overlay to the
> devicetree.
> 
> Apart from that, I fixed various issues like memory leaks, useless includes,
> missing documentation, formatting of output messages, and a missing "static
> inline".
> 
> Michael

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
