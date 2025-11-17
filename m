Delivery-date: Mon, 17 Nov 2025 12:49:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxjs-001xr2-2O
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 12:49:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxjs-0001lc-0P
	for lore@pengutronix.de; Mon, 17 Nov 2025 12:49:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pmD6SzRK6hwzf+ZxE156PEasNEfYfPy28GgKlo9qa0A=; b=pVGrR7jGdGEWXnYF9RcFn0JjUi
	3RjXSX33Cnd5bAF94ujlhrXzi77Jlx2X9S6PL+2QMyqpkgblBR+sOGFVTBblviyEMUDjSV5oLu8Lh
	dM3q/44GJnG/auXP8qNF+W9Y6fZNkqCoLnRpUFJY+M+v/MG9c1E21amiMXcf1dDpWpq1n7savFxne
	VEEgGnzmYVyBWH4lQgA8r33Zk/OVJ+J3UVlLK+Pt5/mnfTp3OSc+ed9iVOnHANUyajadN16NIfPcs
	fkkmnqlfuIulMKP9KtzViuVUZ+Ht3vUvV8kpubh1fFrJxB1Gt7xLqvHYFwb5xVq8n+u64oVZs3mU+
	IxO5UcRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxjT-0000000G0ZI-2xwi;
	Mon, 17 Nov 2025 11:49:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxjQ-0000000G0YI-0vQI
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 11:49:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxjO-0001gp-IM; Mon, 17 Nov 2025 12:49:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxjO-000u8g-1D;
	Mon, 17 Nov 2025 12:49:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxjO-00000005a1b-3C5M;
	Mon, 17 Nov 2025 12:49:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251111133245.2711874-1-a.fatoum@pengutronix.de>
References: <20251111133245.2711874-1-a.fatoum@pengutronix.de>
Message-Id: <176338015431.1330062.7847563364363456902.b4-ty@pengutronix.de>
Date: Mon, 17 Nov 2025 12:49:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_034916_261204_DBAC7465 
X-CRM114-Status: UNSURE (   7.42  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mvebuimg: replace errant sizeof(4)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Nov 2025 14:32:45 +0100, Ahmad Fatoum wrote:
> trailer is a 4 byte array and sizeof(4) == sizeof(int) for most
> contemporary architectures, so this went unnoticed.
> 
> Remove this hidden assumption by using sizeof(trailer).
> 
> No functional change for probably all architectures barebox was so far
> compiled on..
> 
> [...]

Applied, thanks!

[1/1] mvebuimg: replace errant sizeof(4)
      https://git.pengutronix.de/cgit/barebox/commit/?id=dbee8b66baad (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



