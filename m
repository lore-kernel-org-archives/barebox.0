Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YOAOs-0002a0-JY
 for barebox@lists.infradead.org; Wed, 18 Feb 2015 19:35:11 +0000
Received: by mail-wi0-f173.google.com with SMTP id bs8so43415991wib.0
 for <barebox@lists.infradead.org>; Wed, 18 Feb 2015 11:34:47 -0800 (PST)
Message-ID: <54E4E955.1040908@gmail.com>
Date: Wed, 18 Feb 2015 20:34:45 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1373059339-20513-3-git-send-email-sebastian.hesselbarth@gmail.com>
 <20150217234351.GD21880@pengutronix.de>
In-Reply-To: <20150217234351.GD21880@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 2/2] mci: add Marvell Dove SDHCI driver
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 18.02.2015 00:43, Michael Grzeschik wrote:
> On Fri, Jul 05, 2013 at 11:22:19PM +0200, Sebastian Hesselbarth wrote:

Nice! It just bumped up the RFC from 1.5yrs back to top in my barebox
mail folder ;)

>> This adds a driver for the SDHCI controller found on Marvell Dove SoCs.
>> Despite a missing pinctrl driver, corresponding MPP config has to be
>> set on a per board basis.
[...]
>> diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
>> new file mode 100644
>> index 0000000..91ef8b0
>> --- /dev/null
>> +++ b/drivers/mci/dove-sdhci.c
[...]
>> +static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>> +				struct mci_data *data)
>> +{
>> +	u16 val;
>> +	u64 start;
>> +	int ret;
>> +	struct dove_sdhci *host = priv_from_mci_host(mci);
>> +
>> +	dove_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
>> +
>> +	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
>> +	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
>> +		val = SDHCI_CMD_INHIBIT_CMD;
>> +	else
>> +		val = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
>> +
>> +	/* Wait for bus idle */
>> +	start = get_time_ns();
>> +	while (1) {
>> +		if (!(dove_sdhci_readw(host, SDHCI_PRESENT_STATE0) & val))
>> +			break;
>> +		if (is_timeout(start, 10 * MSECOND)) {
>
> I had to set something higher than 10 milliseconds to make this driver
> work with solidrun cubox. Otherwise it was always running into the
> timeout.

Can you tell to what value you had to increase the timeout?

I have no problem increasing the timeout, we shouldn't run into
any of them anyway at this point.

Sebastian

>> +			dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for idle\n");
>> +			return -ETIMEDOUT;
>> +		}
>> +	}
[...]

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
