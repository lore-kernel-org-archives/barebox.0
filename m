Delivery-date: Tue, 28 Oct 2025 09:25:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDf1Z-00CckF-2m
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 09:25:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDf1Z-0003aT-A5
	for lore@pengutronix.de; Tue, 28 Oct 2025 09:25:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gt1ucT0M9zAjyjUm7VQoy2BvWcOFo0+BcC0VQOb42rM=; b=IRC/JJF7ecpatRlAIvsSp3IIFt
	b9cX8w5O+4kqEGTzamyX4ipu2Fi/xUF1bqpH/VkBwFhuU/URQLMB03Ng1diriHEyLSjh0zjVd6RiW
	T0VqZ3AKqUPL0NIsHr8djFdNsBv1N6TTlfYrLY98rT4W4UTai9TxpUyMupS2pqMagt1RhxiKy7Tpb
	7RrPHCRdqNYOlSI8k9TegvcX+4OAhZwyK8bBvjK8hsYLVaDa7YsY4klaQ0v8F8o3NtpvRWGAV9QIA
	q4UvgpG8EHQd6XpeoCWuWZXNcWzjJDlD+KsLz0MRdjCbDtNOHiViJs14HaHRKRoQQa389enDyqupj
	7XsnSq3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDf1B-0000000FXu7-0AxV;
	Tue, 28 Oct 2025 08:25:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDf18-0000000FXtl-0nuA
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 08:25:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDf16-0003Tr-EQ; Tue, 28 Oct 2025 09:25:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDf16-005qOE-0q;
	Tue, 28 Oct 2025 09:25:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDf16-0000000BloV-2fSI;
	Tue, 28 Oct 2025 09:25:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027060850.2376494-1-a.fatoum@barebox.org>
References: <20251027060850.2376494-1-a.fatoum@barebox.org>
Message-Id: <176163992018.2805268.3684120643634372450.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 09:25:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_012522_254689_28AD83EC 
X-CRM114-Status: UNSURE (   8.47  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] console: print banner on every fully activated console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 07:08:50 +0100, Ahmad Fatoum wrote:
> On systems with multiple consoles, the first console is usually
> activated via device trees and the others later via board code.
> 
> The later consoles don't get previous log replayed and it can thus be
> hard to determine when the log starts when the console remains open
> between reboots.
> 
> [...]

Applied, thanks!

[1/1] console: print banner on every fully activated console
      https://git.pengutronix.de/cgit/barebox/commit/?id=a1fa242665fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



