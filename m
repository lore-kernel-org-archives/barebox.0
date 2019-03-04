Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0m9i-000202-8T
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:53:15 +0000
Date: Mon, 4 Mar 2019 12:53:07 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190304115307.GB16532@ravnborg.org>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
 <20190304113823.21535-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190304113823.21535-5-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 4/6] ddr_spd: Add function to read eeprom
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 04, 2019 at 12:38:21PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/ddr_spd.c  | 81 +++++++++++++++++++++++++++++++++++++++++++++++
>  include/ddr_spd.h |  6 ++++
>  2 files changed, 87 insertions(+)
> 
> diff --git a/common/ddr_spd.c b/common/ddr_spd.c
> index 9394c57fa3..a878790550 100644
> --- a/common/ddr_spd.c
> +++ b/common/ddr_spd.c
> @@ -429,3 +429,84 @@ void ddr_spd_print(uint8_t *record)
>  		printf("%02X", record[i]);
>  	printf("\n");
>  }
> +
> +#define SPD_SPA0_ADDRESS        0x36
> +#define SPD_SPA1_ADDRESS        0x37
> +
> +static int select_page(void *ctx,
> +	      int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
> +	      uint8_t addr)

Indent looks strange.

> +
> +static int read_buf(void *ctx,
> +	      int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
> +	      uint8_t addr, int page, void *buf)
Same here.

> +/**
> + * spd_read_eeprom - Read contents of a SPD EEPROM
> + * @ctx: Context pointer for the xfer function
> + * @xfer: I2C message transfer function
> + * @addr: I2C bus address for the EEPROM
> + * @buf: buffer to read the SPD data to
> + *
> + * This function takes a I2C message transfer function and reads the contents
> + * from a SPD EEPROM to the buffer provided at @buf. Returns 0 for success or a
> + * negative error code otherwise.
> + */
> +int spd_read_eeprom(void *ctx,
> +		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
> +		    uint8_t addr, void *buf)
> +{
This looks okay.

I may have missed some trivial logic problems while my focus was at the
very important indentation - sorry :-)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
