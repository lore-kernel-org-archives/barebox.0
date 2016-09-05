Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgnXk-0003co-AK
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 06:38:11 +0000
Date: Mon, 5 Sep 2016 08:37:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160905063746.3y3ddzci7cdlwcex@pengutronix.de>
References: <1472849276-11338-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1472849276-11338-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] scripts: imx-usb-loader: cleanup DCD v2 processing
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 02, 2016 at 10:47:56PM +0200, Alexander Kurz wrote:
> Re-Implement the DCD v2 processing.
> Processing for the DCD write command went into a separate function enabling
> the over-all DCD processing to handle check, nop and unlock commands as well.
> The trivial NOP command is supported right away.
> Further changes: put in some data consistancy checks and error handling, do
> structured member access and proper endianess handling and direct error
> messages to stderr.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  scripts/imx/imx-usb-loader.c | 125 +++++++++++++++++++++++++++----------------
>  scripts/imx/imx.h            |  17 +++++-
>  2 files changed, 95 insertions(+), 47 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 413def6..b5c1531 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -743,7 +743,45 @@ static int sdp_jump_address(unsigned addr)
>  	return 0;
>  }
>  
> -static int write_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
> +static int do_dcd_v2_cmd_write(const unsigned char *dcd)
> +{
> +	int set_bits = 0, clear_bits = 0;
> +	int idx, bytes;
> +	struct imx_dcd_v2_write *recs = (struct imx_dcd_v2_write *) dcd;
> +	int num_rec = (ntohs(recs->length) - 4) /
> +		      sizeof(struct imx_dcd_v2_write_rec);
> +	printf("DCD write: sub dcd length: 0x%04x, flags: 0x%02x\n",
> +		ntohs(recs->length), recs->param);
> +
> +	if (recs->param & PARAMETER_FLAG_MASK) {
> +		if (recs->param & PARAMETER_FLAG_SET)
> +			set_bits = 1;
> +		else
> +			clear_bits = 1;
> +	}
> +	bytes = recs->param & 7;
> +	switch (bytes) {
> +	case 1:
> +	case 2:
> +	case 4:
> +		break;
> +	default:
> +		fprintf(stderr, "ERROR: bad DCD write width %i\n", bytes);
> +		return -1;
> +	}
> +
> +	for (idx = 0; idx < num_rec; idx++) {
> +		const struct imx_dcd_v2_write_rec *record = &recs->data[idx];
> +		int ret = modify_memory(ntohl(record->addr),
> +				 ntohl(record->val), bytes,
> +				 set_bits, clear_bits);
> +		if (ret < 0)
> +			return ret;
> +	}
> +	return 0;
> +}
> +
> +static int process_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
>  			       const unsigned char *file_start, unsigned cnt)
>  {
>  	unsigned char *dcd_end;
> @@ -751,7 +789,7 @@ static int write_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
>  #define cvt_dest_to_src		(((unsigned char *)hdr) - hdr->self)
>  	unsigned char* dcd;
>  	const unsigned char *file_end = file_start + cnt;
> -	int err = 0;
> +	struct imx_ivt_header *dcd_hdr;
>  
>  	if (!hdr->dcd_ptr) {
>  		printf("No dcd table in this ivt\n");
> @@ -761,65 +799,60 @@ static int write_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
>  	dcd = hdr->dcd_ptr + cvt_dest_to_src;
>  
>  	if ((dcd < file_start) || ((dcd + 4) > file_end)) {
> -		printf("bad dcd_ptr %08x\n", hdr->dcd_ptr);
> +		fprintf(stderr, "bad dcd_ptr %08x\n", hdr->dcd_ptr);
>  		return -1;
>  	}
>  
> -	m_length = (dcd[1] << 8) + dcd[2];
> -
> -	printf("main dcd length %x\n", m_length);
> -
> -	if ((dcd[0] != 0xd2) || (dcd[3] != 0x40)) {
> -		printf("Unknown tag\n");
> +	dcd_hdr = (struct imx_ivt_header *) dcd;
> +	if ((dcd_hdr->tag != TAG_DCD_HEADER) ||
> +	    (dcd_hdr->version != DCD_VERSION)) {
> +		fprintf(stderr, "Error: Unknown DCD header tag\n");
>  		return -1;
>  	}
> -
> +	m_length = ntohs(dcd_hdr->length);
>  	dcd_end = dcd + m_length;
> -
>  	if (dcd_end > file_end) {
> -		printf("bad dcd length %08x\n", m_length);
> +		fprintf(stderr, "Error: DCD length %08x exceeds EOF\n",
> +			m_length);
>  		return -1;
>  	}
> +	printf("main dcd length %x\n", m_length);
>  	dcd += 4;
>  
>  	while (dcd < dcd_end) {
> -		unsigned s_length = (dcd[1] << 8) + dcd[2];
> -		unsigned char *s_end = dcd + s_length;
> -		int set_bits = 0, clear_bits = 0;
> -
> -		printf("command: 0x%02x sub dcd length: 0x%04x, flags: 0x%02x\n", dcd[0], s_length, dcd[3]);
> -
> -		if ((dcd[0] != 0xcc)) {
> -			printf("Skipping unknown sub tag 0x%02x with len %04x\n", dcd[0], s_length);
> -			usleep(50000);
> -			dcd += s_length;
> -			continue;
> -		}
> -
> -		if (dcd[3] & PARAMETER_FLAG_MASK) {
> -			if (dcd[3] & PARAMETER_FLAG_SET)
> -				set_bits = 1;
> -			else
> -				clear_bits = 1;
> -		}
> -
> -		dcd += 4;
> -
> -		if (s_end > dcd_end) {
> -			printf("error s_end(%p) > dcd_end(%p)\n", s_end, dcd_end);
> +		int ret = 0;
> +		struct imx_ivt_header *cmd_hdr = (struct imx_ivt_header *) dcd;
> +		unsigned s_length = ntohs(cmd_hdr->length);
> +		if (dcd +  s_length > file_end) {
> +			fprintf(stderr, "Error: DCD length %08x exceeds EOF\n",
> +				s_length);
>  			return -1;
>  		}
> -
> -		while (dcd < s_end) {
> -			unsigned addr = (dcd[0] << 24) | (dcd[1] << 16) | (dcd[2] << 8) | dcd[3];
> -			unsigned val = (dcd[4] << 24) | (dcd[5] << 16) | (dcd[6] << 8) | dcd[7];
> -
> -			dcd += 8;
> -
> -			modify_memory(addr, val, 4, set_bits, clear_bits);
> +		switch (cmd_hdr->tag) {
> +		case TAG_WRITE:
> +			ret = do_dcd_v2_cmd_write(dcd);
> +			break;
> +		case TAG_CHECK:
> +			fprintf(stderr, "DCD check not implemented yet\n");
> +			usleep(50000);
> +			break;
> +		case TAG_UNLOCK:
> +			fprintf(stderr, "DCD unlock not implemented yet\n");
> +			usleep(50000);
> +			break;
> +		case TAG_NOP:
> +			break;
> +		default:
> +			fprintf(stderr, "Skipping unknown DCD sub tag 0x%02x "
> +				"with len %04x\n", cmd_hdr->tag, s_length);
> +			usleep(50000);
> +			break;
>  		}
> +		dcd += s_length;
> +		if (ret < 0)
> +			return ret;
>  	}
> -	return err;
> +	return 0;
>  }
>  
>  static int get_dcd_range_old(const struct imx_flash_header *hdr,
> @@ -984,7 +1017,7 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
>  
>  		break;
>  	case HDR_MX53:
> -		ret = write_dcd_table_ivt(hdr, file_start, cnt);
> +		ret = process_dcd_table_ivt(hdr, file_start, cnt);
>  		hdr->dcd_ptr = 0;
>  
>  		break;
> diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
> index 64ebdce..ae3702c 100644
> --- a/scripts/imx/imx.h
> +++ b/scripts/imx/imx.h
> @@ -36,10 +36,12 @@ struct imx_dcd_rec_v1 {
>  #define IVT_VERSION	0x40
>  #define TAG_DCD_HEADER	0xd2
>  #define DCD_VERSION	0x40
> +#define TAG_UNLOCK	0xb2
> +#define TAG_NOP		0xc0
>  #define TAG_WRITE	0xcc
> +#define TAG_CHECK	0xcf
>  #define PARAMETER_FLAG_MASK	(1 << 3)
>  #define PARAMETER_FLAG_SET	(1 << 4)
> -#define TAG_CHECK	0xcf
>  
>  struct imx_ivt_header {
>  	uint8_t tag;
> @@ -79,4 +81,17 @@ struct config_data {
>  	char *csf;
>  };
>  
> +#define MAX_RECORDS_DCD_V2 1024
> +struct imx_dcd_v2_write_rec {
> +	uint32_t addr;
> +	uint32_t val;
> +} __attribute__((packed));
> +
> +struct imx_dcd_v2_write {
> +	uint8_t tag;
> +	uint16_t length;
> +	uint8_t param;
> +	struct imx_dcd_v2_write_rec data[MAX_RECORDS_DCD_V2];
> +} __attribute__((packed));
> +
>  int parse_config(struct config_data *data, const char *filename);
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
