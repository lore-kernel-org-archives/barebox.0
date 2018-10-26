Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG0Mc-0003Bq-6v
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 11:33:16 +0000
Date: Fri, 26 Oct 2018 13:33:02 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20181026113302.oflzc4mozppexui6@pengutronix.de>
References: <20181026112914.28609-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181026112914.28609-1-mkl@pengutronix.de>
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
Subject: Re: [PATCH] scripts: imx-usb-loader: list_imx_device_types(): move
 variable declaration out of for() loop
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 01:29:14PM +0200, Marc Kleine-Budde wrote:
> On older compilers this causes the following error:
> | scripts/imx/imx-usb-loader.c: In function 'list_imx_device_types':
> | scripts/imx/imx-usb-loader.c:252:2: error: 'for' loop initial declarations are only allowed in C99 mode
> |   for (int i = 0; i < ARRAY_SIZE(imx_ids); i++) {
> |   ^
> | scripts/imx/imx-usb-loader.c:252:2: note: use option -std=c99 or -std=gnu99 to compile your code
> 
> Fixes: bcc2df673cdb ("scripts: imx-usb-loader: allow use of unknown USB IDs")
> Reported-by: Niklas Reisser <Niklas.Reisser@de.bosch.com>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

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
