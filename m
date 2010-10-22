Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9IDi-00082l-6Z
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 14:03:47 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 16:03:38 +0200
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
	<1287753331-7696-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010221603.38865.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 03/13] mci-core: add multiple block support
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> So far only for reading blocks. This is based on the corresponding
> U-Boot code.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/mci/mci-core.c |   35 +++++++++++++++++++++++++++--------
>  1 files changed, 27 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c92d5a9..34c4f8c 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -139,23 +139,41 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned b
>   * @param dst Where to store the data read from the card
>   * @param blocknum Block number to read
>   */
> -static int mci_read_block(struct device_d *mci_dev, void *dst, unsigned blocknum)
> +static int mci_read_block(struct device_d *mci_dev, void *dst, unsigned blocknum, int blocks) { 

I know real programmers [TM] hate documentation. But if you add a parameter,
please spend the short time to also add a

   "@param blocks Block count to read at once"

(or similar) to the header of this function.

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
