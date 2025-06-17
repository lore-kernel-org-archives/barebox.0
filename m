Delivery-date: Tue, 17 Jun 2025 08:57:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQG9-008BXp-1Z
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 08:57:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQG8-0007Xk-T4
	for lore@pengutronix.de; Tue, 17 Jun 2025 08:57:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l1IDy9P/UfyUFppI5l7p3c+1qanfXdbMrtzyffPCBPI=; b=iO7jdrO6dsGhPNDdYDWo2pC0Va
	GSsmrnUsv/IKpzNohvW+hcrUca7bXEOvljke3Hf6qP+1kIPEKQkuV3hUeKA3hnv94TQWYOQUwGLWG
	EqFNZMeKIpOejSHMQkcPEWP6bYBJoBdJRMIhgNAU8mUrQ+zjMl9Ms9SJMngQFxDfGkPxwMhN3Qqgx
	osATYgBl339cbZbtsoSTx3C1ausqRRxpI99gl16D+mk/AkT5J8EcPx9ymwbAXgCALH+7G+3Eb+t5U
	ekcTKQVYP2ZGHXmeVs6YtWgEjTLjZc6BkGmXib1J8jns3A6PCnPIz/nnEFlfdBIBp0rM8Fn/HnskT
	PC44s6SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQFa-00000006P3Z-2jDU;
	Tue, 17 Jun 2025 06:56:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQDd-00000006Os3-0Oe2
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 06:54:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQDa-0004BX-6B; Tue, 17 Jun 2025 08:54:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQDZ-003vmR-2t;
	Tue, 17 Jun 2025 08:54:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQDZ-00CHC9-2g;
	Tue, 17 Jun 2025 08:54:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Richard Weinberger <richard@nod.at>
In-Reply-To: <20250616130430.782214-1-a.fatoum@pengutronix.de>
References: <20250616130430.782214-1-a.fatoum@pengutronix.de>
Message-Id: <175014328983.2925766.2644383298815425968.b4-ty@pengutronix.de>
Date: Tue, 17 Jun 2025 08:54:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_235453_175159_8D7F815B 
X-CRM114-Status: UNSURE (   8.53  )
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
Subject: Re: [PATCH] dlmalloc: remove in favor of TLSF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Jun 2025 15:04:30 +0200, Ahmad Fatoum wrote:
> We have had a TLSF implementation in barebox for >= 13 years now and it
> has more features than the dlmalloc, which we inherited from U-Boot,
> like multiple pools and KASAN integration.
> 
> We didn't have pressure to retire dlmalloc in that time, but bugs like
> those fixed in commit 7cf25e0733f0 ("dlmalloc: Fix integer overflow in
> request2size()") show that there's a security cost associated with
> keeping bitrotted code, especially as we didn't document TLSF as being
> the recommended allocator anywhere.
> 
> [...]

Applied, thanks!

[1/1] dlmalloc: remove in favor of TLSF
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c094fca7ca2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



