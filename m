Delivery-date: Thu, 13 Jun 2024 09:08:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeZA-005Etp-2u
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 09:08:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeZA-0004TK-Cp
	for lore@pengutronix.de; Thu, 13 Jun 2024 09:08:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RFgyNZaQVuLm08LjyXkmoqNDahnohNVo02/FFhXc1OY=; b=C3Ig+Yqaryi8PDbtbylueAzU/0
	Yq7KP45bWBlt0+/lgeCXpxPfxgQXq8GTk+xTF7LF80BAiOYS9c5/CswzAhTyqoF0NtsLPm3MRwoPK
	4i4f+zhxs96sYaYjqf5xte2zSod/JicgpjCZzeMJHi1YBhVjUaYvN2mBovEMj/EQ+AozLpqoFpMQp
	5PxZtelYXq5+jIRgVqjkamJgWFGbqxuKaG/LHAJI52hrUmuUBKDboEU8xfH12/yATnZmr8RfjDSrF
	NacELWxlvago+njPvBHR+OqM04xa1xdCsTsCCjTCSBnLvS2fOvvF7zAM9zKDOhVG2uvqsCjWaGD1l
	yDlYFNoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeYk-0000000FPi3-3ihP;
	Thu, 13 Jun 2024 07:07:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeYg-0000000FPhO-2Zh0
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 07:07:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeYf-0004NK-EG; Thu, 13 Jun 2024 09:07:41 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeYe-001yJj-Tp; Thu, 13 Jun 2024 09:07:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeYe-00BSIz-2m;
	Thu, 13 Jun 2024 09:07:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: David Jander <david@protonic.nl>
In-Reply-To: <20240612130509.3697488-1-o.rempel@pengutronix.de>
References: <20240612130509.3697488-1-o.rempel@pengutronix.de>
Message-Id: <171826246085.2730396.6391644887129239703.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 09:07:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_000742_690362_02A3CED4 
X-CRM114-Status: UNSURE (   4.69  )
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
Subject: Re: [PATCH v1 1/2] arm: boards: Add support for Protonic MECIO1
 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Jun 2024 15:05:08 +0200, Oleksij Rempel wrote:
> 


Applied, thanks!

[1/2] arm: boards: Add support for Protonic MECIO1 board
      https://git.pengutronix.de/cgit/barebox/commit/?id=979f8397a217 (link may not be stable)
[2/2] arm: boards: Add support for Protonic MECT1S board
      https://git.pengutronix.de/cgit/barebox/commit/?id=b9254aa9f983 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



