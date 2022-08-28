Delivery-date: Sun, 28 Aug 2022 16:05:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuq-00D8F1-7L
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuk-0002Mi-D5
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q5k5gy7xmraOf6ci6UDxfMRUA6jr5H6mwrekb1+ud4w=; b=WrPwPLIaDnU1Cf5sd5mw1IZPbw
	7rDmHAPmZRm+YJ+m6HbqBe6aVWimWAvQZAm90PQ+wbpWzn/cV7s2o7f6PQSw9pFIQZc7nIYz3amOW
	H05BBaqOpo479PFvY+mPNnyZ6F25RCdx72T0Yg2V5dr+d5/LdrWOoHkQs2Gxc9T8+/p2JYBNMttkE
	PzYWMDnUY5xKI6UYMw2QAn52F7NEdSagNaBTJefIcukmETImJn/EJJSC7a5MEJBkOf6EY0Dql7XLk
	qYV6MP27u/YSsnefK4V4ogdlqUPnNdknIBHAP6qh5kFnAPNH7pK6am+XjJqaUOEEC8qZbVGg2K1oA
	ahAwRTlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSItG-00HKGm-Rl; Sun, 28 Aug 2022 14:03:54 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsw-00HJnY-Ns
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:38 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2njk789815
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695369;
	bh=q5k5gy7xmraOf6ci6UDxfMRUA6jr5H6mwrekb1+ud4w=; l=1141;
	h=From:To:Cc:Subject:Date;
	b=HuUvOGYM4ADBwmwJ3pkK7yUoKRw1d52AOphgKMrN8BV9M28XFY3C8dOFdH1x3XKra
	 psNFMWBznnIaaaFtvhN5v6w8IlE1YPKA7bQoXHxU/szCzB3t6NWIQg2tf40XASxk5A
	 SporGoF76r60JXjc0OLd60bsheq8F/48JmlT7jT6HQnPYxV+gMZgAr6nD3HHyGWFfE
	 aaWMjUr9a0EqXP1DbL87OVdYxn7MtmpL+o16kkUsKHNbI2AdQ0DAjiWU4J8nv8mRl9
	 VcKPhNbuCV0RTfyqeFJeI01XmVtBcu3l2MiAJvU5ZQJtAZCgq2McP9gvVR4K6WuMmn
	 3Lx5RlR6JQm7Q==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2e2G980524
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:40 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 57DAB2BCC1F; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27SE2bKG933377
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7S-6P;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:23 +0200
Message-Id: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070336_089978_3129FFD3 
X-CRM114-Status: UNSURE (   5.56  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] tftp fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The "tftp: allocate buffers and fifo dynamically" patch in the last
patchset broke interaction with non rfc 2347 servers (e.g. when data
transfer starts immediately after RRQ/WRQ without the OACK negotiation
phase).

This has been fixed for both RRQ and WRQ requests.

For WRQ requests (push), the "tsize" option will not be sent anymore
because it is always '0' and can confuse servers.

New patches add some sanity checks which prevent modification of
internal information (blocksize or port numbers) when OACK packets
arrive in the middle of a transfer.


Enrico Scholz (8):
  tftp: make debug_assert() critical when selftest is enabled.
  tftp: remove sanity check of first block
  tftp: split out allocation and cache initialization
  tftp: accept OACK + DATA datagrams only in certain states
  tftp: support non rfc 2347 servers
  tftp: do not set 'tsize' in wrq requests
  tftp: fix WRQ support
  tftp: add some documentation about windowsize support

 Documentation/filesystems/tftp.rst |  38 ++++++
 fs/tftp.c                          | 189 +++++++++++++++++++----------
 2 files changed, 166 insertions(+), 61 deletions(-)

-- 
2.37.2



