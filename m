Delivery-date: Mon, 04 Mar 2024 11:29:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5a3-008Acw-2N
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 11:29:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5a3-0003aP-3G
	for lore@pengutronix.de; Mon, 04 Mar 2024 11:29:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EmOR5C0uvqlXpK8AB7NXB8H2rYhvsv0iWy2sCq4HVQk=; b=QePDn0/0RFQ9Jfhw/O/9vhKT1Y
	Bpmks6rkHyK+YB/LVRKgkir3T5ZGHUmINtWAj7ziFs4tIbxDLv9ggP3RliHYKJK79MvGjHqS9pMOB
	nANUNPcxDUqRFH4UWF+QFyuDcCm26mKX32tRFFxqX1IdoIUSJRHVKUhpWsDJ5rwPPyAzp1jYyMkR6
	99fnZzUlS8hIGCR/ZbdU4HD0xzKe2Y9YWqj7Vf7CkgkqxMvMd9yr22z+n83x/pLUog2YmoI3NYIxq
	kAZS631c9Pi3Ur2o0dNbOJeRh6CyDc4fzUcLj5RcFU12wh3csbSb3W0cHytPNSL7fe924knsTvyUV
	vdCPLMfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5ZR-00000008bku-49lh;
	Mon, 04 Mar 2024 10:29:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4x1-00000008Uia-3OFY
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:50:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4wq-0003Lt-A1; Mon, 04 Mar 2024 10:49:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4wp-004KCN-TS; Mon, 04 Mar 2024 10:49:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4wp-00BWXM-2k;
	Mon, 04 Mar 2024 10:49:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240301130445.171385-1-a.fatoum@pengutronix.de>
References: <20240301130445.171385-1-a.fatoum@pengutronix.de>
Message-Id: <170954576784.2746656.14484773738845201870.b4-ty@pengutronix.de>
Date: Mon, 04 Mar 2024 10:49:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_014959_176187_8A189BBE 
X-CRM114-Status: UNSURE (   9.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/4] of: fdt: read blspec/FIT DT compat without
 unflattening
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 Mar 2024 14:04:41 +0100, Ahmad Fatoum wrote:
> blspec and FIT systems usually have multiple entries/configurations,
> where a suitable one should be selected at runtime by comparing each
> against the board's barebox DT compatible.
> 
> For blspec, this meant we need to unflatten the whole DT only to access
> a single property. For FIT, this meant we expected the configuration to
> carry a "compatible" property and didn't even attempt to parse it out of
> the fdt as fallback. Both are resolved with this series.
> 
> [...]

Applied, thanks!

[1/4] of: fdt: factor out FDT header parsing
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8b58bf5d7cd (link may not be stable)
[2/4] of: fdt: implement fdt_machine_is_compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=143f2ae76809 (link may not be stable)
[3/4] blspec: don't parse whole device tree to compare compatibles
      https://git.pengutronix.de/cgit/barebox/commit/?id=9f2b74f1eb58 (link may not be stable)
[4/4] FIT: support finding compatible configuration by FDT compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=5c9cd335e893 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



