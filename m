Delivery-date: Wed, 18 Mar 2026 15:55:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2sJE-002EoX-2U
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 15:55:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2sJE-0005Ih-8X
	for lore@pengutronix.de; Wed, 18 Mar 2026 15:55:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=czlseARRrk4vIY/mSsO082c5EDVW9xVT0EFgYKP1aHg=; b=43xDnBt//a2TLh6/hkYyLObrQr
	VCKzIo46k3us7U/qL3fvgkzYzqHJI4ibPDFyGTiStZHDscvUA3dDAdrSfr55xVfHFL8vWe4XaayAF
	khenTXaeluvp7IyTCUW2S6zPLHMUB5EGXpCZLrsvY7g+jMw+zgZhdI0yGFdLVNYu1pMS3aG4RWFrr
	SdbwLmdcZ7mLYTpvmdiIEw8Vnrc76wD9ZfBd03MrjNy7BP/YjaFmRahi7rCMj0o/5m400UpmFTNwv
	v5LsGvs1PCIUhdE3XHgLtkID0zGxbIlXO/waV27Ip8WjRdsE/4m8vQMNFWtGxfvdZBlTwqO5g51Bk
	7ynVIFgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sIp-00000008dbH-0hO8;
	Wed, 18 Mar 2026 14:55:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sIn-00000008da3-0mnW
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 14:55:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2sIl-0005C0-Bz; Wed, 18 Mar 2026 15:55:15 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2sIl-000vPH-0Z;
	Wed, 18 Mar 2026 15:55:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2sIl-00000009Avp-0LSk;
	Wed, 18 Mar 2026 15:55:15 +0100
Date: Wed, 18 Mar 2026 15:55:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <abq80-X7w9qQgooP@pengutronix.de>
References: <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
 <abkZpI9KA1Q2A7VL@pengutronix.de>
 <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
 <57f1a773-8ead-486d-88a3-415d96966918@pengutronix.de>
 <e0c8e7e3-13d2-4f1d-a2f2-47e5d94c25cb@clermont.in2p3.fr>
 <9c45c9dd-757f-4a13-8b6d-34eccab8fc5b@pengutronix.de>
 <1f36feab-574b-4dc5-9a2d-4eb1da213d6f@clermont.in2p3.fr>
 <abpbuoyzwbrFOZkd@pengutronix.de>
 <2b87f519-866d-4db2-925f-8a828a4f450b@clermont.in2p3.fr>
 <121dc773-a7f4-4d8d-851f-0ff10dc3c8c8@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <121dc773-a7f4-4d8d-851f-0ff10dc3c8c8@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_075517_247676_51172F83 
X-CRM114-Status: GOOD (  14.49  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 18, 2026 at 03:12:23PM +0100, David Picard wrote:
> Did it help? I can make more tests.

Thanks, yes it helps.

The patch you tested basically is the same as I reverted, modulo the
debug prints. So indeed the original patch seems to work. My assumption
is that you didn't have Ahmads fix applied which is on current master
now.

So I am going to re-apply this patch. Please let me know if something
still breaks.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


