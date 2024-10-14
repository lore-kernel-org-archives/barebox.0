Delivery-date: Mon, 14 Oct 2024 15:41:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LJr-004HFo-16
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:41:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LJq-0004wK-Oe
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:41:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H7S++yhCp8iNU3Z6s6zheeKbelH0LgBD0GsQZ9YTS4c=; b=KzKgGuFLWjJ/hl38fNUCP9W8+a
	QcRLzjLqBtvJ8yTuEcW8e/8JAqfQRpYe6S1c6V56odNqPz3GrrTPKDN0rCCwx/20hVfBglXY3jfQk
	w6+C9sCZ99Pmh7oQINdlvFtKr+yaedQDLMGM6fjd/0hm8K+eWZTkRXCGygqoy1Bu5ZF9QVOEM1cew
	paUpMIu38B7Xl0OSxkRESuLqhmisew4PCfVuwlt4bDmrslfTwFIYBLLN3lOPONANa1PGahednxS7a
	+GvgEPxwSw+iGhKzwrFCtnGKLoYG5py8AfHlMh4NP+afK8PhUqCztLTwoFz0Btha0B46/rr7+3n0t
	5+gbmMkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LJK-00000005KaA-0pha;
	Mon, 14 Oct 2024 13:40:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KVx-000000058pX-0DL7
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:49:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0KVv-0006Mx-KL; Mon, 14 Oct 2024 14:49:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0KVv-001nHx-7z; Mon, 14 Oct 2024 14:49:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0KVv-002zAf-0d;
	Mon, 14 Oct 2024 14:49:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241009055731.4115395-1-a.fatoum@pengutronix.de>
References: <20241009055731.4115395-1-a.fatoum@pengutronix.de>
Message-Id: <172891017119.711779.7791339640647587628.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 14:49:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_054933_122948_10A61B32 
X-CRM114-Status: UNSURE (   7.15  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM64: mmuinfo: comment the if clauses decoding
 PAR_ELx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Oct 2024 07:57:30 +0200, Ahmad Fatoum wrote:
> The encoding in the PAR_ELx register is a bit tricky, so add some
> comments for each if-clause to make the code easier to read.
> 
> 

Applied, thanks!

[1/2] ARM64: mmuinfo: comment the if clauses decoding PAR_ELx
      https://git.pengutronix.de/cgit/barebox/commit/?id=a5649492cd99 (link may not be stable)
[2/2] ARM64: asm: mark assembly entry points as functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=d28870eec354 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



