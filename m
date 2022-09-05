Delivery-date: Mon, 05 Sep 2022 12:26:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9Iu-007NTi-FQ
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:26:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9Iu-00045m-Tt
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:26:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mZ0uODRIZ9OO6fd7TllA5RQaeSIVHLERNpxnldZQrTo=; b=jB6gt0XoXaxioD3wXafgGph9UZ
	lBZr+V1h8FVy+859ZCxXcE/QST0jkyv097gZBVK9GNPx1jWMRGh5j0h7cLXcBK1YZXBFFM3Jo3U+8
	fSq8mtvcbNgfyrzDM2HNz3vzykzWi3zXbrYi67g7a6NBKrqT4XEBWiUGchziByesWFpmAbDkmCsXM
	lzZV4Rt+KjnQ6DezxgFIwcqJMIEWsITavC+yyS6XPE1lAADMyrXPZysPLMyxTt87tOBQ610S85tIN
	JBXyQR8r32THyaYJlbFdKwZG+HmBDz0He2vaRu+8452bYAVUg2EmKFO1bGkYu9/+GC9ZbGaGYfnzR
	jbxIr3vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9Gm-000A6N-GV; Mon, 05 Sep 2022 10:23:56 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV7vV-00FEBD-CF
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 08:57:58 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2858v7Ee1052065
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 5 Sep 2022 10:57:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1662368228;
	bh=mZ0uODRIZ9OO6fd7TllA5RQaeSIVHLERNpxnldZQrTo=; l=318;
	h=From:To:Cc:Subject:Date;
	b=wJqO4L6vMyMZuS+bpm7FqrKKtJEpcOy60Xmboi/AtKJ+GJPNguZMIQPKsEBnB9wlr
	 5f/rlMnbAF381GGHbX+qoGW8M+p3D0LWHTPBrChknK2VMP9YCHGBqcqD2YjHy5oCUO
	 O98wOayvXtD1RfiY7EDdB9N14kpa1a7oG+E3H5QcbPTBzxeZ9IPlDKIdtmBWrwoKXf
	 VYwLEVv95//qrrkQYy0LELnhR/5tIynUihYUdnJR/G92lBIubRtpYNVZoR5W1NcwCz
	 PWrNnF8NpPZfEIeIPLII7cpL2sPEGb7fgnqBXVFN/vqmQeUX59Pp20ogvcUvZTH3FN
	 QdnwAsRQOVZYQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 2858v4ph1074140
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 5 Sep 2022 10:57:05 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 6B9D88A4D91; Mon, 5 Sep 2022 10:57:02 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 2858uxQW1005582
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 5 Sep 2022 10:57:02 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oV7ud-00GAqp-F0;
	Mon, 05 Sep 2022 10:56:59 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon,  5 Sep 2022 10:56:55 +0200
Message-Id: <20220905085658.3854939-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_015755_503871_CC18979B 
X-CRM114-Status: UNSURE (   4.64  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] tftp fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixups for the "tftp" branch in next.

Enrico Scholz (3):
  fixup! tftp: implement 'windowsize' (RFC 7440) support
  fixup! tftp: detect out-of-memory situations
  tftp: make read() fail in error case

 fs/tftp.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

-- 
2.37.2



