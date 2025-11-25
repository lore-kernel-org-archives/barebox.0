Delivery-date: Tue, 25 Nov 2025 11:45:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNqYO-004hdm-0D
	for lore@lore.pengutronix.de;
	Tue, 25 Nov 2025 11:45:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNqYN-0002IP-Hq
	for lore@pengutronix.de; Tue, 25 Nov 2025 11:45:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u8+bHVS2bSo9YoNzj+7xJUXhJHcV3Ju7VLL8tlH3EjI=; b=ISj0X72FSZhbKU9CAv/+dwZVaQ
	Axpc26NW/Tv2eCsLlLrUZSZAo61vn5NcCgfZyy/yqClljKw68ZZNC4UKkOh0wp0IDS7X7OOGSNMd/
	O8RlgezMXTwN0jjQAXCOq1MfgRqTe4AGOgXtjUP822xGXIxkV/H6qMgWEtAGH0FcqolMeJe3OKJuH
	Jpg2NSVbIZg1xQMO4rNEx5P2G1uCUONmEj1wqN37RYpbJ8p2KSRUJYggmrtvt5cv29fn6ibgTVYG7
	dANRWxf6JjxrRki1lw++H5zf3KODDBPcx6iltNpVM1mEUkM5F07lRgyuv2AC1ynishpL5UYKbqf6F
	WkQvekCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNqXm-0000000D9Ci-18se;
	Tue, 25 Nov 2025 10:45:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNqXj-0000000D9C0-0hsz
	for barebox@lists.infradead.org;
	Tue, 25 Nov 2025 10:45:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vNqXg-00029V-CR; Tue, 25 Nov 2025 11:45:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vNqXg-002NTk-0d;
	Tue, 25 Nov 2025 11:45:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vNqXg-00000004qgz-2Pbo;
	Tue, 25 Nov 2025 11:45:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251121151744.3481273-1-s.hauer@pengutronix.de>
References: <20251121151744.3481273-1-s.hauer@pengutronix.de>
Message-Id: <176406750412.1155848.6883387898545777339.b4-ty@pengutronix.de>
Date: Tue, 25 Nov 2025 11:45:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_024507_244213_CB6C8096 
X-CRM114-Status: UNSURE (   7.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] public-keys: fix warning message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 21 Nov 2025 16:17:44 +0100, Sascha Hauer wrote:
> idr_alloc() returns the id allocated or a negative error code. Checking
> for an error with if (ret) is wrong, check for < 0 instead.
> 
> 

Applied, thanks!

[1/1] public-keys: fix warning message
      https://git.pengutronix.de/cgit/barebox/commit/?id=591b47b081f0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



