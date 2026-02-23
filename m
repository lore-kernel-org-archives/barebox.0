Delivery-date: Mon, 23 Feb 2026 12:20:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTzk-004oRi-0a
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:20:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTzk-0006pR-HS
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:20:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZRAO+ZFJFLynL51wkqtP6d5iwnzCvOWgy0wYAD2ACaQ=; b=U93frq9eFYqTWX13fhziHIfLy9
	JcD/hFgpmdY/PnkI6zzF/whp0y0NxBkmVNJhyaNT0iozglHF5D/M/JEkytpzp/BrqASessqpuKVib
	DuqwVf/WXWIZ7IXMyv7nQt2FuiacBkFzFGcTTeA62SML5CGtoLTspTs14cELIUe9sabtaRAj/t0pR
	gi6W4t8mcPmioOCb2u3MfbEDF+HKy6e/RaAxBkOprhlzWTCtvZlciXCCenRmP8Rh+VoxB/AK5ily6
	p6Y4svSl1MBZ75mgj4b0HTQ1BTTu+uDSqx7DaQKuVH2FM58VluepqyNO45/W0gc8rxphFmFpv5CTT
	HrnUpr+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTzM-00000000AAw-23fj;
	Mon, 23 Feb 2026 11:20:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTzJ-00000000AAJ-2GZz
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:20:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTzH-0006iK-86; Mon, 23 Feb 2026 12:20:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTzF-002Djo-17;
	Mon, 23 Feb 2026 12:20:26 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTzG-00000000wBX-2fDS;
	Mon, 23 Feb 2026 12:20:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260112141746.3068571-1-a.fatoum@barebox.org>
References: <20260112141746.3068571-1-a.fatoum@barebox.org>
Message-Id: <177184562663.223620.3119178404416997287.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 12:20:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_032029_681603_5E594F03 
X-CRM114-Status: UNSURE (   9.30  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 1/2] images: allow suppressing missing firmware
 stderr output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Jan 2026 15:17:39 +0100, Ahmad Fatoum wrote:
> There is a Kconfig option to turn missing firmware to an error, but
> there is no way to suppress the warning that is printed in any case.
> 
> Suppressing the warning is useful however when reproducing an issue with
> a multi_defconfig, so allow changing it to output to stdout by means of
> an environment variable.
> 
> [...]

Applied, thanks!

[1/2] images: allow suppressing missing firmware stderr output
      https://git.pengutronix.de/cgit/barebox/commit/?id=a321c57e369f (link may not be stable)
[2/2] MAKEALL: add a new develop mode option
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f73fd39f914 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



