Delivery-date: Mon, 13 Apr 2026 16:50:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIc2-00Bkcu-17
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:50:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIc1-0001tO-Qn
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:50:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZT/iIzCIQUXSZ6iyKG1qk2yRBfhNb05+JSh+hfIX5cg=; b=3Ll320nqoSGajKOQa2gsMcHtk1
	cbxl2rAAljE7IatsSqZHDADZxh8E73hNEpKQgOmRRnvwq0qtDBvWKf5lNz8027caRGDsFQuKB+uWg
	c7/sq0vb/Nwbf4Re/YuVJZDLggxpJaa5mUZ64cVp24w8XhtGTW8a2CeVdQgvLP9IYRqTDDvPxJxSZ
	Q0QyR9XweuFe+HNspsL/AVNcZFyKtasxVekf3hUAAjHMBRVW36Gw4Rd6Iusc1m64uqn5StskTBR5V
	QWMfUavoeP77I1o0/XSOoVXQAR3lGp53scszoKM7Kk1eGabb0MdsoCXkd1jU2zNRgTLCgP7cCDss1
	LvIxTvuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIbY-0000000Ftvz-0CA9;
	Mon, 13 Apr 2026 14:49:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIbV-0000000Ftvh-0zeP
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:49:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIbT-0001oX-C3; Mon, 13 Apr 2026 16:49:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIbT-005BmH-0b;
	Mon, 13 Apr 2026 16:49:31 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIbT-0000000F0AR-0X2I;
	Mon, 13 Apr 2026 16:49:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260323085851.4073528-1-a.fatoum@barebox.org>
References: <20260323085851.4073528-1-a.fatoum@barebox.org>
Message-Id: <177609177112.3575234.16449777010919943918.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 16:49:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_074933_275523_1DD33C96 
X-CRM114-Status: UNSURE (   4.79  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ci: pytest: test against Debian 13.4.0 image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Mar 2026 09:58:51 +0100, Ahmad Fatoum wrote:
> The Debian 13.3.0 CDROM ISO is no longer available, bump the minor revision
> as a minimal fix to get CI going again.
> 
> 

Applied, thanks!

[1/1] ci: pytest: test against Debian 13.4.0 image
      https://git.pengutronix.de/cgit/barebox/commit/?id=ffb80d3ea433 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



