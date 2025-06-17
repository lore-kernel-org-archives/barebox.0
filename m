Delivery-date: Tue, 17 Jun 2025 09:14:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQWe-008ByZ-02
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 09:14:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQWd-0003vl-F5
	for lore@pengutronix.de; Tue, 17 Jun 2025 09:14:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cshb1i0lIDjY3mKfrNcFNSsceuTUr+fGBoWHpjlWuBM=; b=h0255e+7pGQsTW9BCzDGkEL3f2
	nLH/+/+hHJIQKSq1E9ex4wlGM67BLSDeB1K42hvGqA8aU6vvR788fXgRO6TFxECAKVYDtUCFrKj1Q
	57SJqW/9+ulXsjWN0zaCnrZTs56lBAjA7WWDrxaNJg2E3v3Ku8NCfRm3hUlXK4QdI5rO9aQdIl/5w
	h6AnFmpl6mWRwgcvEb/nThM1cIBn+6t+nXBCzhUGlDTCw85IoWFf+HK6525l56CCq2LqQPxjDwSaY
	oYLPivfytMDukV17cP/SGz5uNxHrMP+A+gtfZqy9hY5XDwOoVxebdyE6loDymlUeDtVkZUKbTw2Dh
	CPLnrwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQW9-00000006R3s-3gKE;
	Tue, 17 Jun 2025 07:14:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQW6-00000006R3V-46eh
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 07:14:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQW5-00032p-G3; Tue, 17 Jun 2025 09:13:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQW5-003w4F-10;
	Tue, 17 Jun 2025 09:13:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQW5-00CQRv-0m;
	Tue, 17 Jun 2025 09:13:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250616071634.811000-1-a.fatoum@barebox.org>
References: <20250616071634.811000-1-a.fatoum@barebox.org>
Message-Id: <175014443723.2961329.745530903491301367.b4-ty@pengutronix.de>
Date: Tue, 17 Jun 2025 09:13:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_001359_063387_B2BC2817 
X-CRM114-Status: UNSURE (   7.62  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] resource: mark normal memory as supporting being
 uncacheable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Jun 2025 09:16:29 +0200, Ahmad Fatoum wrote:
> The attributes report what the underlying memory is capable of,
> so if we can configure it as WT/WC/WB, it's likely we can configure it
> as uncached as well. This doesn't hold true for all architectures, but
> it does for ARM, so add it to the MEMATTRS_NORMAL bitfield for now.
> 
> 

Applied, thanks!

[1/6] resource: mark normal memory as supporting being uncacheable
      https://git.pengutronix.de/cgit/barebox/commit/?id=1692b572c5b7 (link may not be stable)
[2/6] lib: display_options: constify pointer to static size_human_readable buf
      https://git.pengutronix.de/cgit/barebox/commit/?id=811923c4da17 (link may not be stable)
[3/6] commands: iomem: print human readable sizes by default
      https://git.pengutronix.de/cgit/barebox/commit/?id=d2edc81431bf (link may not be stable)
[4/6] commands: iomemport: support showing info for particular argument
      https://git.pengutronix.de/cgit/barebox/commit/?id=fbc90b1e85bc (link may not be stable)
[5/6] commands: iomem: add support for printing type/attributes
      https://git.pengutronix.de/cgit/barebox/commit/?id=f01559eed65f (link may not be stable)
[6/6] efi: payload: iomem: populate resource type/attributes
      https://git.pengutronix.de/cgit/barebox/commit/?id=acdbfd557934 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



