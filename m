Delivery-date: Mon, 10 Jun 2024 09:52:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZox-003Ztb-0e
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 09:52:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZow-0003dp-Lo
	for lore@pengutronix.de; Mon, 10 Jun 2024 09:52:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Llqbne8pb9qHro7JkX7LUfmohO0EezMYkt5l4V5iQU4=; b=eo6Sk7wvs5UuGYyHpNvFm8+qEx
	fc0ike5/W2Ae4MA1AblDXDRLb/N7Kp0Qrmf1H63Wf64ZmFHxeWBD3HsAgcM462KZCS/m7vK3KySi+
	mt7OXAZ5G1lIT6gRzOqoWtXy6IOHpIA8giAxJ/TI5n1/LQUr3wjE0PEaEAhkx2051iXvxiVSgmigh
	TfSap5GJigWmKALmj1qAwmRsFmEXw34mnkuooFULZO8ig2qJylb5kUzpO4VH4NN/JeJwiBVGbSHBG
	0QYaY6pGE6WBy84W4TeQhJJDojfThd/+mw1ebOW0uaYjipYaOEBYgLMLyRkHFq9RnYfPGumdHRG2o
	v+mFZmwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZoD-0000000482T-1vaX;
	Mon, 10 Jun 2024 07:51:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZo6-0000000480A-2qa0
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 07:51:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-0003Jh-RA; Mon, 10 Jun 2024 09:51:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-001Feh-Ei; Mon, 10 Jun 2024 09:51:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-003PNM-15;
	Mon, 10 Jun 2024 09:51:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 09:51:00 +0200
Message-Id: <20240610075105.812496-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_005110_800392_34597A7B 
X-CRM114-Status: UNSURE (   9.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] net: preparations for integrating a network stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series has some preparation patches to better integrate a network
stack in the future.

Sascha Hauer (5):
  net: virtio-net: allow to set current MAC address
  net: ifup: use accessor to set network device ip/netmask
  net: add edev argument to net_set_gateway()
  net: establish single code path for setting edev parameters
  net: host command: move to commands/

 commands/Makefile    |  2 +-
 commands/host.c      | 40 ++++++++++++++++++++++++++++++++++++++++
 drivers/net/virtio.c | 34 ++++++++++++++++++++++------------
 include/net.h        |  2 +-
 net/dhcp.c           |  2 +-
 net/dns.c            | 37 -------------------------------------
 net/eth.c            | 33 ++++++++++++++++++++++++++++++---
 net/ifup.c           |  6 +++---
 net/net.c            |  2 +-
 9 files changed, 99 insertions(+), 59 deletions(-)
 create mode 100644 commands/host.c

-- 
2.39.2



