Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z80iq-0004D2-EG
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 06:33:17 +0000
Date: Thu, 25 Jun 2015 08:32:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150625063251.GA3795@pengutronix.de>
References: <1435150649-10266-1-git-send-email-alllecs@yandex.ru>
 <1435150649-10266-3-git-send-email-alllecs@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435150649-10266-3-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [RFC V2 2/3] ddr_spd: add routune for printing SPD contents in
 human readable format
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, Jun 24, 2015 at 03:57:28PM +0300, Alexander Smirnov wrote:
> Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
> ---
> +void prin(uint8_t *record)

Please use a more meaningful name.

> +{
> +	int highestCAS = 0;
> +	int cas[256];
> +	int i, i_i, k, x, y;
> +	int ddrclk, tbits, pcclk;
> +	int trcd, trp, tras;
> +	int ctime;
> +	uint8_t parity;
> +	char *ref;
> +
> +	ctime = ddr2_sdram_ctime(record[9]);
> +	ddrclk = 2 * (1000 / ctime) * 100;
> +	tbits = (record[7] << 8) + record[6];
> +	if ((record[11] & 0x03) == 1) {
> +		tbits = tbits - 8;
> +	}
> +	pcclk = ddrclk * tbits / 8;
> +	pcclk = pcclk - (pcclk % 100);
> +	i_i = (record[3] & 0x0f) + (record[4] & 0x0f) - 17;
> +	k = ((record[5] & 0x7) + 1) * record[17];
> +	trcd = ((record[29] >> 2) + ((record[29] & 3) * 0.25)) / ctime * 100;
> +	trp = ((record[27] >> 2) + ((record[27] & 3) * 0.25)) / ctime * 100;
> +	tras = record[30] * 100 / ctime ;
> +	x = (int)(ctime / 100);
> +	y = (ctime - (int)((ctime / 100) * 100)) / 10;
> +
> +	for (i_i = 2; i_i < 7; i_i++) {
> +		if (record[18] & (1 << i_i)) {
> +			highestCAS = i_i;
> +		cas[highestCAS]++;
> +		}

indention broken here.

> +	}
> +
> +	printf("---=== SPD EEPROM Information ===---\n");
> +	printf("EEPROM Checksum of bytes 0-62\t\t\t OK (0x%0X)\n", record[63]);
> +	printf("# of bytes written to SDRAM EEPROM\t\t %d\n", record[0]);
> +	printf("Total number of bytes in EEPROM\t\t\t %d\n", 1 << record[1]);
> +
> +	if (record[2] < 11) {
> +		printf("Fundamental Memory type\t\t\t\t %s\n", type_list[record[2]]);
> +	} else {
> +		printf("Warning: unknown memory type (%02x)\n", record[2]);
> +	}

Please drop unnecessary braces here and elsewhere.

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
