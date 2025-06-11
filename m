Delivery-date: Wed, 11 Jun 2025 10:09:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGWM-0065Pb-0e
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 10:09:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGWL-0003H0-Li
	for lore@pengutronix.de; Wed, 11 Jun 2025 10:09:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WnM0Tr9lMBb7vrkcl/ThGmmUis7gWv0J+7CbqpcFUqs=; b=SmklR0kg7iIN1aiDVUOHFsMpgb
	kYDaca19Yu/fpAeqPi8NoudX0SS3DF2xvS9X3b/eKFrpBbumKcxWCJUBN0iTq7HQAaO/IIOecBPWv
	hZgtxxE5bBVLCSbb/mBvuCUa1E+vaI6gKbgsvtJKFOF+VS+3pKs76tD1ubUCM4f14Nt806QnUoDOj
	5CmL/E81UNSrTbhAUjeMiWMqYclovIPi4KmRIc1xkh6LL255PrIuy2VbSRDywwTjPdXGe6WXlRoqY
	OTNeJAjBXis+4yWtnx3wSYqHhhdzaDi3o0re8YRUmB+MJKjkckjQ3bvOrKsMp2XV6QtJislJXvWu3
	SMOCQgVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGWA-00000009Dgw-0nhY;
	Wed, 11 Jun 2025 08:09:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFTm-000000093xF-3Qd8
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 07:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=WnM0Tr9lMBb7vrkcl/ThGmmUis7gWv0J+7CbqpcFUqs=; b=PpbrUwJ9fMX45bFWIe/R8ICnoa
	TxLk44CO4dikk98rM6f7a+PsdESrZ3QAriLzxivJBPNi7wnWB8BqN9EgzFuwFISHVajMxIJaJX4dY
	zyAq/qvFc9fN0eO6/VSDPS8nu93AqqVZVrVALWNC7MUOdicDU0ydjT0dHSvsSisCsISQF0mM193gh
	wGPtskYDBUuKH5Of2MP0mp9OUBt/+4ZbF4WCG6E7j3wRcnYSu8N1rm02eacPFOWql3uwD9e4qg8bm
	qTE2As88s5CKoBmHyX+t5TUkZ78CF8WOfPTbUOpHXatu5SguDVHvvRFWLT6TXMuMdQH7wCjIGR7ci
	fGOwkEug==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFTk-000000029Mw-2T0C
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 07:02:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFTj-000853-CF; Wed, 11 Jun 2025 09:02:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFTj-002u6s-0c;
	Wed, 11 Jun 2025 09:02:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFTj-001mOJ-0Q;
	Wed, 11 Jun 2025 09:02:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250610151321.2926513-1-s.hauer@pengutronix.de>
References: <20250610151321.2926513-1-s.hauer@pengutronix.de>
Message-Id: <174962535112.424233.13125164499133576836.b4-ty@pengutronix.de>
Date: Wed, 11 Jun 2025 09:02:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_080232_888039_2F273158 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: Re: [PATCH] sripts/k3img: determine size of files, not links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Jun 2025 17:13:21 +0200, Sascha Hauer wrote:
> The input files to the k3img tool might be links, in that case we need
> the sizes of the actual files, not of the links pointing to them, so add
> the -L option to the stat command.
> 
> 

Applied, thanks!

[1/1] sripts/k3img: determine size of files, not links
      https://git.pengutronix.de/cgit/barebox/commit/?id=fa5b4ca1ed31 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



