Delivery-date: Fri, 05 Apr 2024 11:58:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsgKj-00CaYZ-2g
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 11:58:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsgKj-0002KY-7g
	for lore@pengutronix.de; Fri, 05 Apr 2024 11:58:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/IMffWjD5dBvgaprENG34jV0hzfGSJiclDXxZW/+yYI=; b=Iu14pLD3JrozU/2ng4pV/3ECmo
	agTZayqqfSuAjkwpPCDTmAgl6vaHZGsHYdPotYVY7MSrzn4OSNwcCAacUnpsC2fT4NVD7mQwtXTGV
	ZjaVr9DQg7ec/9K5RM6qMKyzYi4xtzzl1MUeCsoLqo9ounZKZQulI34Mvv6qn7fMv5XAZzbd9yW0j
	gAtI/yQMLMRt9qlo5CIysrwn+EkrhR2IdE2A2OD2Cqsz3h0YoPOdQZWFdKAHxao3bab3GiHhq9zoD
	yGmk8VwmEC7WhKQiGWtNhDQ6/K4OgtXo+CTvZTANwIRWIqtkRZh/Mqsdy8+HCW44a/rX8m27DI6o4
	Qm4Jk/Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgK9-00000006J4K-2p81;
	Fri, 05 Apr 2024 09:57:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgK6-00000006J2M-2FZb
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 09:57:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgK5-0001hs-8n; Fri, 05 Apr 2024 11:57:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgK4-00AY0T-Se; Fri, 05 Apr 2024 11:57:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgK4-009E9Y-2e;
	Fri, 05 Apr 2024 11:57:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
Message-Id: <171231104481.2199315.17906369966288176743.b4-ty@pengutronix.de>
Date: Fri, 05 Apr 2024 11:57:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_025726_630421_ACE1EB9A 
X-CRM114-Status: UNSURE (   7.56  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/10] net: fix problems handling trailing bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Apr 2024 20:39:51 +0200, Ahmad Fatoum wrote:
> This started by pinging a Raspberry Pi 3b running barebox sitting behind
> a router employing conntrack. The router discarded the ping responses
> due to the wrong ICMP checksum and these issues do not pop up normally
> because the ping command itself doesn't bother to verify the checksum.
> 
> This unearthed issues in two drivers as well as the barebox network
> stack itself.
> 
> [...]

Applied, thanks!

[01/10] net: free packets with net_free_packet
        https://git.pengutronix.de/cgit/barebox/commit/?id=006fd6e86707 (link may not be stable)
[02/10] net: ip: don't blindly trust driver supplied frame size
        https://git.pengutronix.de/cgit/barebox/commit/?id=1b2559919d13 (link may not be stable)
[03/10] net: icmp: don't blindly trust driver supplied frame size
        https://git.pengutronix.de/cgit/barebox/commit/?id=d1316e6745d0 (link may not be stable)
[04/10] net: icmp: properly set IP TTL and fragement fields
        https://git.pengutronix.de/cgit/barebox/commit/?id=e2f7ec4625fa (link may not be stable)
[05/10] net: icmp: don't overrun buffer on send
        https://git.pengutronix.de/cgit/barebox/commit/?id=ad753cf0f5ce (link may not be stable)
[06/10] net: cpsw: report correct frame size to network stack
        https://git.pengutronix.de/cgit/barebox/commit/?id=20ece44e01aa (link may not be stable)
[07/10] net: usb: smsc95xx: don't opencode get/put_aligned_le32
        https://git.pengutronix.de/cgit/barebox/commit/?id=209cca7cef6f (link may not be stable)
[08/10] net: usb: smsc95xx: don't blindly trust hardware size
        https://git.pengutronix.de/cgit/barebox/commit/?id=9a868a27e334 (link may not be stable)
[09/10] net: usb: smsc95xx: fix handling of multiple packets per urb
        https://git.pengutronix.de/cgit/barebox/commit/?id=1ef8e95ec855 (link may not be stable)
[10/10] net: usb: smsc95xx: disable HW checksumming in driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=b83c88237593 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



