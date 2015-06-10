Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2XZT-0007vH-A1
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 04:25:00 +0000
Date: Wed, 10 Jun 2015 06:24:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150610042433.GS6325@pengutronix.de>
References: <1433833407-2747-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1433833407-2747-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH v3] image: am335x: Generate SPI MLO images
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 09, 2015 at 09:03:27AM +0200, Wadim Egorov wrote:
> Generate *.spi.img files for SPI loading on AM335x.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
> v3:
> 	- Added %.mlo file dependency
> ---
>  images/Makefile.am33xx | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)

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
