Delivery-date: Thu, 29 Feb 2024 09:40:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbxc-00F7YH-04
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 09:40:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbxb-0001Iz-Fp
	for lore@pengutronix.de; Thu, 29 Feb 2024 09:40:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dx6eynGSqWBn0Y3gtWkhhZXlrLlhX3PT/c+yyZVtq+w=; b=ohy2XnNThxNUJl6WUNRTzi3/cX
	zlVyq2fs3VUXc1bMTh8NiT6owX7hrWsAeS+fjZIpfo+jVVpS75UDNCek9TEXAC364DOrmkERJJAjv
	P3Jw8es2Bo20Hz/YcQSIBlWtMmWykwkc+qcN6FQRr76GxOtxtXhNuC4XAztXdpDDIN3YGnySj+F4S
	XYzWd9zN4JykLF98+2zEZAajSbAuBYzSRdaYaYXpYq6RSFu9XD6BpnYW2TZ3G5xfOFA0H2/jn0pOY
	Rhft7ZPuLZZuAFLhk/VGZVBQM+AEXCTmigHsQFG6cll0hyxqJFPEXY7L0gA+2RnMGNY3uZhdsySj9
	hrbt68gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbxC-0000000Chfc-3qY7;
	Thu, 29 Feb 2024 08:39:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbx9-0000000CheO-0tSS
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 08:39:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbx7-0001Bm-W4; Thu, 29 Feb 2024 09:39:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbx7-003YKl-Jn; Thu, 29 Feb 2024 09:39:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbx7-008a8B-1m;
	Thu, 29 Feb 2024 09:39:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240205125301.2465254-1-s.hauer@pengutronix.de>
References: <20240205125301.2465254-1-s.hauer@pengutronix.de>
Message-Id: <170919598154.2045141.10077481765618320622.b4-ty@pengutronix.de>
Date: Thu, 29 Feb 2024 09:39:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_003943_322348_75FEFF8B 
X-CRM114-Status: UNSURE (   9.69  )
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
Subject: Re: [PATCH] ARM: i.MX93: tqm93xx: add PMIC node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Feb 2024 13:53:01 +0100, Sascha Hauer wrote:
> The PMIC is needs to be configured on the tqm93xx to properly reset the
> board, see the board specific initialisation code. We had a PMIC node
> in our downstream dts file which we dropped in favour for using the
> upstream dts. The upstream dts doesn't have a PMIC node yet, so add it
> again. We do not need the regulator subnodes though, as barebox doesn't
> support them anyway.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX93: tqm93xx: add PMIC node
      https://git.pengutronix.de/cgit/barebox/commit/?id=4fd77ee0cc1a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



