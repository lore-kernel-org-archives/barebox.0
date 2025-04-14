Delivery-date: Mon, 14 Apr 2025 13:06:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeK-000cBn-1y
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:06:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeK-0008Oo-2f
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:06:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+/WH2UJwzsRqbD/jv3nHutWPo/q4uSAS6qOUp/6XUaY=; b=DeP0mpjB8xGmgFFOgwUgiTXO1I
	f57now8q0cFiX0iDU2ornLnPtayZoZtz8U/3zSgwqOh5J5pKrEeDu4tuOimM0p9RmT91g/Zqli7ej
	Lp06klxLIWAhQVuOmKaoQ2XTRiJ5Vbb2xk9I72YKDbt1uE9ySBGfMty9HLp+ndPflCKlv4E4GeXaO
	1KCAaoeSz9euU9MO8qHaNdkOFADO2ULUU5eZzbPUIiGnCSi56++hQFWqzjphJVCIaxJWjnBBmp473
	5EcXQUSEZwM914ePeIIZ7+4mjS6xfgdYgTz1MaB1QRaXk3SzDLGzYeEuAkoZ2XwGa+0juPvGksHJg
	v3BmWilg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hdv-00000001f3v-1Dl6;
	Mon, 14 Apr 2025 11:06:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HM7-00000001bg3-3QY9
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:48:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4HM6-0001WQ-9e; Mon, 14 Apr 2025 12:47:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4HM6-000Eex-0J;
	Mon, 14 Apr 2025 12:47:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4HM6-00FgLw-06;
	Mon, 14 Apr 2025 12:47:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414062622.2733364-1-a.fatoum@pengutronix.de>
References: <20250414062622.2733364-1-a.fatoum@pengutronix.de>
Message-Id: <174462767802.3737671.8368962396376001196.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 12:47:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_034759_860442_E358F4F5 
X-CRM114-Status: UNSURE (   5.89  )
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
Subject: Re: [PATCH] commands: saveenv: remove outdated info about envfs
 directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 08:26:22 +0200, Ahmad Fatoum wrote:
> Directories in the environment (nv, init) are common-place, at least
> nowadays, so remove that inaccurate limitation in the help text.
> 
> 

Applied, thanks!

[1/1] commands: saveenv: remove outdated info about envfs directories
      https://git.pengutronix.de/cgit/barebox/commit/?id=3aab7fed185d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



