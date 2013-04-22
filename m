Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUJwz-0005d6-PH
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 16:50:46 +0000
Date: Mon, 22 Apr 2013 18:50:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130422165043.GK32299@pengutronix.de>
References: <1366621553-8947-1-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366621553-8947-1-git-send-email-linux@rempel-privat.de>
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
Subject: Re: [PATCH 2/3][WiP] add atheros MIPS based ar2313 WiSoC chips
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <bug-track@fisher-privat.net>

Only some comments for now, I think you are still working on this
anyway, right?

On Mon, Apr 22, 2013 at 11:05:53AM +0200, Oleksij Rempel wrote:
 +
> +static void
> +ar231x_print_mac(unsigned char *mac)
> +{
> +	int i;
> +	for (i = 0; i < 5; i++) {
> +		printf("%02x:", mac[i]);
> +	}
> +	printf("%02x\n", mac[5]);
> +}

We have a ethaddr_to_string function which could be of use here.

> +ar231x_find_config(u8 *flash_limit)
> +{
> +	struct ar231x_board_config *config;
> +	u8 *bcfg, bsize;
> +	u8 brocken;
> +
> +	bcfg = ar231x_find_board_config(flash_limit);
> +
> +	bsize = sizeof(struct ar231x_board_config);
> +	config = xzalloc(bsize);
> +	ar231x_board.config = config;
> +
> +	if (bcfg) {
> +		u16 cksum;
> +		/* Copy the board and radio data to RAM, because accessing the mapped
> +		 * memory of the flash directly after booting is not safe */
> +		memcpy(config, bcfg, bsize);
> +		cksum= 0xca + ar231x_cksum16((unsigned char *)config + HDR_SIZE,
> +				sizeof(struct ar231x_board_config) - HDR_SIZE);
> +		if (cksum != config->cksum) {
> +			pr_err("config: checksum is invalid: %04x != %04x\n",
> +					cksum, config->cksum);
> +			brocken = 1;

This variable is unused.

 +
> +/*
> + * Platform device information for the Ethernet MAC
> + */
> +struct ar231x_eth_platform_data {
> +	u32 base_eth;
> +	u32 base_reset;
> +	u32 reset_mac;
> +	u32 reset_phy;
> +	u32 base_phy;
> +
> +	u8 *mac;
> +};

This should be part of the patch adding the ethernet driver.

> +
> +.globl lowlevel_init
> +lowlevel_init:
> +	li	t5, MEM_CFG0_X	# try x16
> +	li	t6, 0x23000	# use 8-word burst
> +
> +        /* Configure for a x16 SDRAM with 8-word burst */
> +        li      t5, MEM_CFG0_X           # try x16
> +        li      t6, 0x23000              # use 8-word burst

This could use a coding style cleanup, remove trailing whitespaces, use
tabs consistently, remove C++ comments.



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
