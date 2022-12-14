Delivery-date: Wed, 14 Dec 2022 11:56:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PRa-003YE4-1t
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 11:56:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PRY-00054M-Tm
	for lore@pengutronix.de; Wed, 14 Dec 2022 11:56:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R/g4eGXgrfwM8UYGvTDwtH4euTPoC9Jc+ZX4p6MRtIk=; b=PmvsquqAbcRYFmyo5yACZdmMvx
	eNcwo/Jtbrh59cpQT9m9GJPwjhCLT3nERatMdy6315Kpgq3l+DzPFHBT0AOS0Ik7uhOXQh9KokYKU
	zMFiaqc1EID475mgpxx/Mlpbp/SVoasYyFna93+8CAv/pGvajxh9mdOzIeikSXeeDG3dZO3S/A1vP
	EOAxUx363rMgWu7TFNz4ULj8vW7l/qVFAWcKQUed4hV+TdTOdUK5HF4LQSmGwwGfN+t/F7mcKYTrC
	5eLWvjoY83DKUFmxgQT4C31W45O/VZnaUtNehIJ4++vODORnpCiJZvFXMopZ5/DWQVsXz3s1RRC1r
	TZHwyElA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PQP-00FkVE-5M; Wed, 14 Dec 2022 10:55:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PQJ-00FkTr-60
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:55:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p5PQH-0004nK-Pr; Wed, 14 Dec 2022 11:55:37 +0100
Message-ID: <c9ec86b6-dc82-ebc3-643e-18dd6fa9b997@pengutronix.de>
Date: Wed, 14 Dec 2022 11:55:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221213141204.1860400-1-a.fatoum@pengutronix.de>
 <20221214100329.GR29728@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221214100329.GR29728@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025539_251802_F47CC391 
X-CRM114-Status: GOOD (  23.31  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: only write blocks when card out of programming mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 14.12.22 11:03, Sascha Hauer wrote:
> On Tue, Dec 13, 2022 at 03:12:04PM +0100, Ahmad Fatoum wrote:
>>  /**
>>   * @param p Command definition to setup
>>   * @param cmd Valid SD/MMC command (refer MMC_CMD_* / SD_CMD_*)
>> @@ -119,6 +141,69 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
>>  
>>  static void *sector_buf;
>>  
>> +static int mci_send_status(struct mci *mci, unsigned int *status)
>> +{
>> +	struct mci_host *host = mci->host;
>> +	struct mci_cmd cmd;
>> +	int ret;
>> +
>> +	cmd.cmdidx = MMC_CMD_SEND_STATUS;
>> +	cmd.resp_type = MMC_RSP_R1;
>> +	if (!mmc_host_is_spi(host))
>> +		cmd.cmdarg = mci->rca << 16;
> 
> cmd.cmdarg will be uninitialized for SPI MMC hosts.

Ouch. It seems CMD13 is valid for SPI hosts too, but they report
different bits. I have skipped this for SPI hosts in v2.

>> +	if (retries >=  timeout_ms) {
>> +		dev_err(&mci->dev, "Timeout waiting card ready\n");
>> +		return -ETIMEDOUT;
>> +	}
> 
> You could move this into the timeout test in the loop above.

Alright.

>> +
>> +	/*
>> +	 * With small UART FIFOs and slow CPUs, printing in the loop above
>> +	 * may take enough time to render the polling loop above unnecessary
>> +	 * falsifying the debugging info. Thus we report the retries here.
>> +	 */
> 
> People reading this code are likely aware of that, I think you can remove
> this comment.
> 
>> +	dev_info(&mci->dev, "Ready polling took %ums\n", retries);
> 
> dev_dbg()?

Both done in v2.

>> +	/*
>> +	 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
>> +	 * Due to legacy reasons, a Device may still treat CMD24/25 during
>> +	 * prg-state (while busy is active) as a legal or illegal command.
>> +	 * A host should not send CMD24/25 while the Device is in the prg
>> +	 * state and busy is active.
>> +	 */
>> +	ret = mci_poll_until_ready(mci, 10 /* ms */);
> 
> Is 10ms enough? U-Boot has 1s here.

My line of thinking was that we got away without this so far, so if 10ms
isn't enough, there's probably something wrong elsewhere. That's little
consolation to users that would get breakage if they indeed need to wait
longer, so I bumped it to 1000ms.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



