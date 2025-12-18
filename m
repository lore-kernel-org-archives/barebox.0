Delivery-date: Thu, 18 Dec 2025 20:13:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJR1-00CwPi-0T
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 20:13:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWJR0-0000gw-G5
	for lore@pengutronix.de; Thu, 18 Dec 2025 20:13:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9YM0cK9Jb7auGH/35ezU3vj6SqftiTqRk4VLQQwHxL4=; b=wByKo8rb3SKXttanRD3ty7j8cg
	WESEC0xOEnbQyJS4ZZ9dB5O49szQetIxPDyh/w9xXcNFLXebXY1HcYYx54aOV4OPQ2szXZjS07A/1
	Du3rThV8KNwgdhdsjo80Ut8aCEFadYHzPaklkt13qsXV0PwA35DMpAACN2ZIdWW3MOpV32CdvPVT7
	f2iRB2pUWm8TTdzk7nrXeVZWaVUPCLJU44IxDqKCiG1BZqLE/TDWkIRdUUxmYKJd/Ywds20rfcODK
	EyIpro10yKlBRJUvd1bHEVnW22GjlFBRSG0W/pZLpI4V4vLvc2BeWrkh16A7eNSI6hb40ecX7jOuj
	uN+LjHrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJQN-0000000948X-3Q70;
	Thu, 18 Dec 2025 19:12:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJQK-0000000948D-2Y3U
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 19:12:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJQJ-0000Xh-2D; Thu, 18 Dec 2025 20:12:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJQI-006KwF-2p;
	Thu, 18 Dec 2025 20:12:26 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWJQI-00Ee4a-2X;
	Thu, 18 Dec 2025 20:12:26 +0100
Date: Thu, 18 Dec 2025 20:12:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20251218191226.ddn3a3frujgjmk7h@pengutronix.de>
References: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
 <20251218-v2025-11-0-topic-imx6-field-return-v1-1-3781143198d6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218-v2025-11-0-topic-imx6-field-return-v1-1-3781143198d6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_111228_663965_FF8CB1AE 
X-CRM114-Status: UNSURE (   6.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] arm: mach-imx6: use kconfig for field return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-12-18, Fabian Pflug wrote:
> There is a kConfig option for the field return, that is also documented,
		^
	    nit: Kconfig?

> so using it here instead of providing a headerfile to patch.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


