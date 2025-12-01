Delivery-date: Mon, 01 Dec 2025 12:06:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1jj-006nJ0-1z
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 12:06:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1jj-0003na-3w
	for lore@pengutronix.de; Mon, 01 Dec 2025 12:06:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w0zOMtfbtTOLkj2sdvZLrBTenm10IwobR1CodxJcSYo=; b=OgpYRoOPnJdt+u3+E+3cwiSFZr
	B9SntSjv6CMjdMbJ6iZI8yqR473+szEa53AMbX8GhaqBMP1WLdeE00In/T5rLGmXyI6pjkGSFns/U
	mQWcpAQRFVpPjZNvouLzDH3gRBTEN5/prq83vP//S7/mg4/sIJL+VDwyZagb8Zb+264QpnE5CGKI7
	TyrLUSFOWP3k+EqySO2a60+VOqDXB9rBoe0b/CLlUXo2XyeEhT9eBRROh/h2XXjhsv7Q1YIZnyqN1
	3E1D8nTUHDKTgLbMDdxT+zhuP9tGnR+mHP22Tbx4fdt8O/WR4oUSQ0gTWGCWDqnefmVzTCAEdXgIw
	Icby7vow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1jJ-00000003OY7-26zx;
	Mon, 01 Dec 2025 11:06:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1jH-00000003OXg-0xDI
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 11:06:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1jF-0003h3-FO; Mon, 01 Dec 2025 12:06:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1jF-003Qlk-0u;
	Mon, 01 Dec 2025 12:06:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1jF-00000000ibf-0uNo;
	Mon, 01 Dec 2025 12:06:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
In-Reply-To: <20251128124939.108159-1-a.fatoum@pengutronix.de>
References: <20251128124939.108159-1-a.fatoum@pengutronix.de>
Message-Id: <176458716121.171400.11417816991905346325.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 12:06:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_030603_272581_A3423BEB 
X-CRM114-Status: UNSURE (   9.70  )
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
Subject: Re: [PATCH v2 1/2] net: arp: collect context into new struct
 pending_arp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 13:49:33 +0100, Ahmad Fatoum wrote:
> The ARP code employs two global variables to communicate between the
> code sending off the ARP request and the response that runs in the
> poller:
> 
> - arp_wait_ip, which is the IP to be resolved
> - arp_ether, which on success will point to the resulting MAC address
> 
> [...]

Applied, thanks!

[1/2] net: arp: collect context into new struct pending_arp
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ed55472688a (link may not be stable)
[2/2] net: reset pending ARP state when request is done
      https://git.pengutronix.de/cgit/barebox/commit/?id=effaa57f9a94 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



