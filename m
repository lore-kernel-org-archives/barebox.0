Delivery-date: Mon, 29 Apr 2024 15:48:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1RNF-007eFE-0m
	for lore@lore.pengutronix.de;
	Mon, 29 Apr 2024 15:48:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1RNC-0000aJ-Tm
	for lore@pengutronix.de; Mon, 29 Apr 2024 15:48:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i8bP4HNtGCLVDy3Dc1VG+dsk+u1/vS7dVwJsR59UROs=; b=n2/D4lA795qJ8TmvM63HkuSoQW
	Hw/7CIuRJKvjVu2fp9yjukYXoeJBQxKef2BSxBwBUN4bpIYvIb1iezAGknDmA+2biEueMNe7AvZKR
	JIX5GEgJLYJ/SP7Y4y1o8dWwEQSIs/Gj9VL0XKmG9LgEqFCpmtHauzkDbhFTKH9228m2By5T6vV0k
	psrcsSdZ1ZadEZoHTka2V2Fbrc6UvSsmg0vcW3ZhOvkn2LB2l+A8whd0IH4+n9CQ0PYKa7i1p4AXU
	E0joY7EdwY/V1x8BZAuySJSMpNtyTpuMImKqxaabk2CyUJUKALmzsaiRgEZDZxvLD1HMZMzCekTGa
	Dp/xdBWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1RMe-00000002zlf-2uus;
	Mon, 29 Apr 2024 13:48:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1RMb-00000002zk0-01oc
	for barebox@lists.infradead.org;
	Mon, 29 Apr 2024 13:48:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1RMZ-0000Og-PF; Mon, 29 Apr 2024 15:48:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1RMZ-00EzTe-Cs; Mon, 29 Apr 2024 15:48:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1RMZ-00709Z-14;
	Mon, 29 Apr 2024 15:48:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240423175337.2304839-1-a.fatoum@pengutronix.de>
References: <20240423175337.2304839-1-a.fatoum@pengutronix.de>
Message-Id: <171439849133.1668772.1251083043105119853.b4-ty@pengutronix.de>
Date: Mon, 29 Apr 2024 15:48:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_064813_083770_B5BB4AFA 
X-CRM114-Status: UNSURE (   7.87  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: dsa: use dma_alloc in receive path for symmetry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 23 Apr 2024 19:53:37 +0200, Ahmad Fatoum wrote:
> As explained by the comment, we don't strictly need this at moment, but,
> say, if in future, we decide to save a memory copy in the ping reply
> code by reusing the receive buffer for transmission, it would work for
> all interfaces, except for DSA. Therefore, let's iron out this wrinkle.
> 
> 

Applied, thanks!

[1/1] net: dsa: use dma_alloc in receive path for symmetry
      https://git.pengutronix.de/cgit/barebox/commit/?id=58998f56ee4c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



