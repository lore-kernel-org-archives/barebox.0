Delivery-date: Thu, 14 Sep 2023 10:07:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghNo-00EmgS-02
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 10:07:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghNl-0002qD-Py
	for lore@pengutronix.de; Thu, 14 Sep 2023 10:07:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Z6oaBq2RAXuautR7H1/i5CrM8uhTjx+ajwN083XnNs=; b=sh+YbOLykH0A39pmCmFwNjLrx0
	L+zDLY5FKbKx6rV+pO6SixBsEx7obnq8IP9GwE0IvW6/dbWxFFdh2g+hOKDWXY/QfuFPCqzj0B1eS
	1Tt98wxNIFMBokCG49b1PgFDgWR0YLV28obtfIj3FMqMPETV/pIU785F0UKxH9Xm+E2wKeHL2q6JT
	OM7auk9hE0P1H1F/e8bMbfwquLdCKsv8zjdLK376GzNd3Bki4o8iLuPJJo204P2SjQS/nouKYW1Wl
	4AExyub2b3ocmNFIRpeMDTNNilHyr9MHqTnBIAWp6WcEw4ItAhpbPBwmcT/fSo4bfK3CKJEVPy5Ov
	y3xmvHhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qghMj-007eha-2k;
	Thu, 14 Sep 2023 08:06:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qghMg-007egh-0q
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 08:06:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghMe-0002EH-U7; Thu, 14 Sep 2023 10:06:16 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qghMe-006Fhn-Hk; Thu, 14 Sep 2023 10:06:16 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghMe-006g8g-FT; Thu, 14 Sep 2023 10:06:16 +0200
Date: Thu, 14 Sep 2023 10:06:16 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914080616.GN637806@pengutronix.de>
References: <20230913114230.1853679-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913114230.1853679-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_010618_296166_2A6B77D1 
X-CRM114-Status: GOOD (  22.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] treewide: remove remaining _d suffixes from struct
 driver_d/device_d
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 01:42:30PM +0200, Ahmad Fatoum wrote:
> Some drivers made their way upstream during the switch to removal
> of the _d suffix. There's a define to support the old naming still,
> so there was no breakage, but let's use the modern naming everywhere.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/firmware/qemu_fw_cfg.c | 2 +-
>  drivers/net/designware_imx8.c  | 2 +-
>  test/self/regulator.c          | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks.

Sascha

> 
> diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
> index 4c7d90815be2..1ba81d1b5002 100644
> --- a/drivers/firmware/qemu_fw_cfg.c
> +++ b/drivers/firmware/qemu_fw_cfg.c
> @@ -289,7 +289,7 @@ static const struct of_device_id qemu_fw_cfg_of_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, qemu_fw_cfg_of_match);
>  
> -static struct driver_d qemu_fw_cfg_drv = {
> +static struct driver qemu_fw_cfg_drv = {
>  	.name = "fw_cfg",
>  	.probe  = fw_cfg_probe,
>  	.of_compatible = of_match_ptr(qemu_fw_cfg_of_match),
> diff --git a/drivers/net/designware_imx8.c b/drivers/net/designware_imx8.c
> index d81dd499ab29..3dbe5824e6ce 100644
> --- a/drivers/net/designware_imx8.c
> +++ b/drivers/net/designware_imx8.c
> @@ -186,7 +186,7 @@ static __maybe_unused struct of_device_id eqos_imx8_ids[] = {
>  };
>  MODULE_DEVICE_TABLE(of, eqos_imx8_ids);
>  
> -static struct driver_d eqos_imx8_driver = {
> +static struct driver eqos_imx8_driver = {
>  	.name = "eqos-imx8",
>  	.probe = eqos_probe_imx8,
>  	.remove = eqos_remove_imx8,
> diff --git a/test/self/regulator.c b/test/self/regulator.c
> index e89164700ef1..08073cfc9158 100644
> --- a/test/self/regulator.c
> +++ b/test/self/regulator.c
> @@ -161,7 +161,7 @@ static struct driver regulator_test_driver = {
>  	.of_match_table = test_regulator_of_match,
>  };
>  
> -static struct device_d *dev;
> +static struct device *dev;
>  
>  static void test_regulator(void)
>  {
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


