Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYJwf-0000JT-Al
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 16:02:10 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323202318-17697-1-git-send-email-robert.jarzmik@free.fr>
 <1323202318-17697-3-git-send-email-robert.jarzmik@free.fr>
 <20111207084944.GL27267@pengutronix.de>
Date: Wed, 07 Dec 2011 17:01:58 +0100
In-Reply-To: <20111207084944.GL27267@pengutronix.de> (Sascha Hauer's message
 of "Wed, 7 Dec 2011 09:49:44 +0100")
Message-ID: <87y5uocqvd.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] drivers/mci: add PXA host controller
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> +	if (mmc_readl(MMC_STAT) & STAT_CLK_EN) {
>> +		writel(STOP_CLOCK, host->base + MMC_STRPCL);
>> +
>> +		do {
>> +			v = mmc_readl(MMC_STAT);
>> +			if (!(v & STAT_CLK_EN))
>> +				break;
>> +			udelay(1);
>> +		} while (timeout--);
>
> please use this for timeout loops:
>
> 	uint64_t start = get_time_ns(void);
>
> 	while (!is_timeout(start, 10 * MSECOND)
> 		poll_something();
Ok, should I do this also to the other 2 timeout loops (pxamci_read_data and
pxamci_write_data), or can I use the same pattern which would give :

static void pxamci_stop_clock(struct pxamci_host *host)
{
	static const int timeout = 100000;
	int i;

        stat = mmc_readl(MMC_STAT);
        if (stat & STAT_CLK_EN)
		writel(STOP_CLOCK, host->base + MMC_STRPCL);
	for (i = 0; i < timeout && stat & STAT_CLK_EN; i++)
		stat = mmc_readl(MMC_STAT);

	if (stat & STAT_CLK_EN)
		mci_err("unable to stop clock\n");
}

I have no strong opinion here, I'll follow your preference, just tell me.

> Otherwise the driver looks good to me.
Great.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
