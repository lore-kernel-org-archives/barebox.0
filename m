Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uue9R-0000ji-OW
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 07:40:26 +0000
Received: by mail-bk0-f54.google.com with SMTP id it16so451782bkc.27
 for <barebox@lists.infradead.org>; Thu, 04 Jul 2013 00:40:02 -0700 (PDT)
Message-ID: <51D526CC.2010206@gmail.com>
Date: Thu, 04 Jul 2013 09:39:56 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372789849-12194-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130704073624.GU516@pengutronix.de>
In-Reply-To: <20130704073624.GU516@pengutronix.de>
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
Subject: Re: [PATCH v2 06/10] spi: add Marvell MVEBU SoC SPI driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/04/13 09:36, Sascha Hauer wrote:
> On Tue, Jul 02, 2013 at 08:30:45PM +0200, Sebastian Hesselbarth wrote:
>> This adds support for the SPI controller found on Marvell MVEBU SoCs
>> (Dove, Kirkwood, Discovery Innovation, and Armada 370/XP). Current driver
>> is DT only. Compatible strings are provided for Orion (common denominator),
>> Armada 370/XP and Dove SoCs.
>>
>> +#if defined(ARCH_ARMADA_370) || defined(ARCH_ARMADA_XP)
>
> These have to be CONFIG_*. Also elsewhere in this patch.

Ok will update and resend.

>> +static int mvebu_spi_probe(struct device_d *dev)
>> +{
>> +	struct spi_master *master;
>> +	struct mvebu_spi *priv;
>> +	const struct of_device_id *match;
>> +	int ret = 0;
>> +
>> +	match = of_match_node(mvebu_spi_dt_ids, dev->device_node);
>> +	if (!match)
>> +		return -EINVAL;
>> +
>> +	priv = xzalloc(sizeof(*priv));
>> +	priv->base = dev_request_mem_region(dev, 0);
>> +	if (!priv->base) {
>> +		ret = -EINVAL;
>> +		goto err_free;
>> +	}
>> +	priv->set_baudrate = (void *)match->data;
>> +	priv->clk = clk_lookup("tclk");
>
> still clk_lookup?

That was in drivers/clocksource/{orion,mvebu}.c. This slipped through.
Will be fixed in v3.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
