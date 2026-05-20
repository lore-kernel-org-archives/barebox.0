Delivery-date: Wed, 20 May 2026 14:41:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPgFG-001rce-09
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 14:41:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPgFF-0004xE-Fh
	for lore@pengutronix.de; Wed, 20 May 2026 14:41:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=t+S3Mqnkpo3p9m8WBJXfnz4uvkGh8JIM+8xDma4zcZU=; b=AUmp4I5ulSMv/5Bdabw5CbRS8H
	Kvz9tcGIp3hB3r7nOv8EKjpAf/anm7aoOdwdq+CutgzfU5kVpR2miujnt7aJXb0H+q4VK6iQHYAIQ
	usvYH6U1Ltl5Z6kSgVAANCMFTC6/wPXtJ03W4sl0Qu/+3wLRbCklZq3Obr+VPIDfeo/hapzUSeHzV
	Bn9F9UgSP1Gc3UTzyaY5OKbRNfgJgmtiREXSqfc6sJ1c37xJYsIvaVxywuFDezrlTUerSeCXHeMiT
	08PW+KjWpKkAqRlfv80G0RIv79XlHOst+oPZ352K0BJN8ZWVr2hwjGwurDQAGnAUEqobUIGO49OBG
	13v0dpXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPgEA-00000004agA-1iCf;
	Wed, 20 May 2026 12:40:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPgE7-00000004afB-3TSq
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 12:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wPgE5-0004l6-Nb; Wed, 20 May 2026 14:40:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wPgE4-000vwL-38;
	Wed, 20 May 2026 14:40:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wPgE5-000000025dp-1sxa;
	Wed, 20 May 2026 14:40:41 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
In-Reply-To: <CAP1tNvRtsajFJ25x6JGw4dvDB-EGAdABYFrg1sFpYMYZ7XCJtQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 20 May 2026 12:40:40 +0000
Message-Id: <E1wPgE5-000000025dp-1sxa@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_054043_872257_501357A0 
X-CRM114-Status: UNSURE (   8.68  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-20 14:16, Alexander Shiyan wrote:
> Hello Sascha.
> 
> There is only output from sdram-init binary, then silence.
> 
> shc@gentoo /home/ARM64/barebox/firmware $ ls -1hs rk3568*
> 396K rk3568-bl31.bin
> 4.0K rk3568-bl31.bin.gen.S
> 460K rk3568-bl31.bin.gen.pbl.o
> 4.0K rk3568-bl31.bin.sha.bin
> 64K rk3568-bl31.bin.z
> 456K rk3568-bl32.bin
> 4.0K rk3568-bl32.bin.gen.S
> 624K rk3568-bl32.bin.gen.pbl.o
> 4.0K rk3568-bl32.bin.sha.bin
> 168K rk3568-bl32.bin.z

396k + 456k - (64k + 168k) = 620k

So the size reduction you see seems fine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


