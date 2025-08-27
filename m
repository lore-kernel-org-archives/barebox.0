Delivery-date: Wed, 27 Aug 2025 10:51:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urBsS-0051iQ-0E
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 10:51:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urBsQ-00030L-Un
	for lore@pengutronix.de; Wed, 27 Aug 2025 10:51:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q/ymDBhl8AsI1sJitYj6MpdMXckOSiG1MVFeUbbpDYY=; b=koLzTzccIZ3H4hX9PpZQCGjZjG
	zH5mIygNlllx09iszVsgqk+EdoKZOfwN5vw1ORIPRXz7mjTI6R+NaQ9EUvJ6UHRnrQEC0riYQv4Sk
	IBcPsKI4dRYHpLku/3dsr+IgS/ENlkUzgM1ACXEOsF3pgKrqcYZRmFxbwdlv75DccUu36R5iBxg6U
	qB5T/dey44/Mrz/x9rJdAmU1PtRmCKNY0JohjBxTFt4X15zBpsp1FOFn00Ks/CWiHYb4uYQyvug7U
	ydzi3c0QlkjoBj2SOqsyRT5Z3Y4zXwd9RjyMbybc6eEeM+/aKvlXbMNoJZmoXEjZMH0qLCpvUeJdy
	3sEw+qyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urBrf-0000000Ek5z-09ig;
	Wed, 27 Aug 2025 08:50:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urBrc-0000000Ek4w-0gu7
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 08:50:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urBrZ-0002lp-3V; Wed, 27 Aug 2025 10:50:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urBrY-002Mjw-2X;
	Wed, 27 Aug 2025 10:50:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urBrY-00000001sNR-2zd7;
	Wed, 27 Aug 2025 10:50:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250826190950.3648779-1-chalianis1@gmail.com>
References: <20250826190950.3648779-1-chalianis1@gmail.com>
Message-Id: <175628463670.447281.6033648401945995432.b4-ty@pengutronix.de>
Date: Wed, 27 Aug 2025 10:50:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_015040_211158_C1D67ED6 
X-CRM114-Status: UNSURE (   5.12  )
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
Subject: Re: [PATCH] arm: configs: raspberry-pi: add support for fit image.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 Aug 2025 15:09:50 -0400, chalianis1@gmail.com wrote:
> 


Applied, thanks!

[1/1] arm: configs: raspberry-pi: add support for fit image.
      https://git.pengutronix.de/cgit/barebox/commit/?id=4de93a76bd0c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



