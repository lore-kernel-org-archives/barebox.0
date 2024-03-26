Delivery-date: Tue, 26 Mar 2024 11:21:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3vc-0052hN-0Q
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:21:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3vb-0006N3-Js
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:21:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oPRaub7REIER4k7gASp70PunB9YwBI+mrkxAmTUKc30=; b=pr8IuZ/5jwErrE1vHLG1NtnZ23
	SWhO5Fhzunx4Py0YZ5E6jbvck8GMfj8X3VQXtRcjZMykEHxbHeaSPf73A0t/ndWOduJ5jGE50Hsji
	FtJjfsQVSiFPARtSpDMWEd23yNCGMPEzjUyqhQXK9e4kFAWYTdLukxi//TPY0yWLjsyBBgotPV6ux
	prtcBbDirDC2eqm8t6KKEEAcbx5OVFqGWmJiTohLLIJ3Lq7mNA5Y4dRtRcaPQ2Z3iz7JROs4SKq9p
	OaeHfvWzhBYFUmokqjkb5LinlCoM8mCmk62TtdulPpJXr5vXy/n8gXElcLusWUaYz9TmDUwYQXjYj
	f2oEvOyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3v1-000000041VT-1rjw;
	Tue, 26 Mar 2024 10:20:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3uw-000000041SF-3wNZ
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:20:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3uu-000698-Mo; Tue, 26 Mar 2024 11:20:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3uu-008b2p-AP; Tue, 26 Mar 2024 11:20:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3uu-0022y0-0q;
	Tue, 26 Mar 2024 11:20:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
In-Reply-To: <20240326064551.148669-1-r.czerwinski@pengutronix.de>
References: <20240326064551.148669-1-r.czerwinski@pengutronix.de>
Message-Id: <171144842825.488047.7003540899030066085.b4-ty@pengutronix.de>
Date: Tue, 26 Mar 2024 11:20:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_032031_121309_1BC5478D 
X-CRM114-Status: UNSURE (   6.46  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: mci-core: make devinfo hex values obvious
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 Mar 2024 07:45:51 +0100, Rouven Czerwinski wrote:
> The Manufacturer and OEM/Application ID are printed as hex values, but
> don't have a leading zero to designate them as hex to a human reader.
> Add the leading 0x to make it obvious that these are hex values.
> 
> 

Applied, thanks!

[1/1] mci: mci-core: make devinfo hex values obvious
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d86a97266d1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



