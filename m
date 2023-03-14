Delivery-date: Tue, 14 Mar 2023 09:07:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbzgf-00CUQ6-Cd
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 09:07:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbzgf-0002gx-0J
	for lore@pengutronix.de; Tue, 14 Mar 2023 09:07:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FQSbgJWQpaW3fDsL2wB24IR2i6pyMwtFcN1kW3pO5ow=; b=pi+IEPGYCQl8vM5Ahh+uaOTDRI
	41U1R3GvsRduBximE9EWeSsHyRm+1WGPbNdwqFpCfkC9IKfnkVNclWu4WilZjsHR4deTwDmYvcljg
	7sWAICzYDOEzTlA+JWv5RYajd4FoxZr4hxHTldknUpnkbBs0MMP/0T+mybwdimPkIlQRFFSP96QSN
	bby6cGdx5zVt/At1l9RfJFCGCYkr2LIkO3O0fyjHzTGstkV0H+TqEimaU5z1DTbwE88FjNti0DIdx
	QgqzGxwh5WVeG+GIpLFnoSnzpe9XI5uZtY540JZPS+p9PkejHv7RsontmFTbouLxVoZRxNYVnGcNb
	HOhXOCYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbzew-009RPV-Pr; Tue, 14 Mar 2023 08:05:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbzer-009RNB-7d
	for barebox@lists.infradead.org; Tue, 14 Mar 2023 08:05:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pbzek-0002Qk-RX; Tue, 14 Mar 2023 09:05:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pbzek-0003ul-EY; Tue, 14 Mar 2023 09:05:14 +0100
Date: Tue, 14 Mar 2023 09:05:14 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>
Message-ID: <20230314080514.GD7446@pengutronix.de>
References: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_010521_291751_DE3C566C 
X-CRM114-Status: GOOD (  18.47  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/3] boards: qemu-virt: support passing in FIT public
 key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 13, 2023 at 03:42:17PM +0100, Ahmad Fatoum wrote:
> FIT public key is usually passed in via board DT. Usual way to use
> barebox with QEMU Virt however is to use DT supplied by Qemu and apply
> overlay to it. mkimage doesn't generate overlay DTB though. To make
> barbebox Qemu Virt behave like other boards, let's define a dummy DT
> that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
> barebox live device tree.
> 
> This replaces v2 of the series available in next and fixes the
> regressions I introduced for deep-probe systems that ensure probe in
> other devices.
> 
> I dropped Jan's Tested-by, because the differences warrant it, but
> I tested locally that a RSA key was registered as before.
> 
> v2 was here:
> https://lore.barebox.org/barebox/20230210165353.3601175-1-a.fatoum@pengutronix.de/
> 
> v2 -> v3:
>   - drop "support of_ensure_probed for top-level machine device"
>   - switch from board driver back to initcall
> 
> v1 -> v2:
>   - support of_ensure_probed for top-level machine device
>   - ensure qemu board driver is probed at postcore
> 
> Ahmad Fatoum (3):
>   boards: qemu-virt: apply overlay at postcore_initcall level
>   boards: qemu-virt: compile overlay as such
>   boards: qemu-virt: support passing in FIT public key

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


