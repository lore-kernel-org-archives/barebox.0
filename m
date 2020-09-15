Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI5Sy-0001pp-6V
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:33:28 +0000
Date: Tue, 15 Sep 2020 09:33:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200915073326.GE4498@pengutronix.de>
References: <20200914160208.14747-1-ysionneau@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914160208.14747-1-ysionneau@kalray.eu>
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
Subject: Re: [PATCH] mci: fix wrong sd/mmc/emmc card size computation for
 arch where char is signed
To: Yann Sionneau <ysionneau@kalray.eu>
Cc: barebox@lists.infradead.org

On Mon, Sep 14, 2020 at 06:02:08PM +0200, Yann Sionneau wrote:
> char type can be either signed or unsigned according to C standard.
> If your arch has signed char, this kind of computation will end up wrong
> because of sign extension:
> 
> https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/mci-core.c#n869
> 
> mci->capacity = mci->ext_csd[EXT_CSD_SEC_COUNT] << 0 |
> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 1] << 8 |
> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 2] << 16 |
> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 3] << 24;
> 
> Turning the ext_csd field into u8 * fixes the issue.
> 
> Signed-off-by: Yann Sionneau <ysionneau@kalray.eu>
> ---
>  include/mci.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
