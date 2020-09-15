Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA5v-0000aJ-FQ
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:30:00 +0000
Date: Tue, 15 Sep 2020 14:29:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200915122957.GG4498@pengutronix.de>
References: <20200915115247.30015-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915115247.30015-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH] mci: bcm2835: depend on sdhci
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Tue, Sep 15, 2020 at 01:52:47PM +0200, Roland Hieber wrote:
> The driver uses functions defined in sdhci.o, and will fail to build
> otherwise:
> 
>     drivers/mci/mci-bcm2835.o: in function `bcm2835_mci_request':
>     drivers/mci/mci-bcm2835.c:134: undefined reference to `sdhci_set_cmd_xfer_mode'
>     arm-v5te-linux-gnueabi-ld: drivers/mci/mci-bcm2835.c:169: undefined reference to `sdhci_read_response'
>     arm-v5te-linux-gnueabi-ld: drivers/mci/mci-bcm2835.c:175: undefined reference to `sdhci_transfer_data'
> 
> Fixes: f8dffc9338dc2c7ae830 (2019-11-19, "mci: bcm2835: Use sdhci_set_cmd_xfer_mode()")
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  drivers/mci/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

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
