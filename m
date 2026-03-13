Delivery-date: Fri, 13 Mar 2026 15:39:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13g1-000Esp-12
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:39:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13g0-00071n-PT
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:39:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0nRPquUyd1sc2stU2TFIrelHLO4fwRbUQTmaLPFG9SY=; b=eYEe+PrRRzMKHLYcy9lqNH83DM
	KLShz8zAueroRwGIFBGEeRyZZ/SDTEHOB5ERSkzbIkFGF87mZECiNMuJ2BlGLMUGoUA/ti9rILZ1O
	iUlBwnxDHrFakuSecAIWCmWn8i4+qF0mz3v4CTRuuZvf7C9ak3c9UHZwPvsVNORufKLNozOcFMwVo
	UrEClwHqSSmRQxKeFmKAjaxW0PLkARyFwTA4IMf/wLbjnhZ+nmfa7lTuEfwKKAqXEeVuaemVT7oF7
	lO4bkqzgqm1QrVkz2v+uE1OPgAQMkrYtU/4nj8+3GdNu/g3FmqfIc3OTHn+Ek5C9lMZeZMfuPLTDy
	q5AIbjCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13fW-00000000PO8-0PTd;
	Fri, 13 Mar 2026 14:39:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13fT-00000000PMF-34Nv
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:39:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13fS-0006ty-39; Fri, 13 Mar 2026 15:39:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13fR-00061S-2v;
	Fri, 13 Mar 2026 15:39:09 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13fR-000000010LI-3YHP;
	Fri, 13 Mar 2026 15:39:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
References: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
Message-Id: <177341274984.239625.4860842569916840828.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 15:39:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_073911_774185_45549364 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] arm: socfpga: mailbox_s10: cleanup and error
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Mar 2026 12:06:38 +0100, Michael Tretter wrote:
> On Agilex 5, barebox uses the mailbox_s10 to gain access to the QSPI
> flash. Depending on the system configuration, the SDM may deny this
> access. barebox assumes that the access always works and surprisingly
> fails, if this isn't the case. Add at least some error messages for this
> situation.
> 
> While at it, cleanup the code to make it more readable and easier to
> follow.
> 
> [...]

Applied, thanks!

[1/4] arm: socfpga: mailbox_s10: make retry logic more visible
      https://git.pengutronix.de/cgit/barebox/commit/?id=c3920dcbc08a (link may not be stable)
[2/4] arm: socfpga: mailbox_s10: cleanup send command
      https://git.pengutronix.de/cgit/barebox/commit/?id=946b13cc5561 (link may not be stable)
[3/4] arm: socfpga: mailbox_s10: add error messages for QSPI
      https://git.pengutronix.de/cgit/barebox/commit/?id=af333e386455 (link may not be stable)
[4/4] arm: socfpga: mailbox_s10: handle error 0x8f explicitly
      https://git.pengutronix.de/cgit/barebox/commit/?id=547859d6d325 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



