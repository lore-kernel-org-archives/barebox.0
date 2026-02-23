Delivery-date: Mon, 23 Feb 2026 10:52:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuScB-004mr6-2R
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:52:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuScC-00057N-2j
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:52:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fl84AEAitba9aCHmCU3dlKGaOquIVmRoMoquOp9bHXA=; b=BSegJfCZFv2eRW4/IW+6bO6EuJ
	7Tj5us/4cJN8rfm20yVPvzRSjetfNuLklEvf4ufhNIlfaR/+saT3gBcmLMDUchBx1UlZ4IwAtNrs2
	9A7tbbz2I9fWzgYEhbESyCueNliLiFxkXZ+mvLyPTLPaXFqRl5FdnEa5r7x5pOjT1TYtpQQe/TZVp
	Yl81ND2w4wXXL3rNQsIjnJpQP+RS0ficra8K6DWaJfrt/zSU5kBawy+YT7ZNOROXueQwoygewpzOO
	M8xbrPDu+/Djt/oNRyHTGhUeZAqlNdPdDQzkZBc7VW+J7HEzMuvFXcX7r0KSHYaloILpiPgj22r4J
	jw5riX1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSbp-0000000HaEk-3zaN;
	Mon, 23 Feb 2026 09:52:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSbn-0000000HaER-1VOx
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:52:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSbl-00053i-Ng; Mon, 23 Feb 2026 10:52:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSbk-002Cqb-0a;
	Mon, 23 Feb 2026 10:52:05 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSbl-00000000ppB-1wc1;
	Mon, 23 Feb 2026 10:52:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
References: <20260216084142.3546363-1-a.fatoum@pengutronix.de>
Message-Id: <177184032545.199108.1823658291287669614.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:52:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_015207_501198_8EA01473 
X-CRM114-Status: UNSURE (   5.96  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/4] FIT: fix potential uninitialized read
 during fuzzing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Feb 2026 09:41:36 +0100, Ahmad Fatoum wrote:
> fit_find_last_unit should return -ENOENT when conf_node is NULL
> instead of returning 0 without writing *out_unit, as that left
> the caller's unit variable uninitialized.
> 
> 

Applied, thanks!

[1/4] FIT: fix potential uninitialized read during fuzzing
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a358579b6ee (link may not be stable)
[2/4] FIT: fix potential underflow of stack array
      https://git.pengutronix.de/cgit/barebox/commit/?id=38ee3bd662a8 (link may not be stable)
[3/4] of: fdt: fix double free in fdt_ensure_space
      https://git.pengutronix.de/cgit/barebox/commit/?id=3d6d2414d85e (link may not be stable)
[4/4] of: overlay: initialize ret to fix garbage return value
      https://git.pengutronix.de/cgit/barebox/commit/?id=2fb737e978c1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



