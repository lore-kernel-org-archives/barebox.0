Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8v5E-0007vH-UG
 for barebox@lists.infradead.org; Tue, 15 Dec 2015 19:16:26 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 15 Dec 2015 19:15:39 +0000
Message-ID: <1450206947.26955.174.camel@rtred1test09.kymeta.local>
References: <1450200490-4488-1-git-send-email-fvallee@eukrea.fr>
In-Reply-To: <1450200490-4488-1-git-send-email-fvallee@eukrea.fr>
Content-Language: en-US
Content-ID: <697F433D708F4E4A8165063FC227A143@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2] GPIO: add Microchip MCP23017 / MCP23008 GPIO driver
To: Florian Vallee <fvallee@eukrea.fr>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2015-12-15 at 18:28 +0100, Florian Vallee wrote:
> +
> +/* A given spi_device can represent up to eight mcp23sxx chips
> + * sharing the same chipselect but using different addresses
> + * (e.g. chips #0 and #3 might be populated, but not #1 or $2).
> + * Driver data holds all the per-chip data.
> + */
> +struct mcp23s08_driver_data {
> +	unsigned		ngpio;
> +	struct mcp23s08		*mcp[8];
> +	struct mcp23s08		chip[];
> +};

It doesn't look like anything uses this struct.

> +static int
> +mcp23008_read_regs(struct mcp23s08 *mcp, unsigned reg, u16 *vals, unsigned n)
> +{
> +	while (n--) {
> +		int ret = mcp23008_read(mcp, reg++);

This could use mcp->ops->read(mcp, reg++) instead of mcp23008_read().
Which would make it exactly the same as this function:

> +static int
> +mcp23017_read_regs(struct mcp23s08 *mcp, unsigned reg, u16 *vals, unsigned n)
> +{
> +	while (n--) {
> +		int ret = mcp23017_read(mcp, reg++);
> +		if (ret < 0)
> +			return ret;
> +		*vals++ = ret;
> +	}
> +
> +	return 0;
> +}

So just one read_regs fuction is needed.  Which also would allow
read_regs to be removed from the ops struct since it's the same for both
chips.

> +
> +static const struct mcp23s08_ops mcp23008_ops = {
> +	.read		= mcp23008_read,
> +	.write		= mcp23008_write,
> +	.read_regs	= mcp23008_read_regs,
> +};
> +
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
