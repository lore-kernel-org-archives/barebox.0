Delivery-date: Wed, 14 Dec 2022 11:04:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5OdH-003Wfg-5H
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 11:04:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5OdG-0006TX-6w
	for lore@pengutronix.de; Wed, 14 Dec 2022 11:04:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Djwf/7D2B3YpmB851M/UOKGgGOj3gR0M8ogzL4zRiyg=; b=HK7J7b0Koyhpp4CJ5jFjhwSpIU
	UeYxUaG9q8bsqaEJGWv9er7g3CXNON2kuKQVAUIYyjn3VxeirFsR6Iqcg38DQKe9NgkxQN6t9WFK6
	1/OG9wvx7/oJpawaL3PrOP2ZC0AxW4x7788uRjUPNBQwRa8s2Ec0sLQQL2Hk9bNZspC7j56ceEHQO
	+o4G2evl7hoswjq6jr+iMNasJ/oYS0n2FUFUsx+H+HUXLsAHO/fxfQEpLvQE7BnFEn1kSO5kW2D7a
	zReXN8rnltwFTq68l6FQrihpcV/eJ9X0tgF2J5Z4CJv9jcqoEpH/Dnab/DBF7qFXJHd+hWWuatMFk
	7xXY3oFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Oby-00FOXd-MM; Wed, 14 Dec 2022 10:03:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Obs-00FOUm-Js
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:03:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Obp-0006OB-EW; Wed, 14 Dec 2022 11:03:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Obp-0002TU-7Q; Wed, 14 Dec 2022 11:03:29 +0100
Date: Wed, 14 Dec 2022 11:03:29 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221214100329.GR29728@pengutronix.de>
References: <20221213141204.1860400-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221213141204.1860400-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_020332_689698_E01F4EFC 
X-CRM114-Status: GOOD (  24.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: only write blocks when card out of programming mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Dec 13, 2022 at 03:12:04PM +0100, Ahmad Fatoum wrote:
>  /**
>   * @param p Command definition to setup
>   * @param cmd Valid SD/MMC command (refer MMC_CMD_* / SD_CMD_*)
> @@ -119,6 +141,69 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
>  
>  static void *sector_buf;
>  
> +static int mci_send_status(struct mci *mci, unsigned int *status)
> +{
> +	struct mci_host *host = mci->host;
> +	struct mci_cmd cmd;
> +	int ret;
> +
> +	cmd.cmdidx = MMC_CMD_SEND_STATUS;
> +	cmd.resp_type = MMC_RSP_R1;
> +	if (!mmc_host_is_spi(host))
> +		cmd.cmdarg = mci->rca << 16;

cmd.cmdarg will be uninitialized for SPI MMC hosts.

> +
> +	ret = mci_send_cmd_retry(mci, &cmd, NULL, 4);
> +	if (!ret)
> +		*status = cmd.response[0];
> +
> +	return ret;
> +}
> +
> +static int mci_poll_until_ready(struct mci *mci, int timeout_ms)
> +{
> +	unsigned int status;
> +	int err, retries = 0;
> +
> +	while (1) {
> +		err = mci_send_status(mci, &status);
> +		if (err)
> +			return err;
> +
> +		/*
> +		 * Some cards mishandle the status bits, so make sure to
> +		 * check both the busy indication and the card state.
> +		 */
> +		if ((status & R1_READY_FOR_DATA) &&
> +		    R1_CURRENT_STATE(status) != R1_STATE_PRG)
> +			break;
> +
> +		if (status & R1_STATUS_MASK) {
> +			dev_err(&mci->dev, "Status Error: 0x%08x\n", status);
> +			return -EIO;
> +		}
> +
> +		if (retries++ == timeout_ms)
> +			break;
> +
> +		udelay(1000);
> +	}
> +
> +	if (retries >=  timeout_ms) {
> +		dev_err(&mci->dev, "Timeout waiting card ready\n");
> +		return -ETIMEDOUT;
> +	}

You could move this into the timeout test in the loop above.

> +
> +	/*
> +	 * With small UART FIFOs and slow CPUs, printing in the loop above
> +	 * may take enough time to render the polling loop above unnecessary
> +	 * falsifying the debugging info. Thus we report the retries here.
> +	 */

People reading this code are likely aware of that, I think you can remove
this comment.

> +	dev_info(&mci->dev, "Ready polling took %ums\n", retries);

dev_dbg()?

> +
> +	return 0;
> +}
> +
> +
>  /**
>   * Write one or several blocks of data to the card
>   * @param mci_dev MCI instance
> @@ -136,6 +221,17 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
>  	unsigned mmccmd;
>  	int ret;
>  
> +	/*
> +	 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
> +	 * Due to legacy reasons, a Device may still treat CMD24/25 during
> +	 * prg-state (while busy is active) as a legal or illegal command.
> +	 * A host should not send CMD24/25 while the Device is in the prg
> +	 * state and busy is active.
> +	 */
> +	ret = mci_poll_until_ready(mci, 10 /* ms */);

Is 10ms enough? U-Boot has 1s here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


