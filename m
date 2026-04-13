Delivery-date: Mon, 13 Apr 2026 16:26:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIEs-00BkIv-0p
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:26:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIEr-0007k8-O9
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:26:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=64TMOirw0pwAHkr8v1a1sIKxB3AzTEQqp9oDEEORXX0=; b=UqVBlOBxGDbfz0ru3HMWQQA5cW
	+WQJSxSNiB35kzMP4oVxm4taMZzsxyhrWL1sWChIDWJQWmhb0megsgvEXsCqPmgOncA+2hjxvJc0r
	WVhox1H10yVkH5GyzI9rthGgUZbF64lUvx1U6soGBoqUIitgBhpJRolOvvcv8gC16IdesWMf8uloi
	FacvEF5+vr21qQ1VNZvPIqF/4LREvn2hGOVqIBe1prHiCPnuJc9W0OuN8Awg3iiL/40aG240E2dIf
	SL7cFFSI5B12WybiAiWQ+TXQv8LQtAxALMxoSGnD6LHR+sENGA0Ej9Og+XjAJq5RAZbNHk8+OjoKf
	Ez8nf1JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIEU-0000000FrgB-1hN6;
	Mon, 13 Apr 2026 14:25:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIER-0000000Frfn-49Ly
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:25:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCIEO-0007eU-Vp; Mon, 13 Apr 2026 16:25:40 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCIEO-005Bet-23;
	Mon, 13 Apr 2026 16:25:40 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCIEO-00000007Vp2-2HZH;
	Mon, 13 Apr 2026 16:25:40 +0200
Date: Mon, 13 Apr 2026 16:25:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <adz85DvbPgTjHZK1@pengutronix.de>
References: <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
 <57f1a773-8ead-486d-88a3-415d96966918@pengutronix.de>
 <e0c8e7e3-13d2-4f1d-a2f2-47e5d94c25cb@clermont.in2p3.fr>
 <9c45c9dd-757f-4a13-8b6d-34eccab8fc5b@pengutronix.de>
 <1f36feab-574b-4dc5-9a2d-4eb1da213d6f@clermont.in2p3.fr>
 <abpbuoyzwbrFOZkd@pengutronix.de>
 <2b87f519-866d-4db2-925f-8a828a4f450b@clermont.in2p3.fr>
 <121dc773-a7f4-4d8d-851f-0ff10dc3c8c8@clermont.in2p3.fr>
 <abq80-X7w9qQgooP@pengutronix.de>
 <aa77c7f5-0039-43a6-9d3f-2cbb59406bc6@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa77c7f5-0039-43a6-9d3f-2cbb59406bc6@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_072544_049944_F609C86D 
X-CRM114-Status: GOOD (  15.17  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 23, 2026 at 02:22:05PM +0100, David Picard wrote:
> Hi,
> 
> I just tested today's master (0933e8f2ebf0d91dfcf177a4e4292b02921a53f1) with
> your patch applied, and it works.
> 
> I did checked the timestamp, this time...
> barebox 2026.03.0 #1 Mon Mar 23 14:07:47 CET 2026

Great, thanks for testing.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


