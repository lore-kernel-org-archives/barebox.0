Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRFFd-0003qO-N1
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 11:40:31 +0000
Date: Mon, 26 Nov 2018 12:40:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181126114014.lha4ijoinuz4gwxb@pengutronix.de>
References: <20181126100629.10856-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181126100629.10856-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ubimkvol: add support for `volume_id` parameter
To: Barebox List <barebox@lists.infradead.org>
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>, Leif Middelschulte <leif.middelschulte@gmail.com>

On Mon, Nov 26, 2018 at 11:06:29AM +0100, Sascha Hauer wrote:
> From: Leif Middelschulte <leif.middelschulte@klsmartin.com>
> 
> The volume id can be used to refer to a specific volume.
> This adds support to choose a corresponding argument when creating
> a UBI volume.
> 
> Signed-off-by: Leif Middelschulte <leif.middelschulte@gmail.com>
> ---
>  commands/ubi.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

Applied, thanks.

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
