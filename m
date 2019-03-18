Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5nys-0002pn-9C
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 08:50:52 +0000
Date: Mon, 18 Mar 2019 09:50:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318085048.usftlmveu7ure6lw@pengutronix.de>
References: <20190315223139.11882-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190315223139.11882-1-user@vserver64>
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
Subject: Re: [PATCH v2] mci: imx-esdhc: resolve conflicting flags
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 15, 2019 at 10:31:39PM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@blala.de>
> 
> With commit 3354adee3920 ("mci: imx-esdhc: Add bigendian register access
> support") and commit 15b64fd520c2 ("mci: imx-esdhc: Add layerscape support")
> two ESDHC_FLAGs got assigned to already existing values. This conflict made
> the imx6sl usdhc appear to be big endian.
> Resolve this conflict by assign the new flags to the next vacant values.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  drivers/mci/imx-esdhc.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Took this one instead.

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
