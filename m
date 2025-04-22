Delivery-date: Tue, 22 Apr 2025 11:52:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AIX-00407t-0m
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 11:52:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AIW-0002D6-NE
	for lore@pengutronix.de; Tue, 22 Apr 2025 11:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zyCofUINfXkES6DN8jj0iovAlGOOvu+XrUmo5Zot9Sk=; b=xp191oHMRv9XQoVUwap1b/ap1W
	NYrsengPs9jcVab0IY9MGP2AutEylaaqqaLojXOLsIuUaAx0zrHztcRLKWwljvoPrw3x3tmk3BMBP
	tbXRul8bvcXfj1bPPHmyULuCTSjVqw5hGWyO20Yb3OFyEG8r4fT+InG+B3yuAoyCSCLf+WJ7yK1se
	yCGdCbM+kzpH7G/4qZRC6fpZ1G7H/6MDXAa9WHX6G7lNukMOWIhwRt3bOhtS1F2OAHf8W8Sigpe4X
	vnUXh3ohi+F4l5qRfXwHTKg8cmu+8ejMyqYU8jlkntxJ2F2vQkjp3khj8FQ6jAqph6FcLnxIxwh3m
	6wr1Hu8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AIL-00000006dF3-2Zv7;
	Tue, 22 Apr 2025 09:52:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78nu-00000006GHe-3h6y
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:16:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78nt-00054p-He; Tue, 22 Apr 2025 10:16:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78nt-001WFK-18;
	Tue, 22 Apr 2025 10:16:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78nt-00Cabx-0v;
	Tue, 22 Apr 2025 10:16:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250417194127.469297-1-a.fatoum@pengutronix.de>
References: <20250417194127.469297-1-a.fatoum@pengutronix.de>
Message-Id: <174530978928.3000658.13524890206255590325.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 10:16:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_011630_921218_4E8E3FD7 
X-CRM114-Status: UNSURE (   9.58  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: cpu: start: fix ramoops and OP-TEE
 co-existence
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Apr 2025 21:41:27 +0200, Ahmad Fatoum wrote:
> arm_mem_ramoops is supposed to take the end of memory as argument to
> drive the ramoops region's start offset from it.
> 
> Instead, arm_stack_top was passed, which is separated from end of memory
> by the scratch area and the OP-TEE region if it exists.
> 
> The scratch area is just 32K, which tends to be  much smaller than the
> ramoops region, so being 32K off didn't matter much. When we enable
> OP-TEE though, the offset from the correct location is so big that it
> can lead to probe errors:
> 
> [...]

Applied, thanks!

[1/1] ARM: cpu: start: fix ramoops and OP-TEE co-existence
      https://git.pengutronix.de/cgit/barebox/commit/?id=9658c3cb8ac5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



