Delivery-date: Mon, 25 Aug 2025 13:42:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVb7-004LbZ-0E
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 13:42:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVb5-0007tQ-Ty
	for lore@pengutronix.de; Mon, 25 Aug 2025 13:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2JSqETvF4IgaYuFIOrESNUw2tvLI7YYm9iPY9Ug+V5A=; b=HeyHNqE9iNybO4byKWj938d9yY
	BMoilQeSF6WsfCY1KdIH0lAfLP/vlM2SIKvuhJbTJizwAjP/aXlch1HM7XoxAmK9PszKX62NcnTPM
	OcvpyNsdFhuNhfNR7SemPYb/PQFh++R1eV494V7NQrJvymdORJ1mOoHMpqXCicmO/BeNkAI4Pon0A
	H8ZvMZY2xLQYi6Rf4w/n1PYCQDY8ZzCzJTm9iChnGEqcDjyv+pA4E7PE61B/iOsFyeELKOD6CuZMk
	iRrXsLqAsGOWlr5kJaU9d/FQ3lI5yUAHRaOiRG/SrQj1NZBkUsVkTDwD3WrvcIInNX3gOmYiDkCgk
	3dlk5lWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVab-00000007njV-32yS;
	Mon, 25 Aug 2025 11:42:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqUE7-00000007bsg-1HT6
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 10:15:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqUE5-0008M1-Kw; Mon, 25 Aug 2025 12:14:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqUE3-0023BE-2R;
	Mon, 25 Aug 2025 12:14:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqUE3-00000005SHe-2wiv;
	Mon, 25 Aug 2025 12:14:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
References: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
Message-Id: <175611689569.1300192.12707491024772985762.b4-ty@pengutronix.de>
Date: Mon, 25 Aug 2025 12:14:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_031459_348911_BDD7C041 
X-CRM114-Status: UNSURE (   8.40  )
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
Subject: Re: [PATCH 0/6] crypto: keys: Some work for public keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 Aug 2025 15:18:23 +0200, Sascha Hauer wrote:
> Traditionally we included public keys in form of dts snippets generated
> by U-Boot mkImage and compiled into the barebox device trees. We can now
> include public keys directly as C structs from the public key PEM files
> or PKCS#11 uris which is easier to integrate. Nevertheless the dts
> snippet way is still present which makes the configuration slightly
> confusing. Remove this old way for good to make configuration easier
> and to get rid of some maintenance burden.
> 
> [...]

Applied, thanks!

[1/6] crypto: drop BOOTM_FITIMAGE_PUBKEY
      https://git.pengutronix.de/cgit/barebox/commit/?id=57b54a237cd3 (link may not be stable)
[2/6] crypto: Allow to include development keys in build
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b703eaece79 (link may not be stable)
[3/6] crypto: include public key hashes
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd529ced8569 (link may not be stable)
[4/6] commands: add keys command
      https://git.pengutronix.de/cgit/barebox/commit/?id=281ba684a115 (link may not be stable)
[5/6] fit: consistently pass around fit_handle
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d206e48eea2 (link may not be stable)
[6/6] fit: improve diagnostics
      https://git.pengutronix.de/cgit/barebox/commit/?id=054933cbed71 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



