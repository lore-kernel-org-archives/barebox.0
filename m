Delivery-date: Wed, 03 Apr 2024 13:26:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrylB-005zHx-0K
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:26:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrylA-0001as-Ii
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:26:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VwQK5FkkfX8dCfgNZA9tz8XdyfA4v70Rcaw4y5fxT8g=; b=XzdocjkcPgr3qp1dwhPnr56Z1I
	GyETV/hSN7Syd978mI6mQS8S6wegOghkl5SDhT8TCtNyu3G3eASIbHS1yhLktg4meeKCpogfXm7q8
	nWF3Rcg+1ZLXUPD+G8iBollUcfLIHwcPFf0o3gfZR6wof4cKu+12br8ZiKU7YH1m/nfp1GafzdcG4
	hk7WO5YIosZ7CsE5LLbpi78Hb8bpH2DD5+R9DXCimbHLO5XnKjRyW9+ZVktHfnub7Mh9e9lfW+2e0
	fNbw5kswkKfyMdD4chDGeWIqMoZ6VbGruFZziEyfaTJZjG+uIeqGbivjx9lNCCH1qOeiOkQ+LJKOk
	RQVV3Eog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrykW-0000000Fli0-2qW8;
	Wed, 03 Apr 2024 11:25:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrykT-0000000Flgs-3r6q
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:25:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrykP-00011o-Gx; Wed, 03 Apr 2024 13:25:41 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrykP-00AAKj-4K; Wed, 03 Apr 2024 13:25:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrykP-006E5g-06;
	Wed, 03 Apr 2024 13:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240325110214.3301152-1-s.hauer@pengutronix.de>
References: <20240325110214.3301152-1-s.hauer@pengutronix.de>
Message-Id: <171214354102.1484103.17117730176058171150.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 13:25:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_042545_998221_143932AB 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: do not crash on missing
 read_page()/write_page() ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Mar 2024 12:02:14 +0100, Sascha Hauer wrote:
> Normally phy_select_page() is only called from within the phy driver.
> The exception is the r8169 network driver. It calls phy_select_page()
> assuming that its internal phy is supported by the realtek phy driver
> which supports this operation. It can happen though that the internal
> phy is not yet supported by the realtek phy driver and thus support
> falls back to the generic phy driver. return gracefully in this case
> instead of crashing barebox.
> 
> [...]

Applied, thanks!

[1/1] net: phy: do not crash on missing read_page()/write_page() ops
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a9d15f9a0f4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



