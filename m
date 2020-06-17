Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTQw-0003RN-0r
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:28:35 +0000
Date: Wed, 17 Jun 2020 10:28:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200617082832.GY11869@pengutronix.de>
References: <20200611171838.13876-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611171838.13876-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] watchdog: f71808e: maintain watchdog timeout occurred flag
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 11, 2020 at 07:18:38PM +0200, Ahmad Fatoum wrote:
> If we experience a watchdog reset, the indicating flag should persist
> till the Linux driver had a chance to see it.
> 
> The flag bit is special however in that writing 1 clears the bit and
> writing 0 keeps it intact, i.e. :
> 
> Bit
> read written  result
>   0     0     = 0
>   1     0     = 1
>   0     1     = 0
>   1     1     = 0
> 
> So in the bootloader, we should write a zero always. The OS on the
> other hand can either write 1 or the old value after reading to
> clear the flag.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/watchdog/f71808e_wdt.c | 59 +++++++++++++++++++++++-----------
>  1 file changed, 40 insertions(+), 19 deletions(-)

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
