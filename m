Delivery-date: Wed, 19 Feb 2025 13:21:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkj55-004J6h-1F
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 13:21:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkj54-00018z-7J
	for lore@pengutronix.de; Wed, 19 Feb 2025 13:21:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CYkm2tFtUTxUNHdzPciHA8h19WYsjGDRKLbCvoqctLY=; b=bMirudAD59mv0N7IJuaO4E9TBl
	3XAdmVfmoSyysfmNTExwR2wOUXKVRIg4bGuJxjyeDHKXlVGkSPdDNFjcTIPfq6rkoV1NdLw7Zzi1J
	5JAQ8RPN6iklLXQ98DkXa+CA7HegjvbNIX6GBj9aLT1JRjamuTH1fWr7so2li2zPmWZQ0oxxTb5eD
	eMcbTbyicrh14rpL30R536WNSzblcDyBoPHDbvkbmeDJa99jxxakBxFFyhzELz/wJYlAWUSP61kHf
	CIQuUy1TRaVJrWhUFQswBHtVFHkpjDJORZb/2lqP6i+AYAfGOJV90tzrcR3gUtSB84brch2frWBs1
	Zc4Hmq6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkj4e-0000000CdIU-3Ctw;
	Wed, 19 Feb 2025 12:21:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkj4c-0000000CdHd-0Aew
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 12:21:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tkj4a-00013r-R6; Wed, 19 Feb 2025 13:21:04 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkj4a-001lVV-25;
	Wed, 19 Feb 2025 13:21:04 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkj4a-006Fpj-1n;
	Wed, 19 Feb 2025 13:21:04 +0100
Date: Wed, 19 Feb 2025 13:21:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z7XMsHmKuUrCL3o2@pengutronix.de>
References: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
 <20250218-v2024-10-0-topic-socfpga-agilex5-v2-7-30b6f507810b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-7-30b6f507810b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_042106_079381_30405B16 
X-CRM114-Status: GOOD (  19.36  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 07/10] clk: socfpga: add agilex5 clock support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 18, 2025 at 10:21:32AM +0100, Steffen Trumtrar wrote:
> Add support for the Stratix10 and Agilex5 pll,gate and periph clocks.
> 
> Only tested on Agilex5.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/clk/socfpga/Makefile         |   4 +-
>  drivers/clk/socfpga/clk-agilex5.c    | 833 +++++++++++++++++++++++++++++++++++
>  drivers/clk/socfpga/clk-gate-s10.c   | 184 ++++++++
>  drivers/clk/socfpga/clk-periph-s10.c | 163 +++++++
>  drivers/clk/socfpga/clk-pll-s10.c    | 140 ++++++
>  drivers/clk/socfpga/clk.h            |   9 +
>  drivers/clk/socfpga/stratix10-clk.h  |  73 +++
>  7 files changed, 1405 insertions(+), 1 deletion(-)
> 
> +
> +static int socfpga_gate_get_parent(struct clk_hw *hwclk)
> +{
> +	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
> +	u32 mask, second_bypass;
> +	u8 parent = 0;
> +	const char *name = clk_hw_get_name(hwclk);
> +
> +printk("%s: %s\n", __func__, name);
> +
> +	if (socfpgaclk->bypass_reg) {
> +		mask = (0x1 << socfpgaclk->bypass_shift);
> +		parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
> +			  socfpgaclk->bypass_shift);
> +printk("%s: parent %d\n", __func__, parent);

Debugging leftovers.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


