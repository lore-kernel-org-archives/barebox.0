Delivery-date: Tue, 22 Apr 2025 12:29:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Ase-0040yy-1Q
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:29:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Asd-0002Wz-T7
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:29:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WZbDWgSsY8oRUqufYAAtG24FyeZF/EYuKw11X5QxAtA=; b=WvCF5oY/liYnXjO6yxrOdV/DpF
	ZQgSV+4DEE/FiDZ7tNLFhp1QV449QDx2Iib/gvIVixfEZzGVskaQrIXVR6yGRZy83iGNP61YloK+/
	qpgrNxsF7IpZ0h5ms689+lBrwAj/Bz5npn643mbpiysCLPm1Avk3vS8DY72Ty88BycFxcIbxtNSRF
	+nn+sp3wauqMEs+d9gSM98iMa64/yYCwtOQZK5/Mh1cbzfrUc13P3/Mt2Tv+mWhXaiuvRBKhqE1F1
	9mbLkKKjwZg+TpB2Ti+kMYNhKAd4KEIMIQESpMRuF8ndgEGYipZFkKiAuJTYOF/lYEllrl7/WX8rS
	R+hyY5nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AsF-00000006lx3-0ZLD;
	Tue, 22 Apr 2025 10:29:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ADW-00000006byh-3IDH
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:47:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7ADV-0001Ga-Jw; Tue, 22 Apr 2025 11:47:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7ADV-001Wvg-1M;
	Tue, 22 Apr 2025 11:47:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7ADV-00Cfvb-18;
	Tue, 22 Apr 2025 11:47:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lars Schmidt <l.schmidt@pengutronix.de>
Cc: Lars Schmidt <lsc@pengutronix.de>
In-Reply-To: <20250416153008.1898565-1-l.schmidt@pengutronix.de>
References: <20250416153008.1898565-1-l.schmidt@pengutronix.de>
Message-Id: <174531522134.3021074.6075580513214521068.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:47:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_024702_823911_4F27AEF2 
X-CRM114-Status: UNSURE (   8.09  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pinctrl: at91: add sama5d3 compatible after DT
 regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 16 Apr 2025 17:30:08 +0200, Lars Schmidt wrote:
> Commit f9abec74133a6 ("ARM: dts: microchip: Remove additional compatible
> string from PIO3 pinctrl nodes") removed compatible string
> atmel,at91sam9x5-pinctrl, which was used by pinctrl driver for sama3d3 in
> barebox. Compatible string atmel,sama5d3-pinctrl was left in list, so
> that needs to be included for identification.
> 
> The removal caused an issue during boot process. The system did still boot,
> but no bootloader console was shown. Leaving the user without
> possibility to interact with the bootloader.
> 
> [...]

Applied, thanks!

[1/1] pinctrl: at91: add sama5d3 compatible after DT regression
      https://git.pengutronix.de/cgit/barebox/commit/?id=9532f37b1171 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



