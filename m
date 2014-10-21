Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgOpe-00050A-1k
 for barebox@lists.infradead.org; Tue, 21 Oct 2014 02:05:54 +0000
Message-ID: <5445BE66.8020803@atmel.com>
Date: Tue, 21 Oct 2014 10:01:10 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
 <1413828961-12605-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828961-12605-6-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] i2c: at91: fix invalid length check
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

On 10/21/2014 02:16 AM, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Acked-by: Bo Shen <voice.shen@atmel.com>

> ---
>   drivers/i2c/busses/i2c-at91.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> index deb4ea4..3a644cf 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -140,7 +140,7 @@ static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
>
>   static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
>   {
> -	if (dev->buf_len <= 0)
> +	if (!dev->buf_len)
>   		return;
>
>   	at91_twi_write(dev, AT91_TWI_THR, *dev->buf);
> @@ -156,7 +156,7 @@ static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
>
>   static void at91_twi_read_next_byte(struct at91_twi_dev *dev)
>   {
> -	if (dev->buf_len <= 0)
> +	if (!dev->buf_len)
>   		return;
>
>   	*dev->buf = at91_twi_read(dev, AT91_TWI_RHR) & 0xff;
>

Best Regards,
Bo Shen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
