Delivery-date: Thu, 23 Oct 2025 10:03:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBqHp-00AtGt-1b
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 10:03:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBqHo-0002hO-Vc
	for lore@pengutronix.de; Thu, 23 Oct 2025 10:03:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OW5wTnD29XIrRnzbhLVrw4omTv5Qyq7SXlnmyQk/ijk=; b=seKE3HwGAc0lSkc5vboTBnF8wk
	6JOToTgL0o88oWc7crpklOeYTPpSBeB5fUYMW64Kk5XYmanb92mHhbUJlBSXkWbdA3hlpFI5sur2U
	vvfiWcVTgEZt3ygcLXJ5uOMUGQj9nmcTIxsP8nP5mYFeTH6L81gYh65CdoXatSDmCihzVuQv3rzdk
	E7kRg3tc5cPliFWOmGY1pNUPWft6YfvfeeXXJ0JZXYcLZi6HmYyh1qkpNlM/Mz0133G2I88HQ0pu0
	vqhAMBPdk/5OtdNWUTCygUKwcHKf8HBpVbh55iRE0esCDJ/oUm6R6mTceUwKDZEV8S1Um4AzOpfPV
	mZvVpC6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBqHB-00000005SWX-2tZf;
	Thu, 23 Oct 2025 08:02:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBqH8-00000005SUf-28r1
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 08:02:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBqH7-0002PF-3H; Thu, 23 Oct 2025 10:02:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBqH6-0051RE-2t;
	Thu, 23 Oct 2025 10:02:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBqH6-00000004nay-3Vr8;
	Thu, 23 Oct 2025 10:02:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
References: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
Message-Id: <176120654083.1143895.11083285091786950947.b4-ty@pengutronix.de>
Date: Thu, 23 Oct 2025 10:02:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_010222_550912_8133E2B1 
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] public_keys: make const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Oct 2025 13:30:57 +0200, Sascha Hauer wrote:
> We current have a struct list_head member in struct public_key which
> prevents them from being put into the readonly data section.
> Move the list_head out of struct public_key so we can make the compiled in
> keys const. With this we can do some further cleanup by removing the key
> duplication functions.
> 
> 
> [...]

Applied, thanks!

[1/5] public-keys: ecdsa: remove list in ecdsa keys
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f357a8d26b7 (link may not be stable)
[2/5] public-keys: move list out of struct public_key
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc79e3c27d5d (link may not be stable)
[3/5] public-keys: rsa: allow struct public_key to be const
      https://git.pengutronix.de/cgit/barebox/commit/?id=0a0231bb7909 (link may not be stable)
[4/5] public-keys: rsa: remove unused functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=381f324c265f (link may not be stable)
[5/5] public-keys: make const
      https://git.pengutronix.de/cgit/barebox/commit/?id=af91031293c7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



