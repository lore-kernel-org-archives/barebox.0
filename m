Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw44W-000101-9t
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 13:04:57 +0000
Date: Mon, 27 Jan 2020 14:04:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200127130454.csj7ziu7b2z2nmfc@pengutronix.de>
References: <20200127074415.17165-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127074415.17165-1-ceggers@arri.de>
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
Subject: Re: [PATCH] common: make CONFIG_BAREBOX_UPDATE visible
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Mon, Jan 27, 2020 at 08:44:15AM +0100, Christian Eggers wrote:
> The barebox update infrastructure is also useful without
> CONFIG_CMD_BAREBOX_UPDATE (e.g. from a own barebox_main() with
> CONFIG_SHELL_NONE).
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  common/Kconfig | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

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
