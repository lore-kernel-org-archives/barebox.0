Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw41a-0000fn-86
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 13:01:55 +0000
Date: Mon, 27 Jan 2020 14:01:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200127130152.ag7chnpqcriucog3@pengutronix.de>
References: <20200127074115.17013-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127074115.17013-1-ceggers@arri.de>
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
Subject: Re: [PATCH] eeprom: at25: Allow page sizes greater than 16 bit
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Mon, Jan 27, 2020 at 08:41:15AM +0100, Christian Eggers wrote:
> For FRAM devices the page size is usually equal to the device size. Some
> available devices are greater than 64kB, so a 32 bit variable must be
> used.
> 
> The same change has to be done for the Linux driver. I'll try to
> upstream this as soon as possible.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  drivers/eeprom/at25.c | 2 +-
>  include/spi/eeprom.h  | 2 +-
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
