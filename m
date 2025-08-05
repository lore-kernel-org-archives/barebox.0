Delivery-date: Tue, 05 Aug 2025 11:34:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3u-007FSl-2t
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3u-0003Ix-2t
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sPFT3icz4esAuenN0OENjw7NQtzw1V6kbEa2lpnHskE=; b=ZvsfTzoTGbuLuiBKrw3brhhPHq
	DA5SSzY7+DbyVJpcO1ixfYN1M21TmbgGiU1Z0bLSmJn4UVX0l+M6bJuukC9hvzmsd2BYOxEFyGq2e
	fvvzaAMMwfaIMD4N9lXcrjHEuOeL5cmjsridApSZXYvxKEMJ8yZeTrnjAmBcDSaTX5gXYFzklSsmx
	gMkYrBmZZMEm/osMqtoUhBVdkKeT6v85uwHGfMstSv0+OdDsv/qChWOP9Oom1d8YrTJZpf6sFQyLp
	wNwAcdoeYPwnhe8bkgjz+tpINwbp3nOSZLIu75zIQtfB5pX6OlTGpol8eVu6B4hO+24LKBpQOvPV0
	jXeziOyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3A-0000000CMda-3XN8;
	Tue, 05 Aug 2025 09:33:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDg2-0000000CJhJ-21z8
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:09:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDg1-0000E5-4L; Tue, 05 Aug 2025 11:09:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDg0-00C17A-33;
	Tue, 05 Aug 2025 11:09:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDg0-00Ei7l-2s;
	Tue, 05 Aug 2025 11:09:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250716062738.2534887-1-a.fatoum@barebox.org>
References: <20250716062738.2534887-1-a.fatoum@barebox.org>
Message-Id: <175438498488.3506168.1377034548181694653.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:09:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_020946_527542_90B51AB8 
X-CRM114-Status: UNSURE (   7.60  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: drop ineffectual variable assignments in
 Makefile.dtbs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 16 Jul 2025 08:27:38 +0200, Ahmad Fatoum wrote:
> We don't define, multi-search or real-search, so variables using them
> are always empty. So drop them to avoid confusion.
> We can bring them back and fix them, when we start applying overlays
> at build time.
> 
> 

Applied, thanks!

[1/1] kbuild: drop ineffectual variable assignments in Makefile.dtbs
      https://git.pengutronix.de/cgit/barebox/commit/?id=70b6d1676051 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



