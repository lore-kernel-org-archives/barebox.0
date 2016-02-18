Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWMe0-0001fV-As
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 11:21:13 +0000
Date: Thu, 18 Feb 2016 12:20:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160218112047.GG3939@pengutronix.de>
References: <1455732129-21117-1-git-send-email-laforge@gnumonks.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455732129-21117-1-git-send-email-laforge@gnumonks.org>
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
Subject: Re: [PATCH] eeprom/at25: parse partitions from device tree
To: Harald Welte <laforge@gnumonks.org>
Cc: barebox@lists.infradead.org

On Wed, Feb 17, 2016 at 07:02:09PM +0100, Harald Welte wrote:
> Unlike at24 (I2C), the at25 (spi) EEPROM driver doesn't check if the
> device tree node contains partition definitions.  This means that one
> for example cannot have bootstate partitions on an at25 EEPROM, while it
> works on an at24 EEPROM.
> 
> This patch adds device tree based partition support to the at25 driver.
> 
> Signed-off-by: Harald Welte <laforge@gnumonks.org>
> ---
>  drivers/eeprom/at25.c | 1 +
>  1 file changed, 1 insertion(+)

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
