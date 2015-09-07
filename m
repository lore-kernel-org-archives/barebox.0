Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZYqQV-00043c-9E
 for barebox@lists.infradead.org; Mon, 07 Sep 2015 07:01:16 +0000
Date: Mon, 7 Sep 2015 09:00:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150907070053.GY18700@pengutronix.de>
References: <1441175333-26759-1-git-send-email-d.schultz@phytec.de>
 <1441175333-26759-4-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441175333-26759-4-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v3 4/4] commands: Add MMC ext. CSD register tool
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 02, 2015 at 08:28:53AM +0200, Daniel Schultz wrote:
> +#define EXT_CSD_BLOCKSIZE	512
> +
> +/* Access types */
> +#define R		"R"
> +#define RW		"R/W"
> +#define RWaR		"R/W & R"
> +#define RWaRWE		"R/W & R/W/E"
> +#define RWaRWC_P	"R/W & R/W/C_P"
> +#define RWaRWC_PaRWE_P	"R/W, R/W/C_P & R/W/E_P"
> +#define WE		"W/E"
> +#define RWE		"R/W/E"
> +#define RWEaR		"R/W/E & R"
> +#define RWEaRWE_P	"R/W/E & R/W/E_P"
> +#define RWC_P		"R/W/C_P"
> +#define RWE_P		"R/W/E_P"
> +#define WE_P		"W/E_P"
> +
> +#define print_field_caption(reg_name, access_mode)			       \
> +	do {								       \
> +		printf(#reg_name"[%u]:\n", EXT_CSD_##reg_name);		       \
> +		printf("\tValue: %#02x\n", reg[index]);			       \
> +		printf("\tAccess: "access_mode"\n");			       \
> +	} while (false);
> +
> +#define print_field_caption_with_offset(reg_name, offset, access_mode)	       \
> +	do {								       \
> +		printf(#reg_name"[%u]:\n", EXT_CSD_##reg_name + offset);       \
> +		printf("\tValue: %#02x\n", reg[index]);			       \
> +		printf("\tAccess: "access_mode"\n");			       \
> +	} while (false);
> +
> +#define get_field_val(reg_name, offset, mask)				       \
> +	((reg[EXT_CSD_##reg_name] >> offset) & mask)
> +
> +#define get_field_val_with_index(index, offset, mask)			       \
> +	((reg[index] >> offset) & mask)
> +
> +static void print_access_type_key(void)
> +{
> +	printf("\nR:       Read only.\n");
> +	printf("W:       One time programmable and not readable.\n");
> +	printf("R/W:     One time programmable and readable.\n");
> +	printf("W/E:     Multiple writable with value kept after power failure, H/W reset assertion and any CMD0 reset and not readable.\n");
> +	printf("R/W/E:   Multiple writable with value kept after power failure, H/W reset assertion and any CMD0 reset and readable.\n");
> +	printf("R/W/C_P: Writable after value cleared by power failure and HW/rest assertion (the value not cleared by CMD0 reset) and readable.\n");
> +	printf("R/W/E_P: Multiple writable with value reset after power failure, H/W reset assertion and any CMD0 reset and readable.\n");
> +	printf("W/E_P:   Multiple writable with value reset after power failure, H/W reset assertion and any CMD0 reset and not readable.\n\n");

Wouldn't it make sense to explain the meaning of the individual flags
rather than all possible combinations? i.e.:

R: readable
W: One time writable
E: Multiple writable
C_P: Value cleared by power failure
E_P: Value cleared by power failure and CMD0

Also please add some linebreaks in the printfs. You can do multiline
printf like this:

	printf("permanently disable the use of permanent write protection\n"
		"for write protection groups within all the partitions in the\n"
		"user area from the point this bit is set forward. Setting this\n"
		"bit does not impact areas that are already protected\n"

Even better, shorten the descriptions. "permanently disable the use of
permanent write protection\n" should be enough in this case.

s/optimzed/optimized/
s/disbale/disable/

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
