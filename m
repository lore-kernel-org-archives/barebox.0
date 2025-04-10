Delivery-date: Thu, 10 Apr 2025 10:06:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mvk-00AkjR-3B
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 10:06:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mvk-00014d-F9
	for lore@pengutronix.de; Thu, 10 Apr 2025 10:06:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WqlcYTf+tsgkb4MN3lDpDQkTRwXg8o+5mHZeD8dnttg=; b=n7UFe3O6ZSX7VQGJbJFJpmYIZK
	tO2HZcKfiupyEwNiCbq9z3A54+qSSM2tcXYHOlivg4RyRmG1eaYpyjYg4CB2K10x2nfpeKestwNKy
	phZJREmxofQIcmp7W2FsDN8/Px6EmMpGDdFd1k84IBRznFCOnXvQzk63e1yblmLYr/Lwj1FP4Ghow
	DXLakSW+eQ3/hGwb0ALhZRIVXVwupO1QINdL2ZdRt8vVqg7wIYGR3MQ1dPRwAMo0vfO7svMVUgkJt
	pcZcq0MxIYfAJ8BSubBbbsW+3X6XOlLqxd+Z+yOG0JEW10qcgU4ABkcE0lqGv4nlPB2eQPGKxgW6p
	+pyBbqfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mvH-00000009fiY-3Eqo;
	Thu, 10 Apr 2025 08:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mQt-00000009Zqt-28p4
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 07:34:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mQs-0002jD-30; Thu, 10 Apr 2025 09:34:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mQr-004EWL-2w;
	Thu, 10 Apr 2025 09:34:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mQr-0098wi-2j;
	Thu, 10 Apr 2025 09:34:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250409131914.1949302-1-a.fatoum@pengutronix.de>
References: <20250409131914.1949302-1-a.fatoum@pengutronix.de>
Message-Id: <174427048184.2179141.13836150342339141842.b4-ty@pengutronix.de>
Date: Thu, 10 Apr 2025 09:34:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_003443_551616_27C71813 
X-CRM114-Status: UNSURE (   6.40  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] defaultenv: boot/bnet: fallback to booting generic 2nd
 stage FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Apr 2025 15:19:14 +0200, Ahmad Fatoum wrote:
> With CONFIG_BOARD_GENERIC_FIT enabled, barebox generates a FIT image
> containing a generic DT-based second-stage barebox images as well as all
> enabled DTs.
> 
> Add it as fallback if the image with the hostname is missing, example:
> 
>   Board-specific image: afa-barebox-lxa-mc1
>    Arch-specific image: afa-barebox-arm
> 
> [...]

Applied, thanks!

[1/1] defaultenv: boot/bnet: fallback to booting generic 2nd stage FIT image
      https://git.pengutronix.de/cgit/barebox/commit/?id=4ebbbe27c0fb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



