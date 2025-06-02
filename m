Delivery-date: Mon, 02 Jun 2025 14:39:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4SJ-002xgJ-1W
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:39:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4SI-00074q-Ty
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:39:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h7XnI+FuwgeR6bIKogH7cungYoLcI/x5hkkvlMNuA0Y=; b=gUmGlyLEIr8vHJ3CemSPClDjFv
	QNLk7H10dRhHM4bgE0jFUMyuPaagV/hK8aV6vbOv+S917UlwuaVDMLljuMWdXDUACVx2757LJ08Ev
	r3Q6nBXvUBtkKSMYuDbtHrVAsOVZf1M+GMNclFmBuPyF9M5PH+uvTpg0PIvrLYGBVcKloBfdTBwf/
	WV9ehcO1+vHxwsrWRTzxbcX3p2lwt3wBzCH52kSf2miPgONrHcRtlf4vVUcz0nZnECf0YZGpj/SS5
	sF0oTJTh34fNJXIm4oXJ95GC7DkMO9jfTzVF59gusxsieibrBepg+fT7Pj9Bvw0AHURwa19KKI6Vl
	vWrsztJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4Rt-00000007NgX-207v;
	Mon, 02 Jun 2025 12:39:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4Rr-00000007NgE-0Bs8
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:39:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Rp-0006t4-LH; Mon, 02 Jun 2025 14:39:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Rp-001SOe-1W;
	Mon, 02 Jun 2025 14:39:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Rp-00592r-1I;
	Mon, 02 Jun 2025 14:39:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250526141914.185212-1-a.fatoum@barebox.org>
References: <20250526141914.185212-1-a.fatoum@barebox.org>
Message-Id: <174886796539.1226235.15908695483279072760.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 14:39:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_053927_089665_C7B4FF6D 
X-CRM114-Status: UNSURE (   7.93  )
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
Subject: Re: [PATCH v2 0/6] resource: record memory type/attrs on all SDRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 May 2025 16:19:08 +0200, Ahmad Fatoum wrote:
> When running as EFI loader, barebox is expected to provide a virtual
> memory map that describes the memory regions known to barebox as well as
> attributes like whether regions are write-back cached (usable as normal
> memory) or reserved (e.g., for OP-TEE).
> 
> >From a security point of view, it's useful to have this information
> always to inform MMU attributes, so let's make it mandatory.
> 
> [...]

Applied, thanks!

[1/6] memory: export inside_barebox_area
      https://git.pengutronix.de/cgit/barebox/commit/?id=09858b9501a4 (link may not be stable)
[2/6] resource: record EFI memory type and attributes
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb701099eaa2 (link may not be stable)
[3/6] resource: add MEMATTRS_ definitions for common attribute sets
      https://git.pengutronix.de/cgit/barebox/commit/?id=4b4b3b71dcac (link may not be stable)
[4/6] drivers: tee: optee: separate local variables for each resource
      https://git.pengutronix.de/cgit/barebox/commit/?id=79659c054b9b (link may not be stable)
[5/6] resource: supply memory type/attrs on all SDRAM requests
      https://git.pengutronix.de/cgit/barebox/commit/?id=9e1064bc1be4 (link may not be stable)
[6/6] resource: retire IORESOURCE_BUSY in favor of resource::type
      https://git.pengutronix.de/cgit/barebox/commit/?id=28118887406f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



