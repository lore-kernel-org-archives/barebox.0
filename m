Delivery-date: Tue, 30 Jul 2024 10:16:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi1b-004P27-1t
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:16:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi1b-0004p1-12
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:16:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9O4jSalWuNr0txjuw+dFsCpV3lb8+sSwvlxl5GK6IlA=; b=0O1pz2qMuocUd5I3PN37TuMJNp
	sVOpVR5pV1ugJF/TW3KiCIHMoufIOFdKFdIIDwg3mkDfB1Ot/BgGc8Mqot4srRl20rzjRUjHrqbHj
	buX61KRG3RUSPH/f5NRk3IDfM8Jzgrxi5xmXRW/DM8Tjt94TGLyJH7hAc3juv8mMhsFCJp7DqaIby
	DdAR8h+RTy03MG2Av7N+Lb/yP5DHSl1iyUKVVNYvtvjQM6f4EPKU9ViVtzsZtKYi58wf2bvduldwA
	Jwv9pTvhrg0uCtvy68OZq4hzvDQJ4huQV8RC2zUEinsYWSUcHQJds3vzIU0BeIMjxIdvRvXLIxtmy
	Xcp1AG+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi19-0000000ECfY-3puy;
	Tue, 30 Jul 2024 08:15:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi16-0000000ECf8-2ZKl
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:15:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi15-0004lM-82; Tue, 30 Jul 2024 10:15:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi14-003Exh-RJ; Tue, 30 Jul 2024 10:15:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi14-004jF2-2W;
	Tue, 30 Jul 2024 10:15:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240724094702.876140-1-a.fatoum@pengutronix.de>
References: <20240724094702.876140-1-a.fatoum@pengutronix.de>
Message-Id: <172232733077.1126986.16646358981698073348.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 10:15:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_011532_681601_B27163D1 
X-CRM114-Status: UNSURE (   8.47  )
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
Subject: Re: [PATCH] rsa: fix deleting RSA keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jul 2024 11:47:02 +0200, Ahmad Fatoum wrote:
> RSA keys are appended onto rsa_keys with rsa_key_add, so it makes sense
> that rsa_key_free would remove them from the key ring's linked list.
> 
> It's possible to have "standalone" RSA keys outside the key ring, but
> those would be global variables which can't be freed anyway.
> 
> There are no current users of this function.
> 
> [...]

Applied, thanks!

[1/1] rsa: fix deleting RSA keys
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc4c86c95893 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



