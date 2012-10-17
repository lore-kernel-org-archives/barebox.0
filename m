Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOc59-00010K-1N
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 22:27:19 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so4613118wgb.18
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 15:27:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Carlo Caione <carlo.caione@gmail.com>
In-Reply-To: <20121016212416.GC27665@pengutronix.de>
Date: Thu, 18 Oct 2012 00:27:14 +0200
Message-Id: <7273C8F9-F3BD-4606-8C35-B370AA04C98C@gmail.com>
References: <1350410685-46202-1-git-send-email-carlo.caione@gmail.com>
 <1350410685-46202-5-git-send-email-carlo.caione@gmail.com>
 <20121016212416.GC27665@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] BCM2835: add support (arch)
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


On Oct 16, 2012, at 11:24 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Oct 16, 2012 at 08:04:44PM +0200, Carlo Caione wrote:
>> +
>> +static struct clk ref_3_clk = {
>> +	.rate = 3 * 1000 * 1000,
>> +};
>> +
>> +static struct clk ref_1_clk = {
>> +	.rate = 1 * 1000 * 1000,
>> +};
> 
> Add a 'select COMMON_CLK' to your Kconfig and do a:
> 
> 	clk_dummy = clk_fixed("dummy", 0);
> 	clk_ref_3 = clk_fixed("ref3", 3 * 1000 * 1000);
> 	clk_ref_1 = clk_fixed("ref1", 1 * 1000 * 1000);
> 
> Then you can drop your clk code and get a clk_dump command
> which you can use to see what clocks you have.

RFC

ok I ask here before submitting the whole set because I'm not sure if this is a convenient solution.
I'm not sure if you are suggesting to have two different clock definition one for clk_fixed and the other one for clkdev,
so I was thinking something like:

enum brcm_clks {
	dummy, clk_ref_3, clk_ref_1, clks_max
};

static struct clk *clks[clks_max];

int brmc_clk_create(struct clk *clk, const char *con_id, const char *dev_id)
{
	struct clk_lookup *clkdev;

	clkdev = clkdev_alloc(clk, con_id, dev_id);
	if (!clkdev)
		return -ENOMEM;
	clkdev_add(clkdev);
	return 0;
}

static int bcm2835_clk_init(void)
{
	int ret; 

	clks[dummy] = clk_fixed("dummy", 0);
	ret = brmc_clk_create(clks[dummy], "apb_pclk", NULL);
	if (ret)
		goto clk_err;

	clks[clk_ref_3] = clk_fixed("ref3", 3 * 1000 * 1000);
	ret = brmc_clk_create(clks[clk_ref_3], NULL, "uart0-pl0110");
	if (ret)
		goto clk_err;

	clks[clk_ref_1] = clk_fixed("ref1", 1 * 1000 * 1000);
	ret = brmc_clk_create(clks[clk_ref_1], NULL, "bcm2835-cs");
	if (ret)
		goto clk_err;

	return 0;

clk_err:
	return ret;

}
postcore_initcall(bcm2835_clk_init);

Any comment on this solution?

--
Carlo Caione
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
