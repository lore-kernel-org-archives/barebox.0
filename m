Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGjZ-0008OA-Sb
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 08:15:55 +0000
Date: Tue, 14 Apr 2020 10:15:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414081551.GY27288@pengutronix.de>
References: <DB7PR02MB4332C0654DCD03489FFE9575ABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR02MB4332C0654DCD03489FFE9575ABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: Re: [PATCH v2 1/7] add-MCI_SDHCI-dependency-to-Arasan-driver
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Apr 09, 2020 at 02:36:55PM +0000, Michael Graichen wrote:
> The Arasan driver depends on the SDHCI driver, without it we
> will see undefined references while linking arasan-sdhci.c:283: undefined
> reference to `sdhci_set_cmd_xfer_mode' arasan-sdhci.c:299: undefined
> reference to `sdhci_read_response' arasan-sdhci.c:303: undefined reference to
> `sdhci_transfer_data'
> 
> Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
> ---
>  drivers/mci/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Series applied, thanks

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
