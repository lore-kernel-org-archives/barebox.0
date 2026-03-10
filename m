Delivery-date: Tue, 10 Mar 2026 11:09:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu25-00A3lb-1v
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:09:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu25-00063Z-U3
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:09:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MnUlXQVasi251zCwp3UWNMV7S296aSy7GAZ6l1kocCE=; b=XEDxrHEd3WEKgcArq9rTKpIJ9+
	wb7dgpTtkCu4hUYV+KqLE/z/MsehOF21BmWflMBgyXCIjABufi2QFeuHHCsr0QEq34z57JE30L3Cp
	I544a6OYDpEUQmecmHigLVE+gwuHasp9Q5I7gRwYPaPMRl0gPSr4TLOGL43bt3pcepWTaT2iQAcNt
	9G7kebXst7ovZb7k/jOeUJPuesOafF/1aUQnRjwIzm0ORQCTQVV+yZpzNVDUh4an57k5mbAaRwjLq
	Oyxq4RIc/ZCmybv7uXglThQSMejhnvW3qFf6FtH2GVHHGXZFLK98zUHxggXVSTcZrpkiJB45pXQJG
	tOPl40Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1k-00000009AI9-1Oy5;
	Tue, 10 Mar 2026 10:09:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1i-00000009AGY-2LMu
	for barebox@bombadil.infradead.org;
	Tue, 10 Mar 2026 10:09:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MnUlXQVasi251zCwp3UWNMV7S296aSy7GAZ6l1kocCE=; b=B3t+qxjE5v994LxHAYp0RSCHAP
	7YTYI6Llvr/puxwoc+pwEF7n+Lzu3HL27abb9K1rwibXsC5xJiRmJdGInQ27Gz7i6HjjJXGQgcqRc
	MhKgpinoewjeCTW1wDhEZwWFpA6VgWri6oBwujsH/UWx+iy6KqeP3FBiFvzpvqddVOrSWoblPbthh
	pO3nqo8QrQqOyEkYCOYCa6k4ezYuNp/W2rimG34zGbLDjwFZBLuSBbWBABhz4jZsHhyB8ABG4R3/J
	5NEt7YRN7dI2ga32CnQwjpOypJ2g6bPWjsSCaKw+F3OFUhqTew1IoEQChR+cs1Y+pobyLzx0C1h7d
	geo8RImw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1e-0000000EDTL-0Qcy
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:09:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-0005kj-HD; Tue, 10 Mar 2026 11:09:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1Z-004gFR-34;
	Tue, 10 Mar 2026 11:09:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-00000003BHM-0p33;
	Tue, 10 Mar 2026 11:09:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Cc: Robin van der Gracht <robin@protonic.nl>
In-Reply-To: <20260304131417.564470-1-robin.van.der.gracht@protonic.nl>
References: <20260304131417.564470-1-robin.van.der.gracht@protonic.nl>
Message-Id: <177313735519.757414.319603147533330012.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:09:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_100918_466926_668239A4 
X-CRM114-Status: UNSURE (   6.07  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: Add missing LIBFDT dependency to
 ARCH_ROCKCHIP_ATF_PASS_FDT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Mar 2026 14:14:16 +0100, Robin van der Gracht wrote:
> arch/arm/mach-rockchip/atf.pbl.o: in function `rk3562_barebox_entry':
> arch/arm/mach-rockchip/atf.c:159: undefined reference to `fdt_open_into'
> 
> 

Applied, thanks!

[1/1] ARM: rockchip: Add missing LIBFDT dependency to ARCH_ROCKCHIP_ATF_PASS_FDT
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef712e0a713b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



