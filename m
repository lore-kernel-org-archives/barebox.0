Delivery-date: Mon, 25 Nov 2024 11:24:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWGZ-000A8z-1H
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 11:24:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWGZ-0000FQ-DK
	for lore@pengutronix.de; Mon, 25 Nov 2024 11:24:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=idM7O+xIuWzhsklchlwdOKzK5zzYc33dGHgXrW/JesI=; b=pvGP7ppu11yFlpH3Zc+vdDK3AH
	d7Pftz5juPuImpJqIn9Tk+7J6DPbZusZ/p8UhRFZDohq4aMhUM7LpEHAnbdXFdkIPzrmj5DE3R9OR
	1PltMlSNQ2M0WjjZ1sVVhRzKro5L0/YZH9oU4GRBc1Jmyv+AK8qnDtu1sIHUiWrCopBBfIm9W5UQH
	9yatGiwFJCakU+eoW92iZJaYvaT1wmDcUV1IChSUq3vkyiWLZPx/KGDTQvLknwo2R+97Zerv+NcOP
	av5/HH1Q9+tSBLLA3qFBq6NeB2d+r4Mzz9Bo2Rjfl0Pj4LGO3R1GvwEHqt/RxrmFrAkP0gOVgIMS4
	5Jsn+Aiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWGA-00000007kb5-3Iaa;
	Mon, 25 Nov 2024 10:24:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWFs-00000007kZ8-3WTa
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 10:23:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWFr-000078-O9; Mon, 25 Nov 2024 11:23:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWFq-0003z6-2X;
	Mon, 25 Nov 2024 11:23:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFWFr-000oLu-1b;
	Mon, 25 Nov 2024 11:23:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
References: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
Message-Id: <173253022349.193531.17281595892803170911.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 11:23:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_022344_877432_57405D2C 
X-CRM114-Status: UNSURE (   8.22  )
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
Subject: Re: [PATCH v4] of: fdt: fix possible overflow during parsing of
 fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Nov 2024 17:51:14 +0200, Abdelrahman Youssef wrote:
> While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
> the struct block area, causing a heap-overflow.
> 
> Since `maxlen` is an unsigned integer representing the length of name,
> It can be negative, so it overflows to large numbers, Causing strnlen()
> to overflow.
> 
> [...]

Applied, thanks!

[1/1] of: fdt: fix possible overflow during parsing of fdt
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a3cb7e6fd63 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



