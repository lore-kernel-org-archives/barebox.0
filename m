Delivery-date: Mon, 20 Oct 2025 14:59:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTc-009toL-1n
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTV-0000lp-35
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aeUPSt8T5UPZvcuLL1DtWN5yWNiSXeoFEJO7AfoTY/I=; b=AQzIOuEuY8VeHCvWlv1loek+UF
	OCv76c1DYg7C1FP5R5Qn8InYnmYti1uxcqgOlzoFmCEA2QgZ/H28Ms0gM9TWKQzfS4lYRTtGtS9Gy
	oS6XRQH/mav83MKJsCLI+u2OYSORjZz/W57rr21JWkTMYPsLPHY7BkFZLkiAAzm63mextOewHVF5A
	ENXXlgnY92wRU8QXS48FxoNYeFjiLoocY1hWHSutdjaBqhZWULuR3nVMvUpm5IF21LdDBWOiOmIO3
	WIkuRii8Eta5Nwe7jCGdEZFH9Wz7LoJ24BiJHkIwOTFVc9PnnTbp9Ko3nCg1Q8gRFK7ovRAxeUBk5
	l/S8McPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSm-0000000DfJu-3LDQ;
	Mon, 20 Oct 2025 12:58:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSf-0000000Df7p-4Bag
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSe-0008EA-Kz
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo8r-004XUM-0S;
	Mon, 20 Oct 2025 13:33:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo8r-0000000A6OA-0K41;
	Mon, 20 Oct 2025 13:33:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251013094943.1299607-1-m.grzeschik@pengutronix.de>
References: <aOUAKx-E6jn9ZLWT@pengutronix.de>
 <20251013094943.1299607-1-m.grzeschik@pengutronix.de>
Message-Id: <176096001307.2407827.10333214052403269168.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 13:33:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055806_066331_569501D2 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] clk: clk_set_parent: skip any operation if current
 and new parents are equal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Oct 2025 11:49:43 +0200, Michael Grzeschik wrote:
> When an clk is defined with only one parent it probably has no
> set_parent function. Therefor changing the parent would return with
> -EINVAL. We check for this case and skip this function in this case.
> 
> 

Applied, thanks!

[1/1] clk: clk_set_parent: skip any operation if current and new parents are equal
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4da6fa6086e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



