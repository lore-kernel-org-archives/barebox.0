Delivery-date: Fri, 20 Mar 2026 08:06:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TwN-002wbp-06
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 08:06:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TwM-0007Ef-Dj
	for lore@pengutronix.de; Fri, 20 Mar 2026 08:06:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=90hZ6bQOpip/xl62SeJhwQF5guD+FsHhRI8cmyM/qOg=; b=tzbpl6dHOJqMsNm6rOtS5zb5is
	07LEHkXDVT6W+sec21bEj/q5X1qv1sXD5J0981m4bPoSEy0TCPsNmbhJN1sl5UM2QKj7btsGsglGM
	1PKMBUU9iiMnzMzVsd5icOY/bpGvMEH32Ns6ZTqQxR864vkEQ2D73OAIUrjcbq1y6jwFumTdOEJuV
	3JqGCbXn9NdLj/PLRK4mzg5oqRXIWCx3J9n3zp17WbTnxRWnSXpJHPnrZvS52EqVSQdc4ZjGUPODp
	sfFIzQQMfwloqd3jcAa2XqSm1//qDkrFhAoCuM54Iw6gezc2BTuzgouElVB481KiOQKYw1snCaTsw
	mwNNi1jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tvy-0000000CDB7-1fze;
	Fri, 20 Mar 2026 07:06:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tvw-0000000CDAU-0AxH
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 07:06:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tvu-00078T-LR; Fri, 20 Mar 2026 08:06:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tvu-001CWw-1X;
	Fri, 20 Mar 2026 08:06:10 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tvu-00000004gYl-1l0N;
	Fri, 20 Mar 2026 08:06:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
References: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
Message-Id: <177399037041.1116784.10250520148331791858.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 08:06:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_000612_103097_50FE0D5D 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/6] mci: cadence: add v6 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Mar 2026 13:04:32 +0100, Steffen Trumtrar wrote:
> The Agilex5 apperently has a cadence sdhci host controller in version 6.
> Add support for this version, reworking the original driver
> significantly.
> 
> Tested on Agilex5, sadly HS200-support is currently broken and doesn't
> work yet with this driver.
> 
> [...]

Applied, thanks!

[1/6] mci: add data segment to mci_cmd
      https://git.pengutronix.de/cgit/barebox/commit/?id=1cda9f382f8b (link may not be stable)
[2/6] mci: sdhci: add sdhci_send_cmd
      https://git.pengutronix.de/cgit/barebox/commit/?id=cffad91e995c (link may not be stable)
[3/6] mci: sdhci: add set_uhs_signaling callback
      https://git.pengutronix.de/cgit/barebox/commit/?id=af136807053c (link may not be stable)
[4/6] mci: cadence: remove driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=8050da0970e4 (link may not be stable)
[5/6] mci: cadence: add support for version 6
      https://git.pengutronix.de/cgit/barebox/commit/?id=218fc1c38a0a (link may not be stable)
[6/6] ARM: socfpga-agilex5_defconfig: enable cadencen-sdhci
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd233ef8d7dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



