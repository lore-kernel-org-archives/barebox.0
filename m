Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjfzi-0005MJ-42
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 07:52:17 +0000
Date: Wed, 16 Jan 2019 08:52:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190116075212.rnhenmixnhvfojjc@pengutronix.de>
References: <20190115103423.5233-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190115103423.5233-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH v1 1/3] ARM: rpi: make locally used functions static
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 15, 2019 at 11:34:21AM +0100, Roland Hieber wrote:
> These functions are not meant to be a public interface, so they can well
> be static. rpi_b_plus_init() was previously declared with a prototype,
> which is no longer needed.
> 
> This fixes the following build warnings:
> 
>     .../arch/arm/boards/raspberry-pi/rpi-common.c:124:6: warning: no previous prototype for 'rpi_add_led' [-Wmissing-prototypes]
>      void rpi_add_led(void)
>           ^~~~~~~~~~~
>     .../arch/arm/boards/raspberry-pi/rpi-common.c:141:6: warning: no previous prototype for 'rpi_b_init' [-Wmissing-prototypes]
>      void rpi_b_init(void)
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---

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
