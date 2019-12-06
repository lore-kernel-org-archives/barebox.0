Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idEX7-0002v3-Kr
 for barebox@lists.infradead.org; Fri, 06 Dec 2019 14:24:39 +0000
Date: Fri, 6 Dec 2019 15:24:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191206142436.iymseouoi7eltuzg@pengutronix.de>
References: <1575383339-231689-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575383339-231689-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH] ARM: boards: phytec-som-imx6: Replace spi by spi-nor in
 bootsource script
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 03, 2019 at 03:28:59PM +0100, Stefan Riedmueller wrote:
> Commit 7802c6f891b7 ("ARM: i.MX6: boot: Return BOOTSOURCE_SPI_NOR, not
> BOOTSOURCE_SPI") changed the returned boot source for SPI NOR on i.MX 6
> from SPI to SPI_NOR. This needs to be accounted for in the bootsource
> scripts.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  .../phytec-som-imx6/defaultenv-physom-imx6-phycore/init/bootsource      | 2 +-
>  arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/bootsource  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

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
