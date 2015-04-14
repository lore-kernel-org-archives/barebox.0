Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yi5wk-0008UH-Hh
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 18:52:31 +0000
Date: Tue, 14 Apr 2015 20:52:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150414185207.GG9742@pengutronix.de>
References: <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428934950-6836-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428934950-6836-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2] USB: xHCI: Sync non-coherent DMA buffers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 13, 2015 at 04:22:30PM +0200, Sebastian Hesselbarth wrote:
> When working with non-coherent transfer buffers, we have to sync
> device and cpu for outgoing and incoming buffers. Fix the driver where
> non-coherent buffers are used in device context.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Looks ok to me now. Lucas?

> ---
> Changelog:
> v1->v2:
> - balance dma_sync_single_foo() calls (Reported by Lucas Stach)
> 
> Cc: barebox@lists.infradead.org
> Cc: Lucas Stach <dev@lynxeye.de>

Seems your git send-email ignored this.

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
