Delivery-date: Mon, 30 Jan 2023 18:29:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXye-007qJ3-J8
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:29:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXya-000560-S6
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:29:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kN9XjiG1OVBVBX5V3BOVkb96CnuoQXGFOuWg3ICVh64=; b=aYlJLgna0WoFXQ/1eN+AUZNtsp
	4bHihO0zc+tR4tZGZGSSrzZSrIIYoFhDeJWkmWR0tbuUqvcxtWXPB7fH5e6ZAvm9NgeHmCr6uIgTv
	nC37EnfwZeHPq1T1PKmGnEgRRTIQ+PV1HLnXepp2cq3bJFQ2+706HqKwuUpyV8hHRUjC7OF+d4XmP
	HRDYdChKaCf62q7Vqtc9GlIqzSMtdorjw+Efw83e7n+fKIErHoUKRBGPQzroiMu4Vz4n9pbtutCxn
	hY24HQWWZHCW6cY5KQD4NGHaMgYlZ4RC2vn8+U8sziaFj9j5D0bCtu2JVK+iLooJYSf3seen2LZUN
	xaoLV5Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXx7-004Y1y-Jl; Mon, 30 Jan 2023 17:28:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXsb-004VlB-PB
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 17:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pMXsY-0003J2-OA
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:23:38 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTM-001Pn0-TW
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 08:21:00 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTK-0008xF-Vs
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 08:20:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 30 Jan 2023 08:20:54 +0100
Message-Id: <20230130072057.34349-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_092341_858413_28F28C1C 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/3] net: ifup: greatly reduce ifup -a time for multiple network interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, ifup -a tries to up all non-disabled interfaces in sequence.
This can take a quite a while, because interfaces with the link down,
will be polled for 10s, before giving up on doing DHCP on them.

This series accelerates this in the common case by doing link up
check in parallel, getting down from (number_of_ports_wihout_link * 10s)
to 10s and then adds an optimization for the common case of automounts
with $global.net.server not set.

Times after eth_open_all has brought up CPU Ethernet and 4 DSA ports:

  barebox$ time ifup -a -s # old behavior
  time: 31081ms

  barebox$ time ifup -a
  time: 10002ms

  barebox$ time ifup -a1
  time: 1072ms

Ahmad Fatoum (3):
  net: ifup: have ifup -a poll for link up in parallel
  net: ifup: have ifup -a1 stop at first DHCP-set global.net.server
  defaultenv-2: automount: use ifup -a1 for NFS/TFTP automounts

 Documentation/user/automount.rst            |   2 +-
 defaultenv/defaultenv-2-base/boot/net       |   2 +-
 defaultenv/defaultenv-2-base/init/automount |   4 +-
 include/net.h                               |   5 +
 net/eth.c                                   |  28 +++--
 net/ifup.c                                  | 124 ++++++++++++++++----
 net/net.c                                   |   7 +-
 7 files changed, 138 insertions(+), 34 deletions(-)

-- 
2.30.2



