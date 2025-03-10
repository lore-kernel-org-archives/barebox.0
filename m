Delivery-date: Mon, 10 Mar 2025 16:11:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trenI-00CIAQ-22
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 16:11:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trenH-0006v7-Ge
	for lore@pengutronix.de; Mon, 10 Mar 2025 16:11:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D80llDyu7LJo6JEhmcRQWROXIca4RWRyFRDYigGncfg=; b=OgzLyWJc7//c4ItM+w+pIevvNU
	HMyeKYAWkDm7WT1Ut4PJsCbaH+EtirApt9ZpWlPZmLSHYwt0ReCISqYgz0ZexucmFVpy4/BbZ9gTO
	ZKzq6zTkDwKmfYwkrEFLdgwUiQ/tAn+Qh0t00UQvjzKtu0KSzNea3dA34agY7XBiyHEFppgXqntan
	9rLcylQNDDpDw0FuhB7aOtOgSP/DLo5Y5sQQRAvwlG4LQ/rbBbbGFrK92MbxxnwsIwElHJ6jd6oNR
	gX+nnYyHbyo+ttTMBszmYyQ3L8pBl8xUzs2pA50LUHZIDWM2U/HZCNqhoMb2FHD6H3e9gK6VkarvJ
	YizHQ0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tremp-000000036va-2PZ0;
	Mon, 10 Mar 2025 15:11:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trdXy-00000002qr5-0Xem
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 13:51:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trdXv-0002LB-9n; Mon, 10 Mar 2025 14:51:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trdXv-0050p0-09;
	Mon, 10 Mar 2025 14:51:55 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trdXu-005wik-34;
	Mon, 10 Mar 2025 14:51:54 +0100
Date: Mon, 10 Mar 2025 14:51:54 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Message-ID: <20250310135154.bw6awpkjydcf32zp@pengutronix.de>
References: <20250310113626.2241630-1-m.felsch@pengutronix.de>
 <2770e761-a192-437f-bc82-128519c04d18@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2770e761-a192-437f-bc82-128519c04d18@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_065158_165796_4567724E 
X-CRM114-Status: UNSURE (   8.94  )
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
Subject: Re: [PATCH master] i.MX: HAB: fix i.MX8MP field-return fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-03-10, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 3/10/25 12:36, Marco Felsch wrote:
> > Current tests showed that fusing just the single field-return bit(0) on
> > i.MX8MP SoCs brick the device.
> 
> So such a device is bricked permanently with no way to upload
> a bootloader again to fuse the remainder of the bits?

Yes, as written here [3], the device isnow in "device asserts security
violation" state, what ever this means but maybe: "I refuse to power
up".

[3] https://lore.kernel.org/all/a9ebece9-4ab6-4bca-bebe-985e0bf95278@oss.nxp.com/

> Interesting thing to not document :/

Took us 2 devices to figure it out :/ We also don't know why NXP doesn't
care and don't update the (S)TRM since the v1 of [3] is 9months old.

Regards,
  Marco


