Delivery-date: Mon, 04 Nov 2024 13:27:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7wBS-004k2F-1c
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 13:27:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7wBT-00044B-4R
	for lore@pengutronix.de; Mon, 04 Nov 2024 13:27:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUeqzciYs/wi3DWA6L6GRSpnmOFxDKEHQHw3Bl3MjeY=; b=ZcwfaAXGAzuRBO0w6IYIdDxV6F
	Xvaj31r/0bv3Ts4rqvds/7Xv3v6HII+vMacxtF7MoLoT1U7w1xXhKq23kAVgATnYxahcdaKKf1DFl
	5CG8rA/Eq8ZrvcfAPUG95j9Xfg4DCn+17nfHhqPhmB4Qjuzgvt7UkqDqNTZknTU85lCgtr052Q/GP
	vpnFL+cmshCRfa6zA6YiIJgWArKTqZMvtsU1sDk0WlccDYX3DExHu/A9HfCACeTPirZdG1+MIUFhu
	PxefO/vEsKyvKkGHBibBV1bkk7mNeKt3/k64jTFQ9eo+QvoGPFZ+3kTIUEsDQK/mcNmT14G36FKmI
	zyxO1eRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7wAt-0000000DhOu-2u7d;
	Mon, 04 Nov 2024 12:27:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7wAq-0000000DhNe-46iI
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 12:27:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t7wAp-000415-JN; Mon, 04 Nov 2024 13:27:11 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7wAp-001yq4-0T;
	Mon, 04 Nov 2024 13:27:11 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7wAo-00DUCO-3D;
	Mon, 04 Nov 2024 13:27:11 +0100
Date: Mon, 4 Nov 2024 13:27:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
Cc: barebox@lists.infradead.org, oss-contrib@rtone.fr,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Message-ID: <Zyi9nvr3acntKtkc@pengutronix.de>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
 <20241031092721.763280-5-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241031092721.763280-5-sebastien.bourdelin@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_042713_038344_B9CDF8A5 
X-CRM114-Status: GOOD (  24.47  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] mci: bcm2835: set timeout value to 100ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Oct 31, 2024 at 10:27:21AM +0100, Sebastien Bourdelin wrote:
> From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> 
> As mentionned in the Raspberry Pi4 bootrom Changelog [1]:
> "Increase timeout of early SD/EMMC commands to 100ms".
> The BCM2711 SDHCI can take up to 100ms to complete a command.
> 
> Without this change, we had noticed that Barebox sometime stay stucked
> on a timeout error while trying to boot Linux from the eMMC.
> 
> [1] https://github.com/raspberrypi/rpi-eeprom/blob/master/firmware-2711/release-notes.md#2022-03-10---promote-the-2022-03-10-beta-release-to-lateststable
> 
> Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> ---
>  drivers/mci/mci-bcm2835.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index cbf99ee7ca..3b086ed22c 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -128,6 +128,10 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
>  		block_data |= data->blocksize;
>  	}
>  
> +	/* BCM2xxx SDHCI might take up to 100ms to complete a command */
> +	if (cmd != NULL)
> +		cmd->busy_timeout = 100;

Do we need this for all commands or just some specific ones?

cmd is always non NULL, no need to check.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


