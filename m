Delivery-date: Fri, 01 Mar 2024 10:20:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz40-001QOw-25
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 10:20:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz40-0007Sx-2G
	for lore@pengutronix.de; Fri, 01 Mar 2024 10:20:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VV3vGWA5SRPkQJDzKYMQZ4aZ02v3LpicsIFPTdyKhqk=; b=ozTRYPj0DdG7s0bBi42au9wFhd
	GslUx9R0sNgJd0e77Ve2hEcCV6KdvHlpbwI6i4wKPBhXqXhlOIFlpb2s0UhIvicf0kgTlPx613shs
	Y5JoG87F5eKnw37/WDeZa3Dymj41a8qEUAo7WgyT1x3pRnD6gNPBCquFUGxQXzrx2TkgX/gjZW45I
	atGcWr3XVDZLtlOSkkwxJxjVVMN5ZR/AiAbm7s11i5BiVKL6SZN6necnqnBQRDqysUCyuFOFSphkN
	gYVevdiHK7fTzYZsKo2ANJie8DmUFwLsTeqfCIZbXvnbMUnvN+KHnTbXKMp/kgEjVRk1rXhzL6vUu
	w2mlK7Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz3N-0000000H6eV-29IQ;
	Fri, 01 Mar 2024 09:19:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz3E-0000000H6Xw-3GJe
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 09:19:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz3C-0007DK-4n; Fri, 01 Mar 2024 10:19:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz3B-003kiN-OK; Fri, 01 Mar 2024 10:19:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz3B-00A6Ou-2E;
	Fri, 01 Mar 2024 10:19:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240301074400.1616644-1-a.fatoum@pengutronix.de>
References: <20240301074400.1616644-1-a.fatoum@pengutronix.de>
Message-Id: <170928476968.2407867.16563936439483064113.b4-ty@pengutronix.de>
Date: Fri, 01 Mar 2024 10:19:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_011933_514732_CBC30D50 
X-CRM114-Status: UNSURE (   8.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH next] fixup! usb: xhci: reset endpoint on USB stall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 Mar 2024 08:44:00 +0100, Ahmad Fatoum wrote:
> usb: xhci: call dma_unmap_single in all error paths
> 
> A new early exit for stalled USB was added that resets the endpoint
> before returning an error code to the caller.
> 
> This unintentionally happened before unmapping the buffer, which is
> detected by CONFIG_DMA_API_DEBUG:
> 
> [...]

Applied, thanks!

[1/1] fixup! usb: xhci: reset endpoint on USB stall
      https://git.pengutronix.de/cgit/barebox/commit/?id=aed18e44bbd9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



