Delivery-date: Tue, 25 Mar 2025 14:54:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx4jv-00429a-0z
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 14:54:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx4ju-00054c-6w
	for lore@pengutronix.de; Tue, 25 Mar 2025 14:54:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bjbWoUqnwCA9h8ECvMTbdqYn986BKFxpjMoJjSpFEoo=; b=xYH0c4hZJsH7CPchPAVbjkQ021
	EF2rmmDHdX/20BR9kXtRguh85nRqVvpq6knEzSuYr5Unr7XCQIl0ARD4kpa/pMTxkqxhd+kdDhfW6
	bNqLgscw98V/Cr4LAV6zSpwTLIWJA14+LTHS0s651qd3AiOiAnpFTlRZwJy2PICdAgi8fj2ykLBz6
	TwCfjbvKmdZonePGc6vbH3HD4vGuILw42OrDtddsStSTjpMag12mIUmJIUbSoFOB3XqkmsaVcJVYq
	Yu9VSf0zs55H6rBVIpvHCFONrx1WbuBfmXNJKVGcOYDOGc82qOEykV7+Syaoyqy3JjbBkNNVq35T0
	1GFJuSrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx4jO-0000000676r-0bSr;
	Tue, 25 Mar 2025 13:54:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx4bx-0000000651u-3MQG
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 13:46:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tx4bv-0003Nr-70; Tue, 25 Mar 2025 14:46:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tx4bu-001ad7-1p;
	Tue, 25 Mar 2025 14:46:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tx4bu-00DUIe-2w;
	Tue, 25 Mar 2025 14:46:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250325115226.1692-1-jmaselbas@zdiv.net>
References: <20250314213344.12335-1-jmaselbas@zdiv.net>
 <20250325115226.1692-1-jmaselbas@zdiv.net>
Message-Id: <174291039090.3214606.1209486625604602351.b4-ty@pengutronix.de>
Date: Tue, 25 Mar 2025 14:46:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_064633_866086_46A828B7 
X-CRM114-Status: UNSURE (   7.57  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: hwclock: rework argument handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 25 Mar 2025 12:52:26 +0100, Jules Maselbas wrote:
> The rtc_name doesn't need to be an array, thus the argument doesn't
> have to be copied, we can simply use a pointer on optarg.
> Drop the array and the string copy.
> 
> 

Applied, thanks!

[1/1] commands: hwclock: rework argument handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=8c796cc0e810 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



