Delivery-date: Thu, 02 Apr 2026 08:37:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgA-007kp5-2z
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgA-0007oK-8n
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JqbgPzrMoDpcLeOYSGctofuW0XrARnssTXKb7uNiY8I=; b=S9b0dImyCcHsBa
	Lw2c9T6fKtqTkQqh8BPGwIl3z0sStK/KaPy4c4to3poWWX+syEtXgcoKj20ASLYX54MswfbSwjarJ
	SHrErzwgobZcQZ5hxQatZMBnoh9pKMCb4b9RkTBBxB0QSG3/yfwtP7EFPrKiCZAdWzQxSGVNJ0b77
	esZHAwLw6codA6AWKPMsl7+jW8TOfx3a9bnSbh6fiYe+tH2wFfNZ2d8DcXVhMFvrph/ffhAgnyHn3
	I24Ht+ON9G65pee8DIGFZs+OYDUmWGfzVt28FxlZetqiYDvCuM5w2DRviKgIVVxedxxtd6vwSmNO8
	VsIk/ZUf1EjNZ2ksYllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfj-0000000Gu94-1vfU;
	Thu, 02 Apr 2026 06:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfg-0000000Gu4o-3Ual
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Oh-Ab; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003Kc9-2h;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2pkG;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:39 +0200
Message-Id: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHcOzmkC/x3MQQqAIBBA0avErBsw04KuEi2iGWs2KloRSHdPW
 r7F/wUyJ+EMU1Mg8S1Zgq/o2ga2Y/U7o1A1aKUHZZRGzyfyeSAFvChir0dneLBEZKFGMbGT5x/
 Oy/t+1BeEv2AAAAA=
X-Change-ID: 20260402-net-eth-do-udp-327f4e65ddd5
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=1515;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=U3ngYEIkBGCiFgeU7wZjB6lgyaSs+gaTnHpWMJCvj7E=;
 b=xG/u6WrdgpqcOs5FtKetRyhhtpLvD9OLewY/7Ui8WfVM01gtB1v0KS0W8v+a37gs3J75UA7B9
 dCBAResCj+SAeGOuAmILF5uPL9Y10WrYMkVy2BM3qhHq7G95TKbCw2I
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233652_883898_22E16785 
X-CRM114-Status: UNSURE (   6.89  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
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
Subject: [PATCH 00/10] net: prevent buffer overflows in UDP packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our UDP handlers all use a UDP packets length without checking if it
fits into the incoming ethernet frame. Create a net_eth_to_udp() helper
which does the bounds checking and use it throughout the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (10):
      net: add net_eth_to_udp() helper for validated UDP extraction
      fs: tftp: use net_eth_to_udp() for packet parsing
      net: dhcp: use net_eth_to_udp() for packet parsing
      fs: nfs: use net_eth_to_udp() for packet parsing
      net: dns: use net_eth_to_udp() for packet parsing
      net: sntp: use net_eth_to_udp() for packet parsing
      net: netconsole: use net_eth_to_udp() for packet parsing
      net: fastboot: use net_eth_to_udp() for packet parsing
      net: fastboot: stop using net_eth_to_udp_payload() for PACKET_SIZE
      net: remove unused net_eth_to_udp{hdr,_payload,len}() helpers

 fs/nfs.c         | 11 +++++++----
 fs/tftp.c        |  9 +++++----
 include/net.h    | 21 +++++++--------------
 net/dhcp.c       | 16 +++++++++-------
 net/dns.c        |  9 ++++++---
 net/fastboot.c   | 25 ++++++++++++++++---------
 net/net.c        | 40 ++++++++++++++++++++++++++++++++++++++++
 net/netconsole.c |  7 +++++--
 net/sntp.c       | 14 +++++++++-----
 9 files changed, 104 insertions(+), 48 deletions(-)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260402-net-eth-do-udp-327f4e65ddd5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



