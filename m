Delivery-date: Mon, 02 Jun 2025 12:09:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM27B-002vE9-1j
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:09:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM27B-00005Y-19
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:09:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vUquG2ROctu31T9EVHdJRFwYTWdOKY1xXskYk1MxaSY=; b=1fPWy/LFIMjo02Hw6f4oCQapKj
	FI5CUBBRw4ZMEPcv35p2etkmGADt+4gPLzJytl53aUJushmWh1meB4t76lWw3++Atj44PWEpLrqQN
	dK8GMnhR3PQ/bCxna8jgUvYHU9XKCuMoSTyEQ0TpbsLeQIHYl0naIagGkvGfdsQTyxRPNk/1ovD9w
	gna/rMz193AArrZlOilpfXn5JyVZ/p12hQ2Azlvy/sJgXetetsdOBMHFr49TxpJcYlzVUTxXwGXpr
	N9FpmjKtk2MNADDSghLjpurtsmGUb6zbd0l9sL9EPA6RsUEgCYRoiFVWL65eGWdyiVBKHCmdenIUM
	6JlVB9Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM26j-000000079cT-0uw9;
	Mon, 02 Jun 2025 10:09:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM26g-000000079an-2d9P
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:09:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uM26e-0008Ki-UC; Mon, 02 Jun 2025 12:09:24 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uM26e-001RAp-2N;
	Mon, 02 Jun 2025 12:09:24 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uM26e-006bfv-1z;
	Mon, 02 Jun 2025 12:09:24 +0200
Date: Mon, 2 Jun 2025 12:09:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <20250602100924.djm43qzp562a3rsd@pengutronix.de>
References: <20250602095738.822334-1-a.fatoum@barebox.org>
 <20250602095738.822334-2-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250602095738.822334-2-a.fatoum@barebox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_030926_661957_BA8B4ED2 
X-CRM114-Status: UNSURE (   7.12  )
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
Subject: Re: [PATCH v2 2/5] common: deep-probe: support specifying support in
 DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-02, Ahmad Fatoum wrote:
> New boards should be deep probe enabled by default, which is currently
> done via board code. We want to support second stage boot on new boards
> without board code however, which means we need the possibility to make
> deep probe opt-out instead of opt-in.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


