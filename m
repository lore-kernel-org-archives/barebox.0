Delivery-date: Tue, 18 Feb 2025 15:08:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkOGg-003w8R-0u
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 15:08:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkOGf-0000vT-1o
	for lore@pengutronix.de; Tue, 18 Feb 2025 15:08:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=snzvR6q0/3Pl281N4T8yje4Qd5yotYYDQDeS+5u2NdI=; b=husP2ye9zenUsM9Z3A6ita1bfb
	KwFr/sRFu4VR6NueInarmOSbWsG3TiMAFBG2ahHtYsEzjnMUiZOkpMzpldhzFugGpi7CKkLJoIygD
	SyDPjYecSilt9/MarW7WibjI5M2uKQcmPYs3l66SfOjDOeflOEnlHL5tdTT9eBeNaj1ofpmSauFBl
	tEx88czxJEK3aQhr5JUWolBJlZVoZQu44hySbPqMSByEmza0xxMhkDd+aYYQuP8u/EKYIawrf1kpF
	dRGZe3MJ2NTNFS5ZJ6UP13Pvxc6XvYqQymiQ/Z9yZVOmEqTJSmPeAMYArOLYe7E3TYf05kSR8NZx1
	pVd9JunA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkOGF-00000008R9R-1udL;
	Tue, 18 Feb 2025 14:07:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkOEN-00000008QjY-2bEE
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 14:05:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkOEM-0000TB-G0; Tue, 18 Feb 2025 15:05:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkOEM-001bVj-0z;
	Tue, 18 Feb 2025 15:05:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkOEM-005Fcj-0n;
	Tue, 18 Feb 2025 15:05:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250217144543.1777605-1-s.hauer@pengutronix.de>
References: <20250217144543.1777605-1-s.hauer@pengutronix.de>
Message-Id: <173988754624.1251614.15029751625924782411.b4-ty@pengutronix.de>
Date: Tue, 18 Feb 2025 15:05:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_060547_662447_8F25C9B0 
X-CRM114-Status: UNSURE (   5.60  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc3: am62: Use HZ_PER_KHZ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 15:45:42 +0100, Sascha Hauer wrote:
> Use HZ_PER_KHZ to make intention clear and drop now unnecessary comment.
> 
> 

Applied, thanks!

[1/2] usb: dwc3: am62: Use HZ_PER_KHZ
      https://git.pengutronix.de/cgit/barebox/commit/?id=5dd32e5531b5 (link may not be stable)
[2/2] usb: dwc3: am62: set mode valid bit before probing children
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2e46da015a4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



