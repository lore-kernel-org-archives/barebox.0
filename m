Delivery-date: Tue, 10 Jun 2025 08:43:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOshJ-005hxB-38
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 08:43:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOshJ-0001Fr-F6
	for lore@pengutronix.de; Tue, 10 Jun 2025 08:43:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mVswCv+n0C7KoD6jXkijPHqrpymHGZrdjlRlQmpWqmg=; b=wWs9yTBEVCVUEEPlbsMcBKh1hr
	nqWkmS0le6yFPtf7dmJSiHmwbTUZhpke2I3qw8WGuybTaNwivytEao5mkoJVkGC8uQF67wH2IFJOh
	iwbne8Nmn+8FLaG/KsuLdBIHeI6U42bW/6kC/XYFuCKCYw+XKWlR3vy7FrPf3YJYQik95g+FVGPIk
	2I3618P8SWR4iSCiRudx37uilHeqzg0NN6Q7q6fdkNesWMUlHdyzn8Ik+r8IRLi36HZrVo+J/5fyf
	nR7nyH3cyRo/sqLxxLzPApz80eiAQ1euYeHknN3A2q1g2UoZRmaz5jpie4K8EKRFvlk/CWt3d+vhv
	bQhLSjvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsgw-00000005xCD-1yXJ;
	Tue, 10 Jun 2025 06:42:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsgu-00000005xBs-2U3a
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 06:42:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsgt-00012y-4V; Tue, 10 Jun 2025 08:42:35 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsgs-002jBF-34;
	Tue, 10 Jun 2025 08:42:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsgs-008vfJ-2s;
	Tue, 10 Jun 2025 08:42:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250605194401.1841679-1-a.fatoum@barebox.org>
References: <20250605194401.1841679-1-a.fatoum@barebox.org>
Message-Id: <174953775488.2128199.841934569158419643.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 08:42:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_234236_632324_D8B037D6 
X-CRM114-Status: UNSURE (   8.08  )
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
Subject: Re: [PATCH v3 1/3] resource: supply memory type/attrs on all SDRAM
 requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Jun 2025 21:43:59 +0200, Ahmad Fatoum wrote:
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

[1/3] resource: supply memory type/attrs on all SDRAM requests
      https://git.pengutronix.de/cgit/barebox/commit/?id=d06862bdd19d (link may not be stable)
[2/3] resource: retire IORESOURCE_BUSY in favor of resource::type
      https://git.pengutronix.de/cgit/barebox/commit/?id=191b639dd53d (link may not be stable)
[3/3] commands: iomem: add support for printing type/attributes
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d3abb44cfa3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



