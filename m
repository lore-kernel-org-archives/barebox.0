Delivery-date: Tue, 16 Dec 2025 08:28:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVPUE-00C1wS-2z
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 08:28:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVPUE-0008Ep-AT
	for lore@pengutronix.de; Tue, 16 Dec 2025 08:28:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xr1oGrvnKTR+NUlq6Xwc8tvCYV/ScsDBk8lymF/8cdY=; b=Iy8hU/26x7d93uFrmz/GUrfH2O
	6k5WN4FT8tdm9Zea/nAXzXpKzXJvB+NuYcpJTMFRLBUIL8prpPLd9uKvsJqY7NosXzoDV7YRY8WRQ
	+cX0K8W+3dhJd0KruFJUfYVhELBLCi1tyR2tdc9fVG2W0Dy1ppvZow++ELKRlA9DGm6dguavqtuBt
	I1l4E4nxEqUMWNhcc6hfZL99OgbHsv3cT8b9PHqthugO4FlthpxYdngunGV1R73dX7+91+AyOFNny
	aNgGwCaqv6k2fVnG2HMBWFy85OHIuQZV1M0F7N0FRv6P9TwCx4f4F242bSw3uYPHqMXIANdT0tp8T
	lh7U8B9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVPTZ-00000004qeR-0vjU;
	Tue, 16 Dec 2025 07:28:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVPTU-00000004qdI-1WEC
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 07:28:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vVPTS-00089B-N7; Tue, 16 Dec 2025 08:27:58 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vVPTS-005uYM-1h;
	Tue, 16 Dec 2025 08:27:58 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vVPTS-00Alje-1F;
	Tue, 16 Dec 2025 08:27:58 +0100
Date: Tue, 16 Dec 2025 08:27:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aUEJ_hHoFja3bcfS@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
 <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-3-11eea1b2ef41@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-3-11eea1b2ef41@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_232800_400845_90016B6D 
X-CRM114-Status: GOOD (  27.83  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] mci: sdhci: add sdhci_send_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 15, 2025 at 03:21:25PM +0100, Steffen Trumtrar wrote:
> Linux uses a generic sdhci_send_cmd function for most sdhci host
> drivers. Port the v6.18-rc1 version and mix and match with the
> arasan_sdhci_send_cmd function already in barebox.
> 
> Also add sdhci_dumpregs for debugging errors.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mci/sdhci.c | 130 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/mci/sdhci.h |  21 +++++++++
>  include/mci.h       |   1 +
>  3 files changed, 152 insertions(+)
> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index 2d32a8b311..cfdfdbba8d 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -11,6 +11,8 @@
>  
>  #define MAX_TUNING_LOOP 40
>  
> +#define DRIVER_NAME "sdhci"
> +
>  enum sdhci_reset_reason {
>  	SDHCI_RESET_FOR_INIT,
>  	SDHCI_RESET_FOR_REQUEST_ERROR,
> @@ -25,6 +27,71 @@ static inline struct device *sdhci_dev(struct sdhci *host)
>  	return host->mci ? host->mci->hw_dev : NULL;
>  }
>  
> +#define SDHCI_DUMP(f, x...) pr_err("%s: " DRIVER_NAME ": " f, host->mci->devname, ## x)

A plain dev_err would be in line with other messages.

>  	if (host->quirks2 & SDHCI_QUIRK2_ISSUE_CMD_DAT_RESET_TOGETHER) {
> @@ -51,6 +118,69 @@ static void sdhci_reset_for_reason(struct sdhci *host, enum sdhci_reset_reason r
>  
>  #define sdhci_reset_for(h, r) sdhci_reset_for_reason((h), SDHCI_RESET_FOR_##r)
>  
> +bool sdhci_send_command(struct sdhci *host, struct mci_cmd *cmd)

The Linux function returns bool because the return value only signals if
the command was sent or not. The command error is propagated in struct
mmc_command. We don't have this asynchronous approach in barebox and we
also do not have an error code in struct mci_cmd. So either you have to
return the error code directly from this function or add an error code
to struct mci_cmd.

>  #define sdhci_read8_poll_timeout(sdhci, reg, val, cond, timeout_us) \
> diff --git a/include/mci.h b/include/mci.h
> index 3db33f9142..e54f6eba8d 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -489,6 +489,7 @@ struct mci_cmd {
>  	unsigned cmdarg;	/**< Command's arguments */
>  	unsigned busy_timeout;	/**< Busy timeout in ms */
>  	unsigned response[4];	/**< card's response */
> +	struct mci_data		*data;		/* data segment associated with cmd */

We can add the data to struct mci_cmd, but

- the core should set this up, not some individual driver
- when the data is in the command, the then redundant data argument to
  the various send_cmd functions should be removed
- this should be a separate patch

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


