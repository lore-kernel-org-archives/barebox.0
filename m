Delivery-date: Fri, 03 May 2024 08:55:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mp2-00Gltb-2q
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 08:55:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mp2-0004my-AP
	for lore@pengutronix.de; Fri, 03 May 2024 08:55:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CM6EUysq34BEuR2UuhA8huWW6rp4KlvE1lBF7fLhOVE=; b=yMl+0GS5qpMvH9XLkzQsKSV1a3
	HrZs24D+5OUPPkIsMfQ4RfXfooIxQTyXyhqcoaRor29xTiZ5xHvqnV6OdyAZZ1/Io2oOAz0ppKwcr
	Qh2eLM91IOG5IN0XH9DC2Yp0HwjhMLKSh6yAfNFBGgytBE5AcD1UldCMUBRvLUOp5QS8IcArNdk6f
	4wphdGSCcRHLePlJ/fbWF3kbV1IpelotHGj5ga267ReC9D+QUTLuwxUFjBV2A4t6mOMkl559tYPuC
	xugw1hb77VvcUyBlJcGE8Z1ojr2yadIYWJiYz6CVDRyp4nWCsUlV9T4SZf5TCAkjtPKf+Pu01Lkfb
	5NKpH2vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2moa-0000000FNBJ-1yKr;
	Fri, 03 May 2024 06:54:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2moV-0000000FN9t-3jKS
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 06:54:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2moU-0004fe-EW; Fri, 03 May 2024 08:54:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2moU-00Fefl-2J; Fri, 03 May 2024 08:54:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2moU-0003Rr-02;
	Fri, 03 May 2024 08:54:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: has@pengutronix.de, bst@pengutronix.de
In-Reply-To: <20240502101724.2609941-1-a.fatoum@pengutronix.de>
References: <20240502101724.2609941-1-a.fatoum@pengutronix.de>
Message-Id: <171471927400.13188.10940873456885380104.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 08:54:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_235435_962026_57057E80 
X-CRM114-Status: UNSURE (   6.08  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mfd: pca9450: print reset reason as hex if unknown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 May 2024 12:17:24 +0200, Ahmad Fatoum wrote:
> On an i.MX93-based board, it was observed that a potential ELE-induced
> reset ended up with an unknown reset reason. To aid in debugging this,
> print the value in hexadecimal when no mapping is known.
> 
> 

Applied, thanks!

[1/1] mfd: pca9450: print reset reason as hex if unknown
      https://git.pengutronix.de/cgit/barebox/commit/?id=9af02f7f50ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



