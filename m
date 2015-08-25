Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZU79H-0006zu-5x
 for barebox@lists.infradead.org; Tue, 25 Aug 2015 05:51:55 +0000
Date: Tue, 25 Aug 2015 07:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150825055133.GN18700@pengutronix.de>
References: <1440415935-32674-1-git-send-email-d.schultz@phytec.de>
 <1440415935-32674-2-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440415935-32674-2-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 2/3] drivers: mci: Make two functions public
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 24, 2015 at 01:32:14PM +0200, Daniel Schultz wrote:
> There is no possibility to read/write to the extended CSD register of MMC devices from a command.
> To avoid duplicated driver code, two driver functions have to be public.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  drivers/mci/mci-core.c | 4 ++--
>  include/mci.h          | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index bd5cae2..c22f932 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -370,7 +370,7 @@ static int mmc_send_op_cond(struct mci *mci)
>   * Note: Only cards newer than Version 1.1 (Physical Layer Spec) support
>   * this command
>   */
> -static int mci_send_ext_csd(struct mci *mci, char *ext_csd)
> +int mci_send_ext_csd(struct mci *mci, char *ext_csd)
>  {
>  	struct mci_cmd cmd;
>  	struct mci_data data;
> @@ -394,7 +394,7 @@ static int mci_send_ext_csd(struct mci *mci, char *ext_csd)
>   * @param value FIXME
>   * @return Transaction status (0 on success)
>   */
> -static int mci_switch(struct mci *mci, unsigned set, unsigned index,
> +int mci_switch(struct mci *mci, unsigned set, unsigned index,
>  			unsigned value)
>  {
>  	struct mci_cmd cmd;
> diff --git a/include/mci.h b/include/mci.h
> index c5ab5b3..a7bf8cd 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -372,6 +372,9 @@ struct mci {
>  int mci_register(struct mci_host*);
>  void mci_of_parse(struct mci_host *host);
>  int mci_detect_card(struct mci_host *);
> +int mci_send_ext_csd(struct mci *mci, char *ext_csd);
> +int mci_switch(struct mci *mci, unsigned set, unsigned index,
> +			unsigned value);

Should be before 1/3.

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
