Delivery-date: Tue, 28 Oct 2025 10:03:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDfcR-00CdNJ-0b
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 10:03:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDfcQ-0000Wx-Lm
	for lore@pengutronix.de; Tue, 28 Oct 2025 10:03:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g9BE8FqouQfvGlew32GP8xjMy2o6Mo84RfB5VliGL7w=; b=pvaKFvIRecmEN5TnjF4ErhaF9W
	f1EwQpaCQWfh2tq/LG9R5PXNZ2mkwrilvnj/sCVf7M9pUlRhFsF4jhrj62NXyFQMnc0iMtQed1amS
	TcXsBrlUTyjc20ASlWCZLKk0gNUzfzdEkKYwlGk8qNcDB7JZ7FVk8hGc7IPa23g0D193ZiynEoA0Y
	5d8vX71oX33D7ip/79/aUw2ZlakXOG/apkLxhda/2PLYynXhLC0QbVEoVZmaWNXzd3CXthcvHWffE
	coQxlOrYM5tKQNAt8OROiz/QEv9HZij47lnb9LKxrNND8bdEFb+Yd6hktGWjt/b0LNVqRIZQeztzU
	jcA0zqpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfbw-0000000FbUp-33zw;
	Tue, 28 Oct 2025 09:03:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfbv-0000000FbUB-0WMt
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 09:03:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDfbt-0000QJ-A1; Tue, 28 Oct 2025 10:03:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDfbt-005qW7-0N;
	Tue, 28 Oct 2025 10:03:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDfbt-0000000C8pc-23N6;
	Tue, 28 Oct 2025 10:03:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251027080832.1989341-1-a.fatoum@pengutronix.de>
References: <20251027080832.1989341-1-a.fatoum@pengutronix.de>
Message-Id: <176164220103.2893755.6430648745722172852.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 10:03:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_020323_164965_B38E7B20 
X-CRM114-Status: UNSURE (   8.91  )
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
Subject: Re: [PATCH] kbuild: add make check target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 09:08:23 +0100, Ahmad Fatoum wrote:
> The barebox test suite is invoked by running pytest, but for many
> projects running make check is what is usually expected.
> 
> Add a make check target that calls pytest to accommodate that.
> In future, we may add extra checks to test that pytest is correctly
> installed to make it easier to use.
> 
> [...]

Applied, thanks!

[1/1] kbuild: add make check target
      https://git.pengutronix.de/cgit/barebox/commit/?id=91243c375738 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



