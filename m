Delivery-date: Fri, 03 May 2024 08:52:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mm4-00GldZ-2W
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 08:52:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mm4-0004Ho-9F
	for lore@pengutronix.de; Fri, 03 May 2024 08:52:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nDRRIawQ8UcrK+U1A8T/DJCsr1xdNyoo8RWwBcEXCic=; b=O1a3yiwm8N59BoKqovGh4LVwPI
	ty4NyRZdMkuwswUTCHMclo3ncJDA1T4dV+QfDXGz0WHo7hUuCcae7gzbVupMH/ebpSbcMx7C2hk85
	xRuyNKjYFMXK3bsfL9v0v4tYRKgGEBsTCQNDmNQ5UBlDzOrDC5bwezFNjms58Hs3lGJ99fjnoRuE7
	udVn7siNuHO3z/t14Nhse4QstwLfwAP9Aw6lTdtQXBMm9rE5Nz/m3n/P33AL7z7eQMgBvNiE7G0gW
	E2xHhVp05XDdbeTF0CVJJIT6aUBrSaEozs9j0RfCMxKmPWlwIqFQxqYMGnJRNZ+rEGV95Ql7dZ5bw
	KVrPCLTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mlg-0000000FMme-29VN;
	Fri, 03 May 2024 06:51:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mlc-0000000FMll-3odK
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 06:51:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mlb-00049M-Ie; Fri, 03 May 2024 08:51:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mlb-00FefD-6L; Fri, 03 May 2024 08:51:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mlb-0003FO-0R;
	Fri, 03 May 2024 08:51:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240502151723.3964267-1-a.fatoum@pengutronix.de>
References: <20240502151723.3964267-1-a.fatoum@pengutronix.de>
Message-Id: <171471909513.12406.11160519884948572812.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 08:51:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_235137_444853_AB1D22F2 
X-CRM114-Status: UNSURE (   7.91  )
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
Subject: Re: [PATCH master] mdio_bus: return 0xFFFF when read fails with
 error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 May 2024 17:17:23 +0200, Ahmad Fatoum wrote:
> phy_read may return an error code if the underlying transport
> misbehaves, e.g. a busy and non-recoverable I2C bus.
> 
> Instead of packing the error code value into the buffer, let's just
> report 0xFFFF, which is the natural value used for unresponsive PHYs,
> due to the pull-ups.
> 
> [...]

Applied, thanks!

[1/1] mdio_bus: return 0xFFFF when read fails with error code
      https://git.pengutronix.de/cgit/barebox/commit/?id=ff36e78033e8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



