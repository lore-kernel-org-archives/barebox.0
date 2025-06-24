Delivery-date: Tue, 24 Jun 2025 10:25:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTyxi-00AXjU-2N
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 10:25:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTyxi-0007bj-4v
	for lore@pengutronix.de; Tue, 24 Jun 2025 10:25:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nreksOjkd6Sys/shycQanJDbnSzeC+MpG8KQkGfPi/g=; b=kKqXIKIea8H+SW1JCzWtEwIpKT
	hdblInOwwQjOw4yykgYzG3fPX/MCH9V73JfgK89sriCoqfUmTomgak9YCy4tfiEArtmeahcHdYuhu
	9RFIwait2fuyk+zqgD6oif4h1vfqbIBgguu6OVFjSd/v5ukj/iERQzoidN3qcCanwZr4xzpphRse8
	QwSSqcQ2DkZ9XcJYWF/9FDeA2i5sRm0f555u2uuVWnZTPdfEveznjhjvIfyo5g31ye2VGnzoqO9z/
	YJaNdAPFzNUhs/YIwiYo2DVbQrBzkQ8slWhAFkC/SbzuTntS+UacQI/5QXiHmWdHzdYZ13+tQkGP6
	oXJzFOXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyxH-000000050Rw-0Pn6;
	Tue, 24 Jun 2025 08:24:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyOF-00000004vjo-2Aqs
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 07:48:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uTyOE-0004nT-7V; Tue, 24 Jun 2025 09:48:22 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTyOE-0054o7-09;
	Tue, 24 Jun 2025 09:48:22 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTyOD-00F64w-33;
	Tue, 24 Jun 2025 09:48:21 +0200
Date: Tue, 24 Jun 2025 09:48:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFpYRVg6r17HK05m@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
 <20250623-v2024-10-0-topic-socfpga-agilex5-v3-4-e9de9e31b2c1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-4-e9de9e31b2c1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_004823_558884_57AF59D9 
X-CRM114-Status: GOOD (  13.97  )
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
Subject: Re: [PATCH v3 04/10] arm: socfgpa: add support for SoCFPGA Agilex5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Steffen,

On Mon, Jun 23, 2025 at 03:57:49PM +0200, Steffen Trumtrar wrote:
> Add initial support for the Intel Agilex5 SoCFPGA platform.
> 
> The Agilex5 devices have:
>   - Quad-core cluster consisting of Dual-core 64-bit Arm Cortex-A76, and dual-core 64-bit Arm Cortex-A55 (SoC only)
>   - High-Speed transceivers, up to 17.1 Gbps (group B) and 28.1 Gbps (group A)
>   - PCIe Gen4 x4
>   - DDR4/LPDDR4/LPDDR5, and DDR5 (group A)
>   - Native MIPI CSI-2 and D-PHY (multiple channels)
>   - Secure Device Manager (SDM) to support secure configuration and tamper prevention, and hardened cryptographic engines
> (from https://www.rocketboards.org/foswiki/Documentation/ArrowAXE5EagleDevelopmentKit)

This patch contains imported code from elsewhere. Could you leave a note
where the code is from, preferably including a commit hash? This will
become in handy for future updates.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


