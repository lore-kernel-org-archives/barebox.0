Delivery-date: Thu, 13 Jun 2024 09:30:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHev7-005FVf-0H
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 09:30:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHev6-0006Zy-9v
	for lore@pengutronix.de; Thu, 13 Jun 2024 09:30:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1nAGvOfz2zJsvj7RAKWByC/NxzlYE4NHeQrWqZyYd4=; b=FzYAAIRZEqve6lxW7CKqL3DT+0
	Ni8pVjuoq0L4/LJ9Q6wNu193UNJg7WviYc5fc88/kZrTT3+E6CL5IDRLxMj+af7bnn4yUxEgXWdnZ
	XCQtxpA4C5rqEaYyClKhVlRa3Sbh2CEJnNRQIivjA6bwNDc66ButdKLDykiNqlnT52ghD/e2hNs5q
	bPyGeWjvTvLABZJxMotyCCmJZdgfZqpONMicgsUszk+dnRiPyBcqCxHT9JUy5qKzaaEQSVcjp0dmH
	tQNSEgrSq0HWNRTQj45cEJCdSG+6bP0Um+o3GKOIZtM8IWF9xbxG8N//DnExMd3/X0LhbsKUnzKSJ
	tXeeFyQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeub-0000000FTwR-1hiW;
	Thu, 13 Jun 2024 07:30:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeuX-0000000FTw1-0vek
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 07:30:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeuV-0006UF-JX; Thu, 13 Jun 2024 09:30:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeuV-001yQJ-7A; Thu, 13 Jun 2024 09:30:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeuV-00BUpu-0W;
	Thu, 13 Jun 2024 09:30:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
References: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
Message-Id: <171826381516.2740115.9563517836286908121.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 09:30:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_003017_309900_CDACEDD7 
X-CRM114-Status: UNSURE (   6.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/4] efi: hide EFI related symbols when !EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Jun 2024 08:57:15 +0200, Ahmad Fatoum wrote:
> In order not to clutter configs, we should hide symbols that are EFI
> related when CONFIG_EFI is disabled, especially as we are going to add
> more options with the loader support.
> 
> 

Applied, thanks!

[1/4] efi: hide EFI related symbols when !EFI
      https://git.pengutronix.de/cgit/barebox/commit/?id=7ac8732a6cec (link may not be stable)
[2/4] lib: wchar: guard against NULL in strdup_wchar
      https://git.pengutronix.de/cgit/barebox/commit/?id=47d910fe2706 (link may not be stable)
[3/4] efi: payload: gracefully handle NULL parent image device path
      https://git.pengutronix.de/cgit/barebox/commit/?id=5cf1c8302cce (link may not be stable)
[4/4] fs: legacy: gracefully handle non existent files
      https://git.pengutronix.de/cgit/barebox/commit/?id=2958ab65cfc6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



