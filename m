Delivery-date: Tue, 23 Sep 2025 10:14:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0yAq-0007zX-2P
	for lore@lore.pengutronix.de;
	Tue, 23 Sep 2025 10:14:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0yAq-000092-83
	for lore@pengutronix.de; Tue, 23 Sep 2025 10:14:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qyRYacvH00XmOA8FgDOOy1CavWuWskIuow35APVBMbA=; b=PkxQc4ZYGi/YnaAQ6oIicrKl6E
	4e1us7oq+DYOy/UYENrhlDxQayCvFdVOO6FyDfhv5tTBagCrPQC7dgTM2suNNVuj/eZc+5kGIecuM
	gBdYSBLwsah5XbDvo/mxnYQASFPn8lBDg3oRyR40M82cIyLrneOp/16nHKAgpZcuroCOxVvXbcAqe
	q/gBXfp1Fkrz1OERoLmT2AlfzMw9841ML8lSuQIX+asFcD8Wd92Okj69YfuU2E7VXrtykPaBmDkEm
	rk8pSleg9ZXkSW+e8Y946sqEmwucNx3G+HSwKBXXnE2kR2yjNn4W256LVD84xFDxfF3bJSLpIBnMw
	uQgxjnFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0yAP-0000000CmrR-1ybj;
	Tue, 23 Sep 2025 08:14:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0yAN-0000000Cmq5-09FN
	for barebox@lists.infradead.org;
	Tue, 23 Sep 2025 08:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0yAL-0008RJ-BG; Tue, 23 Sep 2025 10:14:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0yAL-0003im-0X;
	Tue, 23 Sep 2025 10:14:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v0yAL-0000000Cmrd-0T1a;
	Tue, 23 Sep 2025 10:14:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250922141613.2626411-1-a.fatoum@pengutronix.de>
References: <20250922141613.2626411-1-a.fatoum@pengutronix.de>
Message-Id: <175861526510.3047596.8565859315105456322.b4-ty@pengutronix.de>
Date: Tue, 23 Sep 2025 10:14:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_011427_086192_D8A72D25 
X-CRM114-Status: UNSURE (   8.38  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: ecc: drop unused curve25519 definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Sep 2025 16:16:11 +0200, Ahmad Fatoum wrote:
> ecc_get_curve25519 is used in the kernel only to support the hisilicon
> hpre driver and can't be used for general purpose like the NIST curves
> defined in ecc_curve_defs.h.
> 
> In barebox, the function is fully unused, so drop it to prevent
> confusion.
> 
> [...]

Applied, thanks!

[1/1] crypto: ecc: drop unused curve25519 definitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6076745cbbf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



