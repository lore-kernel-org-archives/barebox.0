Delivery-date: Tue, 22 Apr 2025 12:28:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arp-0040w9-2e
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:28:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arp-0001zS-7d
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:28:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z7zQVMKu81+0fBk9JM3nBKSNn4iIQ9x/M6n41oReCE4=; b=LkIii/w5HBwQeEzpcZg+TklcMA
	8tsNMwplCafn1vaw0l/fLj5+BJR2bYMwoMg3i0pn3K7FWAxstQPG45Z+Fj43QNoL6F6TNB+LwSmax
	GRPgG7WbUOvM7E0A4pBzqgWHWnO5V/jp+X3OCt8ZokqZ6oSRfmPWjYWLt4kphP19geroK79ikjc2C
	xqpVvxIBMKdZyeRDc/B0/CKvBsxtiagK0ceTHn5YtAGCPAk/G9H7hY9jHsBoP62fDoxotApiop0Tb
	d4p85cAcQ0V7/BmGhRwaIPkGcmN1p8uMIfNovnrJUWLiMunL4Nd+sRWcZZxfD+JSbEhOcZKl6Gwlj
	oszdg5Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ArR-00000006l4Z-11LR;
	Tue, 22 Apr 2025 10:28:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79rB-00000006XxA-0E9u
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:23:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79r9-0005Dy-K8; Tue, 22 Apr 2025 11:23:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79r9-001Wne-1N;
	Tue, 22 Apr 2025 11:23:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79r9-00CeKM-19;
	Tue, 22 Apr 2025 11:23:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075444.218493-1-a.fatoum@pengutronix.de>
References: <20250422075444.218493-1-a.fatoum@pengutronix.de>
Message-Id: <174531383535.3014901.3298687022994780477.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:23:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_022357_095239_B36D85E8 
X-CRM114-Status: UNSURE (   4.55  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] stddev: make reads from /dev/null return 0 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:54:44 +0200, Ahmad Fatoum wrote:
> Currently, /dev/null discards all writes, but returns -ENOSYS on read.
> Implement read to return 0 always, so it returns EOF immediately.
> 
> 

Applied, thanks!

[1/1] stddev: make reads from /dev/null return 0 bytes
      https://git.pengutronix.de/cgit/barebox/commit/?id=30f87370323a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



