Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3en6-0004Yq-Hi
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 07:56:29 +0000
Date: Mon, 7 Nov 2016 08:56:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161107075606.cststkjp7ocvkesx@pengutronix.de>
References: <1478197957-27579-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1478197957-27579-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] scripts imx-image: add DCD NOP command support
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Thu, Nov 03, 2016 at 07:32:37PM +0100, Alexander Kurz wrote:
> The DCD NOP command is available for all flash header v2 devices (i.MX28,
> 50, 53, 6 and 7).
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  scripts/imx/README      |  1 +
>  scripts/imx/imx-image.c | 28 ++++++++++++++++++++++++++++
>  scripts/imx/imx.c       | 11 +++++++++++
>  scripts/imx/imx.h       |  1 +
>  4 files changed, 41 insertions(+)

Applied, but ... out of curiosity, what do we need this for?

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
