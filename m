Delivery-date: Wed, 29 May 2024 08:09:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCUv-0016Ej-2i
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 08:09:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCUv-000799-9a
	for lore@pengutronix.de; Wed, 29 May 2024 08:09:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qMNC39lJ5ft9mFDt0H9Y1fXu57NAQ+v2Q+HlFXphzjE=; b=RqLQRMGttgXtUwp8sBdx0PS2mo
	YMpmSe9soFi4dwqibr3vZfYzCuws97OJdlHFLi1C/f4K5/dCyyxK0M3UroBFR6t4ot1Af2ZsMklDX
	XqaBpj8YkE7vO3jlanZIfrn+tk18dpOud9r6HsIIh1Ub65HghVZj2yiHBkZ7Dbpp9COnJVPdJEiC1
	HlnyBJv2dG4hPRZmql9vOBsub7L80lMcvN0e/dgtNaUZYydfdDbMoq5ZYeU6/83BKcTF9D7r/CNa7
	qxB+BHFTAnbjiG0Lu72zdJzjt9ESfA288fE0b41WOsAp+HD5PZWWMAr0THbzr8+bGaEPii529cEsY
	T5JXEdxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCUL-00000002xnI-1ZOE;
	Wed, 29 May 2024 06:08:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCUI-00000002xkv-0rWZ
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 06:08:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCUE-00071C-QU; Wed, 29 May 2024 08:08:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCUE-003QTf-Do; Wed, 29 May 2024 08:08:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCUE-002SFe-1A;
	Wed, 29 May 2024 08:08:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240507073809.991918-1-s.hauer@pengutronix.de>
References: <20240507073809.991918-1-s.hauer@pengutronix.de>
Message-Id: <171696291435.585205.2049478236245288716.b4-ty@pengutronix.de>
Date: Wed, 29 May 2024 08:08:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_230838_320814_674CFA69 
X-CRM114-Status: UNSURE (   5.76  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mtd: nand: raw: add back support for marking blocks as
 good
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 May 2024 09:38:09 +0200, Sascha Hauer wrote:
> Support for marking blocks as good was lost during the last NAND layer
> update. Add that back.
> 
> 

Applied, thanks!

[1/1] mtd: nand: raw: add back support for marking blocks as good
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4f50a2f249d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



