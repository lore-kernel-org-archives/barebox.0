Delivery-date: Fri, 17 Apr 2026 12:44:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDggv-00DAJu-0y
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:44:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDggu-0000aU-P9
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:44:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=REXgjM9sNg/4CtJD0obJtg+4FJ4JlVzgMo2SdTcykaw=; b=xcKVRJpohKsM3ACay/w1YxCRCu
	ec9YYb3GwUkiYTwILqmpxh3pOR8ajZhV0ATPWHlEsNiic3mL3R1O4OHYa0ofDfk5j5+oCYAGGUB8p
	3YPbw5Qo/LFzxEoNo0kXOPTq5J/sJxIH5WsY5olMWtcHF1AQ1onkgHy5q+Inv8HeWAFRvZVfta0cp
	1edJdCRbSsoYdM7XFLQ0CgAD8QP6uGgIWPfwlA7zriEmm+3ax5zeDN9XD6DTIfLoegQQGOR2ehGlK
	51sT1hoUwS1MiyNmRRnlb92WgB+7OkzokypYpWcjn9UKS4kyhyaYjWMRmWKqo1LL7VHcHUEwAgZ2O
	oTlpBQDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDggY-00000003vQN-3C6x;
	Fri, 17 Apr 2026 10:44:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDggX-00000003vPN-0weh
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:44:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDggV-0000QL-Mq; Fri, 17 Apr 2026 12:44:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDggV-005pme-1d;
	Fri, 17 Apr 2026 12:44:27 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDggV-00000000fEI-1sJV;
	Fri, 17 Apr 2026 12:44:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260417092657.3830781-1-a.fatoum@pengutronix.de>
References: <20260417092657.3830781-1-a.fatoum@pengutronix.de>
Message-Id: <177642266744.158329.4894126478221488807.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 12:44:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_034429_265515_1D6A1B1A 
X-CRM114-Status: UNSURE (   6.12  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] Documentation: migration-guides: mention possible
 FIT compat break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 Apr 2026 11:26:26 +0200, Ahmad Fatoum wrote:
> With manually written ITS, it's easy to omit signing some of the images.
> This flew under the radar so far, but with v2026.03.0 (or v2025.09.3),
> this will lead to verification failure.
> 
> The security advisory has been updated, but it's nonetheless worth an
> addition to the migration guide.
> 
> [...]

Applied, thanks!

[1/1] Documentation: migration-guides: mention possible FIT compat break
      https://git.pengutronix.de/cgit/barebox/commit/?id=3160d162e2ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



