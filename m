Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0mJ7-0006ED-50
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 12:03:00 +0000
Date: Mon, 4 Mar 2019 13:02:52 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190304120252.GC16532@ravnborg.org>
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

Hi Sascha

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
> +{
> +	struct i2c_msg msg = {
> +		.addr = addr,
> +		.len = 0,
> +	};
> +	int ret;
> +
> +	ret = xfer(ctx, &msg, 1);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int read_buf(void *ctx,
> +	      int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
> +	      uint8_t addr, int page, void *buf)
> +{
> +	uint8_t pos = 0;
> +	int ret;
> +	struct i2c_msg msg[2] = {
> +		{
> +			.addr = addr,
> +			.len = 1,
> +			.buf = &pos,
> +		}, {
> +			.addr = addr,
> +			.len = 256,
> +			.flags = I2C_M_RD,
> +			.buf = buf,
> +		}
> +	};
> +
> +	ret = select_page(ctx, xfer, page);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = xfer(ctx, msg, 2);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +/**
> + * spd_read_eeprom - Read contents of a SPD EEPROM
> + * @ctx: Context pointer for the xfer function
> + * @xfer: I2C message transfer function
> + * @addr: I2C bus address for the EEPROM
> + * @buf: buffer to read the SPD data to
It is not obvious what buffer size to provide here.
And if it happens to be SPD_MEMTYPE_DDR4 then we suddenly start to
write data at offset 256 in the buffer.
So maybe add a small comment that this should always be 512 bytes.
Or even better 2 x SPD_PAGE_SIZE (defined to 256)


> + *
> + * This function takes a I2C message transfer function and reads the contents
> + * from a SPD EEPROM to the buffer provided at @buf. Returns 0 for success or a
> + * negative error code otherwise.
> + */
> +int spd_read_eeprom(void *ctx,
> +		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
> +		    uint8_t addr, void *buf)
> +{
> +	unsigned char *buf8 = buf;
> +	int ret;
> +
> +	ret = read_buf(ctx, xfer, addr, SPD_SPA0_ADDRESS, buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (buf8[2] == SPD_MEMTYPE_DDR4) {
> +		ret = read_buf(ctx, xfer, addr, SPD_SPA1_ADDRESS, buf + 256);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> diff --git a/include/ddr_spd.h b/include/ddr_spd.h
> index 051275141f..95d0eb04b6 100644
> --- a/include/ddr_spd.h
> +++ b/include/ddr_spd.h
> @@ -6,6 +6,8 @@
>  #ifndef _DDR_SPD_H_
>  #define _DDR_SPD_H_
>  
> +#include <i2c/i2c.h>
> +
>  /*
>   * Format from "JEDEC Standard No. 21-C,
>   * Appendix D: Rev 1.0: SPD's for DDR SDRAM
> @@ -562,4 +564,8 @@ void ddr2_spd_dump(const struct ddr2_spd_eeprom *spd);
>  int ddr3_spd_check(const struct ddr3_spd_eeprom *spd);
>  int ddr4_spd_check(const struct ddr4_spd_eeprom *spd);
>  
> +int spd_read_eeprom(void *ctx,
> +		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
> +		    uint8_t addr, void *buf);
> +
>  #endif /* _DDR_SPD_H_ */
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
