Delivery-date: Mon, 28 Oct 2024 13:16:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OfA-001qog-0r
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 13:16:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OfA-0007Dj-Ql
	for lore@pengutronix.de; Mon, 28 Oct 2024 13:16:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ocJW/bySkSD+nOAWodQ5Q0iY4gkAHTG657bbJ4+tGRY=; b=vXkN8XXWW9NbeTqwFMwUzLdDfl
	/B2a6z9BKTOWNwVO0x2B0cyag16lJpgzDiq8LhzMo0DH4dlile+AjmugxtF5B0GtFHvDfTGhTMbD3
	Fm9IxWtA7Eo3Tn29IkdouyxmDYDKv2Wcba8+y51sXnvyelEvQvrO9PPOMQGJTVG9Hmd73yT5Rjp0G
	SIYEMpN+X+zxYG7ocPPl/NmurqyuXOQ+1X1A9x7GU2erwxi1dpuOap8Uy3onJNP/liQzStZvk9xO3
	KXhAwos/zn7D6w5MEVNjXDWEyzN1g5TTsLlo5FC1nszRBkvl64qnRReZiF/h4XmhApRITm+3Jd5WY
	jmxlti/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Oea-0000000Ahz3-06TP;
	Mon, 28 Oct 2024 12:15:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5ObX-0000000AhYu-2RiC
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 12:12:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5ObW-0006l6-EK; Mon, 28 Oct 2024 13:12:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5ObW-000qNa-0l;
	Mon, 28 Oct 2024 13:12:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5ObW-001L3c-0b;
	Mon, 28 Oct 2024 13:12:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241025084328.2021437-1-s.hauer@pengutronix.de>
References: <20241025084328.2021437-1-s.hauer@pengutronix.de>
Message-Id: <173011753418.319237.10570074181939289949.b4-ty@pengutronix.de>
Date: Mon, 28 Oct 2024 13:12:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_051215_672073_1D69E832 
X-CRM114-Status: UNSURE (   5.88  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regmap: implement regmap_multi_reg_write()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 25 Oct 2024 10:43:28 +0200, Sascha Hauer wrote:
> regmap_multi_reg_write() can be used to write multiple regmap registers
> at once. The code is taken from Linux-6.12 and simplified for barebox.
> 
> 

Applied, thanks!

[1/1] regmap: implement regmap_multi_reg_write()
      https://git.pengutronix.de/cgit/barebox/commit/?id=70710dd8d1dc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



