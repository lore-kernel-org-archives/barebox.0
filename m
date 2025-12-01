Delivery-date: Mon, 01 Dec 2025 11:50:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1U0-006n8f-2c
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:50:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1U0-0000qP-9Z
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:50:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gnJ2H9N+j/MkbyQcH9gii1eOOYj58YcPfXZZU7q1pHM=; b=4tbGjkrQJdCcDmpqsxGVrygIw9
	xifqL2XI5v+CgUx1AHYElWTRPXDZDZSuJa+4J0eRD2PoL6GPVMwFV1MfMLz4z4o2wzLYfJcUBU6N6
	40stRPB3XNBi8ou5iTJjtaULMtG2XGfdrsvuvjBAPFB/IizU+wJrG5NCDZwNkqn1LwRT4nuIJ6ZIg
	AKHGF41UFzgzWY0BV8017gkYUhiGp5ESAxCA34KF9xOEbgr6VOBREk+jeF8zx3KtvjRFwdSZq2b34
	U1e3g6CRFannLIw4h3BlQg9Xd7Hqx7+qJdDhfkfnw7WxNt2I3dYf8gfKAZ+Uh/+JROWvn4bt/NA17
	FA0PwztQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1TZ-00000003MzP-1Unf;
	Mon, 01 Dec 2025 10:49:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1TW-00000003Myw-0sCq
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:49:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1TU-0000m8-Bk; Mon, 01 Dec 2025 11:49:44 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1TU-003Qfk-0Z;
	Mon, 01 Dec 2025 11:49:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1TU-00000000hQy-0URW;
	Mon, 01 Dec 2025 11:49:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251201084737.1270303-1-a.fatoum@barebox.org>
References: <20251201084737.1270303-1-a.fatoum@barebox.org>
Message-Id: <176458618411.166897.3449815224568856112.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 11:49:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_024946_256027_87A17F7A 
X-CRM114-Status: UNSURE (   7.49  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/6] ARM: zynqmp: dts: mark power domain as dummy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Dec 2025 09:45:51 +0100, Ahmad Fatoum wrote:
> We have deep probe enabled for the ZynqMP boards, but don't have a power
> domain driver and indeed never needed one till now.
> 
> Mark it optional using the barebox,allow-dummy property.
> 
> 

Applied, thanks!

[1/6] ARM: zynqmp: dts: mark power domain as dummy
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef0cbaf9f81b (link may not be stable)
[2/6] ARM: rpi: make power domain optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=b835f53a5a92 (link may not be stable)
[3/6] pmdomain: add Rockchip power domain support
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b4cc480a54e (link may not be stable)
[4/6] of: add proper driver for simple-pm-bus
      https://git.pengutronix.de/cgit/barebox/commit/?id=d34f91252913 (link may not be stable)
[5/6] pmdomain: warn if deep probe enabled and driver missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=61501d8edd11 (link may not be stable)
[6/6] pmdomain: genpd_activate() automatically for deep probe platforms
      https://git.pengutronix.de/cgit/barebox/commit/?id=7602fa8fbce5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



