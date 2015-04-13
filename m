Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhXy1-0004l9-7o
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 06:35:33 +0000
Date: Mon, 13 Apr 2015 08:35:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413063510.GU9742@pengutronix.de>
References: <1428064050-21562-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428064050-21562-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] pci: make sure to activate devices on the root bus
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 03, 2015 at 02:27:30PM +0200, Lucas Stach wrote:
> Commit b8a1bb1dd215 (pci: defer device registration until after bridge setup)
> changed the activation order of devices, so that bridges above the devices could
> be configured properly before activating the devices below. This commit failed
> to acknowledge that there may be devices located directly on the root bus without
> any bridge in between and so those devices would never get enabled.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/pci/pci.c   | 7 +++++++
>  include/linux/pci.h | 1 +
>  2 files changed, 8 insertions(+)

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
