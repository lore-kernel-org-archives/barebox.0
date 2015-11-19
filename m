Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzK4s-0001kJ-V8
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 07:56:23 +0000
Date: Thu, 19 Nov 2015 08:56:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151119075600.GD11966@pengutronix.de>
References: <1447885436-30683-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447885436-30683-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/2] add multiplexed I2C bus support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 19, 2015 at 01:23:54AM +0300, Antony Pavlov wrote:
> This patchseries adds multiplexed I2C bus support to barebox
> and a driver for pca954x bus multiplexer.
> 
> Changes since RFC version:
> 
>   * rename drivers/i2c/muxes/pca954x.c -> drivers/i2c/muxes/i2c-mux-pca954x.c;
>   * remove adapter numbering hack in drivers/i2c/i2c-mux.c;
>   * add copyright comments;
>   * sync with linux-v4.4-rc1.
> 
> 
> Antony Pavlov (2):
>   i2c: import multiplexed I2C bus core support from linux kernel
>   i2c: add pca954x bus multiplexer driver

Looks good, thanks applied.

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
