Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBNim-00039k-AR
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 18:01:17 +0000
Date: Tue, 2 Apr 2019 20:01:13 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190402180113.GE18142@ravnborg.org>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-15-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401101822.7392-15-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 14/15] ARM: at91: microchip-ksz9477: provide board
 code fallback
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Mon, Apr 01, 2019 at 12:18:22PM +0200, Ahmad Fatoum wrote:
> The newly added device tree based first stage fails to load the second
> stage from MMC, which might be in relation to a preceding atmel_mci
> "command/data timeout" message.

I had similar troubles with MMC on at91sam9263.
After some digging the fix was simple:
See 5feabc1e6737742f1cf6a1c41921f68b4dbb5c10 ("arm: at91: fix clock to mci1 for at91sam9263")

Maybe you are hit by something as simple as this?

> +
> +static const struct devfs_partition sama5d3_xplained_nand0_partitions[] = {
> +	{
> +		.offset = 0x00000,
> +		.size = SZ_256K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "at91bootstrap_raw",
> +		.bbname = "at91bootstrap",
> +	},
Strange partition name now we use barebox as first stage.


> +++ b/arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig

Naming confuses me.
Do we stick to the name "first stage" or do we use "bootstrap"?
For me they are the same, but I get confused when we use both.


	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
