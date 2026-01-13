Delivery-date: Tue, 13 Jan 2026 12:03:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcBb-000rG7-01
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:03:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcBZ-0001vk-Lq
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:03:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0bQRW/p0aLIavkCitl9lYQyS4pi+v9K1SAuMP28Ysxw=; b=pTssIltoh7pUgMcVg0/jS4+xxN
	kzo0OL5ZK3Hn9JTXRMEb0NMwF9QQ47nBOuPdkdNnmgGhTzRcfhjewHjBKhBMWaGTZputYe/X0kkvv
	KvkXT5Dw/AtwJnFSjuH6eEkBGUae28+wtejXHw1VIE8cCLZfriAuuYrY45/EIbJHaGqm8lP9kfoI7
	joMZ81rQ/Vg61YoGNK8ELZIPbDnBj6feL4QWGBNzdblPjdGkEIcNDCa/vMPh2EKwvK9KPgOGG13qC
	3pCwY1yFkpmO22YYF5aVf2Ob5hMqx/X8C2dx1VnELGBHOhOz00+HCMECjbDKl/eOZUlOJIMpNpHMV
	RIkQQzZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcB6-00000006ys7-13rP;
	Tue, 13 Jan 2026 11:03:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcB3-00000006yqu-1Cd8
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:03:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcB1-0001gK-MG; Tue, 13 Jan 2026 12:03:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcB2-000PND-0V;
	Tue, 13 Jan 2026 12:03:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcB1-00000005L76-1pSp;
	Tue, 13 Jan 2026 12:03:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260112084816.2949173-1-a.fatoum@barebox.org>
References: <20260112084816.2949173-1-a.fatoum@barebox.org>
Message-Id: <176830218743.1272392.1701436384070114836.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:03:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_030309_329511_4D950AC4 
X-CRM114-Status: UNSURE (   7.52  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: pblimage: add to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Jan 2026 09:48:15 +0100, Ahmad Fatoum wrote:
> This host tool is used to assemble the Layerscape image format, but it
> has been missing from .gitignore.
> 
> 

Applied, thanks!

[1/1] scripts: pblimage: add to .gitignore
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e2f0dcca080 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



