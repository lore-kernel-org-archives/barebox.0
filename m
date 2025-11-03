Delivery-date: Mon, 03 Nov 2025 09:41:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq7k-00EnGj-0D
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:41:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq7j-00005V-Fg
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:41:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Srch2pkOCjfoDDqnzk9Ohv1BrfKxJ6DKC8+fUMRzh8=; b=0HyzMUoLsVcSCT2ZRWGjV+l/3E
	06DFjHxZNCg85tvQneq2wSKNJ1SccFMmqBZKf1ANUA8dFsy0c4tqO5IEiZ/8+LnYc1fH3q948hVBP
	zTYtRjPxUAYyFF1go5K2rw3MTPHe/YzPTl9Q8L2uNctPp0vUANX8e3CSQHifMZpuZ5M2CiYyitbYY
	gTeUgKaE3HYvv9HaK5c57m4+rJhuFazEVqBESI7RfIp7lvtmHWXbkkXKKMsl5/S6No7GwXOlxaalo
	d5Ub+SM/uGd6vik3n+EH1O1aSrFDaYXqhmLD96TTB8j4iF8VAtSgfXhQsWZzCmuHMttQFHCgmhRPH
	V1gdqrHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq7G-00000009Rqe-0aSo;
	Mon, 03 Nov 2025 08:40:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq7E-00000009RqJ-0ymK
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:40:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq7C-0008LS-NW; Mon, 03 Nov 2025 09:40:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq7C-006pSi-1h;
	Mon, 03 Nov 2025 09:40:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq7C-0000000HLcq-3nJQ;
	Mon, 03 Nov 2025 09:40:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
In-Reply-To: <20251101105542.3830943-1-a.fatoum@barebox.org>
References: <20251101105542.3830943-1-a.fatoum@barebox.org>
Message-Id: <176215923845.4134647.16737877367747106215.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:40:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_004040_278196_38A61ECD 
X-CRM114-Status: UNSURE (   8.77  )
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
Subject: Re: [PATCH master 1/2] range: fix corner cases when exclusive end
 is zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 01 Nov 2025 11:55:38 +0100, Ahmad Fatoum wrote:
> Unlike inclusive ranges, exclusive ranges can be empty and
> region_overlap_end_exclusive() goes beyond that and checks that ranges
> are neither empty nor does the end precede the start.
> 
> This is problematic for a range that stretches to the maximum value of a
> type. Exclusive end in that case would be 0 and 0 comes before all
> non-zero numbers, so the region_overlap_end_exclusive() would always
> return false.
> 
> [...]

Applied, thanks!

[1/2] range: fix corner cases when exclusive end is zero
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ec4f2589cd3 (link may not be stable)
[2/2] test: self: add range.h test
      https://git.pengutronix.de/cgit/barebox/commit/?id=510c2391d2ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



