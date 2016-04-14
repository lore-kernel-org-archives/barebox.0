Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqaJ7-0000L8-6q
 for barebox@lists.infradead.org; Thu, 14 Apr 2016 05:59:14 +0000
Date: Thu, 14 Apr 2016 07:58:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160414055850.GW9102@pengutronix.de>
References: <1460532965-19072-1-git-send-email-alexander.stein@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460532965-19072-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: Re: [PATCH 1/1] scripts: imx-image: Fix image size in flash header
 for i.MX35
To: Alexander Stein <alexander.stein@systec-electronic.com>
Cc: barebox@lists.infradead.org, Daniel Krueger <daniel.krueger@systec-electronic.com>

On Wed, Apr 13, 2016 at 09:36:05AM +0200, Alexander Stein wrote:
> The i.MX35 needs additional 0x1000 byte. This quirk moved to the wrong
> location during refactoring of imx-image for v2016.03.0.
> 
> Fixes: adade597593442 ""scripts: imx: Allow to create signed images")
> Signed-off-by: Daniel Krueger <daniel.krueger@systec-electronic.com>
> Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
> ---
>  scripts/imx/imx.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

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
