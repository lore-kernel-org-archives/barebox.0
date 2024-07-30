Delivery-date: Tue, 30 Jul 2024 11:33:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjEE-004Q5K-1T
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 11:33:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjED-0004ej-SF
	for lore@pengutronix.de; Tue, 30 Jul 2024 11:33:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tt1XjT/XWJX1nQZlFrWjwa2N+n2bkl1rVcm1hPTTx+Q=; b=rGWEDTlUxHnZ+OZhI+ZwDLCVDz
	dl37CZxYQe7+/gT3CRIeEM1OAS2PxKgFIavogwsNpzjJAkLtgyvviQQfSPSIplQ5tR9u+YkVNvFey
	N8HbK3z5dLovrnIa0l2gd1cNR0JmK6a67ap3JaWEzl9GpSlZl+9shUcX04JmvUn5ztIcmKVtVclF1
	o7nFHZ4EhQZZEr9XEtf1gF00R4EtXdaRjmvQ0L17Xr7Xpb3OmmNCoAblfj+oQuGg3fzA0r0JlVBd5
	iovVYpdScxGB0pFtEhWuBM3M9zCiJ3vtZI+0Uj/tv/mkjj1VH2PdL8tWyl5ACdTOsRuYCKHHrJyun
	+Ts3Exzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjDm-0000000EXQv-08K0;
	Tue, 30 Jul 2024 09:32:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjDj-0000000EXPj-21gK
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 09:32:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjDh-0004SH-U1; Tue, 30 Jul 2024 11:32:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjDh-003Fhy-Gg; Tue, 30 Jul 2024 11:32:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjDh-005nlm-1P;
	Tue, 30 Jul 2024 11:32:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240724092552.303668-1-a.fatoum@pengutronix.de>
References: <20240724092552.303668-1-a.fatoum@pengutronix.de>
Message-Id: <172233195743.1382929.4558227183539717754.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 11:32:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_023239_540565_BFB7CF09 
X-CRM114-Status: UNSURE (   8.49  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: fdt: fix overflows when parsing sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jul 2024 11:25:52 +0200, Ahmad Fatoum wrote:
> The function dt_struct_advance() is used to advance a pointer to the next
> offset within the structure block, while checking that the result is in
> bounds.
> 
> Unfortunately, the function used a signed size argument. This had the
> effect that a too-large size in the FDT wrapped around and caused the
> pointer to move backwards.
> 
> [...]

Applied, thanks!

[1/1] of: fdt: fix overflows when parsing sizes
      https://git.pengutronix.de/cgit/barebox/commit/?id=f936c591c269 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



