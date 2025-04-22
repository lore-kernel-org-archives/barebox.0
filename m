Delivery-date: Tue, 22 Apr 2025 12:29:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AsJ-0040yH-2f
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:29:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AsJ-0002IE-93
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:29:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5vrMZEuxJIRx8zGCdBMsR1PVFFHoBw9UZ0PoKR4X8Z0=; b=NPNNUFmE6JLcWNqBMLunPUo87L
	ofXxVyEa1fO300iDtVb2pyQMoTlRe95s/iub5RL5+ozWGKsyR8HYhBYtDq1XQ7WXoKbYBYofKBLVo
	t9L3l1DJxvDOpAOfW6ScOy7kpje7+u9LkL2bCFK05lWD1tLQnp/P4nZOK7NrFstNKmbt5LpSmOE61
	CGSgmRZ63gUlIm84O/FtwSUJh8e0AVhG4oqYrzBwvXziiu1GjgnCY0uJQdxfLEVke/knMWXxVlkSZ
	OJXSxbaxpCvzLS4D3WWSMWPq0xiOglvPeuvgcJ5LuBPdVSVF6cudyRfYZ7DO1ndIu0mLyGX165G3E
	dfZPW/fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Aru-00000006lei-0goi;
	Tue, 22 Apr 2025 10:28:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7A9v-00000006bOQ-0qPr
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:43:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7A9t-0000ci-Ji; Tue, 22 Apr 2025 11:43:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7A9t-001WuT-1M;
	Tue, 22 Apr 2025 11:43:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7A9t-00Cfov-19;
	Tue, 22 Apr 2025 11:43:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250416103748.265415-1-a.fatoum@pengutronix.de>
References: <20250416103748.265415-1-a.fatoum@pengutronix.de>
Message-Id: <174531499735.3020628.12302683947558484938.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:43:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_024319_241901_77F86EF4 
X-CRM114-Status: UNSURE (   5.74  )
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
Subject: Re: [PATCH 1/5] bootm: fix error reporting around
 optee_verify_header_request_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 16 Apr 2025 12:37:44 +0200, Ahmad Fatoum wrote:
> optee_verify_header_request_region doesn't set errno, so printing it out
> and setting ret to -errno is wrong.
> 
> 

Applied, thanks!

[1/5] bootm: fix error reporting around optee_verify_header_request_region
      https://git.pengutronix.de/cgit/barebox/commit/?id=3d1befed8f82 (link may not be stable)
[2/5] treewide: replace strerror of errno with %m
      https://git.pengutronix.de/cgit/barebox/commit/?id=35bd77810622 (link may not be stable)
[3/5] commands: memtester: fix erroneous use of errno
      https://git.pengutronix.de/cgit/barebox/commit/?id=95994cad3231 (link may not be stable)
[4/5] treewide: fix wrong signed value passed to strerror
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee7de46ae5ab (link may not be stable)
[5/5] treewide: replace strerror with %pe format specifier
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c486e3a0c34 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



