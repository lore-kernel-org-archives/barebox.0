Delivery-date: Tue, 07 Oct 2025 13:59:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66M7-005EkT-01
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 13:59:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66M6-0001i8-Go
	for lore@pengutronix.de; Tue, 07 Oct 2025 13:59:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hr35tGibjN9+GsqQbEOfs1v8mOwUJV/QKHmh0khvxd4=; b=ufEx0yFnLg1Mga6wPdLq1i4wvC
	pPLOOLOnHnH+wnGYbzXy7RQs/xy2wkPYOjoYUI5bFXsXEst5+X6UdbIZSJEziYz3KqG4Gv7V+RoGh
	T8p1Eh5U8QEu/NAbohQxSOBMQhBzCS9Ofw2UAttU2Q7agrjsmDzTxmQDTrs8PY2KbChQb3VU4Uyqy
	/5r9No8t1e9mbe/+wI1V5tFXjhTEOfXjQ2xwwbcPhcI7GxQJFm6iqxL7WI4NvP6rSRxAWkeOwyII4
	82ovLAaMrSGYshYAjD+0zzRu+FJAxZvyBvHNLpjWMxdshDwt/S4h5CkyktDnwm5I4iByXqr4hxxCc
	Shom/rUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66Lg-00000001wG8-17Km;
	Tue, 07 Oct 2025 11:59:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66Le-00000001wEe-1qLf
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 11:59:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66Lc-0001ZZ-Vu; Tue, 07 Oct 2025 13:59:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66Lc-002OVV-2a;
	Tue, 07 Oct 2025 13:59:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66Lc-00000004Dzz-353Z;
	Tue, 07 Oct 2025 13:59:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251007090055.952224-1-s.hauer@pengutronix.de>
References: <20251007090055.952224-1-s.hauer@pengutronix.de>
Message-Id: <175983835672.1007112.10606544347266968625.b4-ty@pengutronix.de>
Date: Tue, 07 Oct 2025 13:59:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_045918_486597_16DAC990 
X-CRM114-Status: UNSURE (   6.31  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: am62lx: add SD reboot mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Oct 2025 11:00:55 +0200, Sascha Hauer wrote:
> Add reboot mode for the two SD card modes. sd-fs will reboot from SD
> card in filesystem mode, sd-raw will reboot from SD card in raw mode.
> 
> 

Applied, thanks!

[1/1] ARM: dts: am62lx: add SD reboot mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=f60edb2a204b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



