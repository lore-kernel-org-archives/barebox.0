Delivery-date: Mon, 05 Feb 2024 08:47:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWthb-003xU5-1X
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 08:47:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWthc-0003mb-6S
	for lore@pengutronix.de; Mon, 05 Feb 2024 08:47:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ow63ByyVYbEQbqzptcpVgUuMrx6ynE1Qz/hFgJ6XebY=; b=P51NxtBf6aeaijTGsv/U+nCLq2
	wq3jndByyFnQpuz9k0InDOLpupoCoILxyYoB0f8x8qA9kHjUpNPeFZhTxFB1e7rl3R/CR5+9p/igD
	OoY4SKdZiJ1rA+3Wzyp4jMLgQYgeARSWIzcKtvVhwB075FqhjTlhqABTTAPHebGOlwyDi8tf5LfDL
	J+GABapFzj9zfPFApJsxgMzq8/Xvzs1uL2oqjJuNy0I9lUQQp1eoIJm31lIxXqdWcveRPurtWuMi0
	25Uh4+UTKCnFjvGSnbN/TxtdVuguTJMOnaVPn8/IEz4i1JIi49SubZZXu4mAOlOwJyg4xR+Ofij8z
	YJj+rKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWthF-00000002LMM-1dye;
	Mon, 05 Feb 2024 07:47:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWthC-00000002LLk-2kgO
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 07:47:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWthB-0003gb-HL; Mon, 05 Feb 2024 08:47:13 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWthB-004aUz-54; Mon, 05 Feb 2024 08:47:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWthB-008QIa-0J;
	Mon, 05 Feb 2024 08:47:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240202151147.226876-1-s.hauer@pengutronix.de>
References: <20240202151147.226876-1-s.hauer@pengutronix.de>
Message-Id: <170711923309.2007698.13805481146039880076.b4-ty@pengutronix.de>
Date: Mon, 05 Feb 2024 08:47:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_234714_729891_1F389BD2 
X-CRM114-Status: UNSURE (   6.56  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] vsprintf: add support for printing MAC addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 02 Feb 2024 16:11:46 +0100, Sascha Hauer wrote:
> Linux can print MAC addresses using the %pM format specifier. Implement
> the same for barebox.
> 
> 

Applied, thanks!

[1/2] vsprintf: add support for printing MAC addresses
      https://git.pengutronix.de/cgit/barebox/commit/?id=107eeef8f2a9 (link may not be stable)
[2/2] eth: replace ethaddr_to_string() with %pM
      https://git.pengutronix.de/cgit/barebox/commit/?id=96a5f863fbda (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



