Delivery-date: Tue, 30 Jan 2024 10:58:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUkt8-00Bm5K-1K
	for lore@lore.pengutronix.de;
	Tue, 30 Jan 2024 10:58:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUkt9-0004R0-4q
	for lore@pengutronix.de; Tue, 30 Jan 2024 10:58:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C2SAHsxatC6czHSsb65dRRVHATFHq5bGct8ljoLCu1U=; b=bAk6bj6hFv9Jt4LJdY4Gkp+AZX
	YlcVPgZroZQgX7iw/OtWfPOruE1Z0LEujNNEFMJB43HALvJowZuB/RNwMWpAvSGaue0VeYcI94+34
	Sa8kxW/fVQ3MNnhP68gHglhtzuQb18Lv73xowzBJ6ciUXGYU9w5wCrDTaMJKKBlQlBSSnZ04PeRzF
	HLDAEHNQKtgXPjbOcZS96IayW6BfQdGSFrSP1Nt2et60wcTDw5dN9zn09dL7rU1MqxfZgjh/6nQiI
	EWgKaGLfIMNQZ08FC3gZrqviqcmQOOVRqH18GghMad4m2ii7L0SoghECP0szD8flcYWJR3tR2+/Cx
	MHgszqrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUksk-0000000G4J7-0DHE;
	Tue, 30 Jan 2024 09:58:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUksf-0000000G4Fx-0jzY
	for barebox@lists.infradead.org;
	Tue, 30 Jan 2024 09:58:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rUksd-0004Lo-S5; Tue, 30 Jan 2024 10:58:11 +0100
Message-ID: <3cdce96d-c90e-4d68-afda-b798957c8680@pengutronix.de>
Date: Tue, 30 Jan 2024 10:58:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_015813_362783_E780868F 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: barebox at FOSDEM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Myself, Jules and some Pengutronix developers you may have seen around
the mailing list will be at FOSDEM, this weekend.

If you like to meet up, ping me (a3f) on IRC. I'll also be around the
coreboot Stand and will try to leave some barebox stickers there. :-)

Cheers,
Ahmad
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


