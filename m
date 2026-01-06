Delivery-date: Tue, 06 Jan 2026 08:40:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1gX-001oYH-0C
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:40:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1gW-0005ho-I5
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:40:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Y9sg08Ul7cRqjhuB4tj5bDqVub8o1namNu73Efix/M=; b=nzh1eG6yLvQOool9IPczLm1BAJ
	yl3ewMUUuKbf/7mOJyJdOGKDk0fMzB26TjI4aeIssAZexqN4vUsrWXB1gJFFAF9SGj8a1V0WHiRn+
	jyugLDXBrjgBmNTfbZIQGBMhkPIgOGDACtv02Y1U584QPFC40GmxE5pqu05a+wILdI3T2qjEvClwK
	u1UXmk71V7MuOg8CD4GQoObNp7dkiZ3YVHlje8mO/VODuW8/Wpie+uKyjmyuyyvlFsMc7ZlOBpi2g
	DeS9LK7epZ0zRA9TJ/XMX00z/c2YBFTP5WrV8kB9OMOAyXB30kvZNLDUHViG/QJU3xuIp6VGJ1Ck6
	T8Mk0IOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1g6-0000000CXDm-1QEI;
	Tue, 06 Jan 2026 07:40:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1g0-0000000CXD8-3UZq
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:40:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fz-0005Yh-9t; Tue, 06 Jan 2026 08:40:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fz-009JJP-0L;
	Tue, 06 Jan 2026 08:40:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fz-000000088i6-0Byr;
	Tue, 06 Jan 2026 08:40:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105082436.3250210-1-a.fatoum@barebox.org>
References: <20260105082436.3250210-1-a.fatoum@barebox.org>
Message-Id: <176768522304.1940099.2418148495663349004.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:40:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_234024_871815_C1063591 
X-CRM114-Status: UNSURE (   5.78  )
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
Subject: Re: [PATCH] Documentation: devel: contributing: fix URL ReST
 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 09:24:35 +0100, Ahmad Fatoum wrote:
> Without the trailing _, we don't get a clickable link.
> 
> 

Applied, thanks!

[1/1] Documentation: devel: contributing: fix URL ReST syntax
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a969436d43f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



