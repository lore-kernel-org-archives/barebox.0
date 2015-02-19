Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOXwy-0007fA-LW
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 20:43:57 +0000
Date: Thu, 19 Feb 2015 21:43:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150219204334.GD12209@pengutronix.de>
References: <1424165859-28726-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424165859-28726-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH: For next] boards: phytec-som-am335x: Add phycard-som
 support
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 17, 2015 at 10:37:39AM +0100, Wadim Egorov wrote:
> Add support for the phyCARD SOM.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  Documentation/boards/am335x/phytec-som.rst      |   4 +
>  arch/arm/boards/phytec-som-am335x/board.c       |   6 +
>  arch/arm/boards/phytec-som-am335x/lowlevel.c    |   4 +
>  arch/arm/boards/phytec-som-am335x/ram-timings.h |  23 +++
>  arch/arm/dts/Makefile                           |   4 +-
>  arch/arm/dts/am335x-phytec-phycard-som-mlo.dts  |  28 +++
>  arch/arm/dts/am335x-phytec-phycard-som.dts      |  20 +++
>  arch/arm/dts/am335x-phytec-phycard-som.dtsi     | 228 ++++++++++++++++++++++++
>  images/Makefile.am33xx                          |   8 +
>  9 files changed, 324 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
>  create mode 100644 arch/arm/dts/am335x-phytec-phycard-som.dts
>  create mode 100644 arch/arm/dts/am335x-phytec-phycard-som.dtsi

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
