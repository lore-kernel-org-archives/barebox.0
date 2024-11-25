Delivery-date: Mon, 25 Nov 2024 11:27:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWJ4-000AB3-0a
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 11:27:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWJ4-0000Z2-5s
	for lore@pengutronix.de; Mon, 25 Nov 2024 11:27:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TPDRdTUIrKA+RgdD0JxWf6twe9WvN9P02HF75whTjt4=; b=lYm683pnKSZLtlQwe5BVTEpPqP
	+j1+J3M2sqScObBDNv8h7eD8v9fmDKwVO8UmEKuv4J5hPrg4HOPQ5wUtnuHtxZVQKrMonQFsJejjS
	n1bxM/4GkXi+O6EHefMlJLLOHOXs1LL1t9qp8rvIusMag1kM5qUvLhKGMgKo3M07yzse+1Q00+ZtG
	5FOM6eLD5Y7I+lts0rPZ3hP+cgT50Q9JfFU0fxa8JP0nw8cZep/jcJAvohKFhvP0s7czvB1edudZ/
	AV6mhkaTDs6P4mzOyo+t7psuB3zhfcWrEjOG7txLGsJx3eD2ps5HnFjilDHlkjkNHp7Ufey8FOVo9
	Yp4HTT6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWIi-00000007kuV-1uO6;
	Mon, 25 Nov 2024 10:26:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWIg-00000007ku5-1qnW
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 10:26:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWIf-0000Uw-6T; Mon, 25 Nov 2024 11:26:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWIe-0003zl-0l;
	Mon, 25 Nov 2024 11:26:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWIe-000onx-32;
	Mon, 25 Nov 2024 11:26:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
References: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
Message-Id: <173253039693.195282.11929180974734880088.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 11:26:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_022638_485210_D5ED328E 
X-CRM114-Status: UNSURE (   7.03  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] davinci_mdio: clk fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Nov 2024 09:29:26 +0100, Sascha Hauer wrote:
> This series fixes some deficiencies in the davinci_mdio driver
> 
> 

Applied, thanks!

[1/3] net: davinci_mdio: drop phy_mask detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=643dcaaa036d (link may not be stable)
[2/3] net: davinci_mdio: initialize priv->dev
      https://git.pengutronix.de/cgit/barebox/commit/?id=1de09fa72aa1 (link may not be stable)
[3/3] net: davinci_mdio: initialize divider from clk
      https://git.pengutronix.de/cgit/barebox/commit/?id=eba8de9eadb1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



