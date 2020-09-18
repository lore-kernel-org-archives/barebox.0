Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJCyd-0006kV-L4
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 09:46:49 +0000
Date: Fri, 18 Sep 2020 11:46:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200918094646.GU4498@pengutronix.de>
References: <20200916162317.5270-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916162317.5270-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] mtd: spi-nor: cadence: fix csqpi corruption in
 cqspi_set_protocol
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Wed, Sep 16, 2020 at 05:23:17PM +0100, Ian Abbott wrote:
> cqspi_set_protocol() sets `inst_width`, `addr_width` and `data_width`
> for the previous chip-select in `cqspi->current_cs`, but that is
> initially set to -1, leading to corruption of other `cqspi->` members.
> Change it to set `inst_width`, `addr_width` and `data_width` for the
> chip-select associated with the `nor` parameter.
> 
> Fixes: 5085d2ef3fbf ("mtd: spi-nor: cadence: add cqspi_set_protocol")
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  drivers/mtd/spi-nor/cadence-quadspi.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

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
