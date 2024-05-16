Delivery-date: Thu, 16 May 2024 07:57:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7U7Q-00GqjJ-1m
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 07:57:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7U7Q-00045S-1R
	for lore@pengutronix.de; Thu, 16 May 2024 07:57:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CfxhzHuQ2eqXaFbXBF8uSDA5Mfz1E6Qpvu2EZPUcoAw=; b=MGFetMDwsgLCOhTpxJ9XkvwrCL
	Gn8njzhNKxhWughANCB1WaraZPTAu/EJMC7def1xEJXgReXvENGsLT+twy2dyaPaQ+3IegeSJ28Wc
	+NGNVVOwVoaXkMGM/AvN7nc7rLeafCgP5hnZyklndMR4i7tAowEc3fiS3bjW8x3RxY9dvHKHn9ZhY
	DEE89/tnZnZUEuSPEfzuSbJgW+8U8zfscNH3qcOPAhWXfY4570pbt8lD1lypzDJ52eSnmP2Pv7oEB
	Sf3TJk1pi+TJom20PrCPDGN8HPU7M0RiG58IFB5Y5nw/2LCmOCnOGMCLfsNIN7i9q2oYvoKGFNvKE
	yhwsg8Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7U6l-00000003oHA-2ptd;
	Thu, 16 May 2024 05:56:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7U6h-00000003oGW-2K5I
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 05:56:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U6e-0003wc-HR; Thu, 16 May 2024 07:56:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U6e-001exV-4x; Thu, 16 May 2024 07:56:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U6e-00BRCC-0H;
	Thu, 16 May 2024 07:56:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240515152410.3386237-1-a.fatoum@pengutronix.de>
References: <20240515152410.3386237-1-a.fatoum@pengutronix.de>
Message-Id: <171583900407.2726137.4567468168777283596.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 07:56:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_225647_720710_46924BFC 
X-CRM114-Status: UNSURE (   5.21  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: ramfs: allocate once instead of twice per ramfs
 chunk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 17:24:10 +0200, Ahmad Fatoum wrote:
> There's no reason to maintain two allocations per chunk, so just collect
> them both into the same calloc call.
> 
> No functional change.
> 
> 

Applied, thanks!

[1/1] fs: ramfs: allocate once instead of twice per ramfs chunk
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e502a0ca8d9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



