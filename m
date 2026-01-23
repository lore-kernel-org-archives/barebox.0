Delivery-date: Fri, 23 Jan 2026 08:15:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBOC-004P2m-0l
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:15:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBOB-0002t0-9a
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:15:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WYH7mpPSG/eggk71PKcNIs6fy11SZC9ZHBG4lir81uM=; b=ne/ho1urDHf4ACkJMt2N/0NIri
	34EAGINDpo0MMyEru/EdIzOhipmQXwIzbFR3IQHggtfudmpPply2njj7qO4xY9XrdYLeRPVij3I8o
	hDEFpSr2tD4O/jB9O92vxb0qm6KwJeNQwnLlOgwh7AEwJ1Dgzp/QkXMn1b/n/85RaQPc0Bp3cJEz6
	15/onmt3RrYCM2kVRY6CrWdWDrNCNoh+NSckQwxqzYiunfB0bV1PuQajIRMG2QVP/tNFRhMCw7Pn8
	Ra9/wSMPetzSQ8lE/TVz7qjLOLYmjGZdF0sG3Yqn33ZAvDPAaMWAslNWgroo/IrVVoO0WDRn0Qbeo
	eVsXTx2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBNi-00000008MMK-11oz;
	Fri, 23 Jan 2026 07:14:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBNf-00000008MM1-3BeN
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:14:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBNe-0002nv-24; Fri, 23 Jan 2026 08:14:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBNe-0023RC-1l;
	Fri, 23 Jan 2026 08:14:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBNd-0000000GCHN-3PAl;
	Fri, 23 Jan 2026 08:14:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: rsc@pengutronix.de
In-Reply-To: <20260119151415.2225679-1-a.fatoum@pengutronix.de>
References: <20260119151415.2225679-1-a.fatoum@pengutronix.de>
Message-Id: <176915249380.3860282.9825648379036499573.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:14:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_231455_804163_3D699BF6 
X-CRM114-Status: UNSURE (   9.06  )
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
Subject: Re: [PATCH master] arm64: rockchip: qnap-tsx33: support USB
 installer with EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Jan 2026 16:12:20 +0100, Ahmad Fatoum wrote:
> We do not do USB enumeration by default, but we should if we want to be
> able to boot off an UEFI installer image inserted via USB.
> 
> This has been tested on QNAP TS-433eU with
> debian-13.1.0-arm64-netinst.iso.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: rockchip: qnap-tsx33: support USB installer with EFI
      https://git.pengutronix.de/cgit/barebox/commit/?id=61e1bc94ca60 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



