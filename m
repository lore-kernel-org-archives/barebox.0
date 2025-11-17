Delivery-date: Mon, 17 Nov 2025 12:46:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxgk-001xoq-0V
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 12:46:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxgj-0001I5-Iv
	for lore@pengutronix.de; Mon, 17 Nov 2025 12:46:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IGeBtiFFcRdCPhMlcJsXuuNdBUGlk3HtRPpWSd3xY2I=; b=FvESwhGJA4pbLx8GIy+FaQZ7Zq
	i6LtYs5V2H9wOXlvp3IzNoaYIJfgt1PjD9eoqt6RTl1ufyz7tdHrJ/+VFLkJt2mxTlTJxfE0LKXMu
	yXVzl7scUVa2Csr0/N1X3s96WF9nwGUXbYM77wiUHzcz2FZ9qTkELpHCn6ekAs9F2MIU1giMYsW7O
	A/Kx4Xk3Rs/JlngUk4lqHebVuGXQIuvyi23QxfrL8w1QeLhOApiCUva/l2Q5KqyRB2t+MR9C2GU9P
	V9PfMmn3za9WaAOwid3OX+pX+1HVoGt0eDbOTkn6ZPeu4bgYH9+jRMkwnNWv/7QoWIObCighBftE7
	pEOjbXWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxgN-0000000G0CT-4APX;
	Mon, 17 Nov 2025 11:46:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxgJ-0000000G0BF-2Lbm
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 11:46:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxgI-0001CU-48; Mon, 17 Nov 2025 12:46:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxgH-000u8B-32;
	Mon, 17 Nov 2025 12:46:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxgI-00000005Zx6-1KsC;
	Mon, 17 Nov 2025 12:46:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251110133920.3900948-1-s.hauer@pengutronix.de>
References: <20251110133920.3900948-1-s.hauer@pengutronix.de>
Message-Id: <176337996186.1329787.3997541209862306236.b4-ty@pengutronix.de>
Date: Mon, 17 Nov 2025 12:46:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_034603_600743_6AB4F47F 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] k3: add keywriter lite support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Nov 2025 14:39:20 +0100, Sascha Hauer wrote:
> This adds a command for turning a AM62L SoC from HS-FS (High Security -
> Field Securable) to HS-SE (High Security - Security Enforced) mode.
> 
> 

Applied, thanks!

[1/1] k3: add keywriter lite support
      https://git.pengutronix.de/cgit/barebox/commit/?id=03a9bbc3cdb4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



