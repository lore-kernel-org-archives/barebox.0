Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMfeh-0007HL-2S
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 11:10:40 +0000
Date: Thu, 10 Jun 2010 13:10:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100610111035.GG20799@pengutronix.de>
References: <cover.1276065824.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH 0/8] i.MX25 3DS fixes and enhancements
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Wed, Jun 09, 2010 at 10:04:59AM +0300, Baruch Siach wrote:
> This series of patches includes the following:
> 
> 1. Fixes and clean-ups for the i.MX25 3DS board code
> 2. New driver for the i.MX25 3DS on-board PMIC
> 3. Enable proper FEC initialization including PHY power supply enable
> 4. Add support for boot from UART on the i.MX25 3DS

Applied them all except the last one, see the comment there.

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
