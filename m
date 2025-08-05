Delivery-date: Tue, 05 Aug 2025 11:34:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3u-007FSP-1J
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3t-0003Il-HH
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OTpB0zDcRcbbIMFS7irLSRNlDr3XQKweQ06/6PJY18w=; b=QYCxcDc2McG8VpYfsm9H42ODre
	N9uCKNTKeajdjnTPhquYCNi5BMZFQkuqo0MzEwJfjV46JZFSmU+L6aGdEE09FIoPDQnnqnSU6PaQj
	PcbfnbynU+DGXgdF/x/M+JOyHo7aKyWtOD1Qr7d5N+AsivSwzdXln6P96Yjd0IeObhRq2viS7nC+r
	F3kbbGUs2tf2rQTb+N7OMvgFjmfFZd7vzHsGXCArv1uXZurEAtpSB0AMeH/lfBUTsAkljvlV7OnAl
	9wjmaqlntzhM/Mh4rJojrsi7zeAw+KzSXH6qh0svGn9WYlkWmCy6d5VGy6LMIT1aSj96oG0RwVIfl
	uMzWM0Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3H-0000000CMkD-1YJp;
	Tue, 05 Aug 2025 09:33:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDoR-0000000CKit-0lKZ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:18:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDoP-0000vJ-Nr; Tue, 05 Aug 2025 11:18:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDoP-00C18G-1b;
	Tue, 05 Aug 2025 11:18:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDoP-00EiQP-1P;
	Tue, 05 Aug 2025 11:18:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bo Sun <bo@mboxify.com>
Cc: a.fatoum@pengutronix.de
In-Reply-To: <20250717131339.1127485-1-bo@mboxify.com>
References: <20250717131339.1127485-1-bo@mboxify.com>
Message-Id: <175438550543.3507316.13474828691577653587.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:18:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_021827_229278_2FBDC2C5 
X-CRM114-Status: UNSURE (   6.63  )
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
Subject: Re: [PATCH] driver: convert struct device comments to kernel-doc
 style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Jul 2025 21:13:39 +0800, Bo Sun wrote:
> Convert the comments of struct device from the old style to standard
> kernel-doc style.
> 
> No functional changes.
> 
> 

Applied, thanks!

[1/1] driver: convert struct device comments to kernel-doc style
      https://git.pengutronix.de/cgit/barebox/commit/?id=78d8afa4372e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



