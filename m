Delivery-date: Tue, 18 Mar 2025 11:23:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuU6y-000zz5-2p
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 11:23:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuU6x-0005EB-Pg
	for lore@pengutronix.de; Tue, 18 Mar 2025 11:23:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RRqoHVw1X3PUcQBgX4Ug93yWxdyUqCPMGsCXDln/gdw=; b=IYXERLCifHXo1xvcha991BZbXS
	x6/m8xm9hTAwIvWzOKP0ypUeF4fVj52q1EvPza8NSLxMHUZoBiiJDq0RB5qQUvXbqywwevWf+anUt
	wIsxj1IogFSBCam60g2oSD00biqSH7tZtCCc00IQiRkmMGVK0ip1drVtHMlO7v8uzSE0SWmTTTD77
	gaql+aLBe69eECDGcBna+XgW1e5MV+k4bUNCn2H5UG8u2gsvr+1QhLf39+Tk3PQsPO2ZNJcaFH50+
	vLuA/IKC8J0l8QM9FY/8FYTJt1qsyXT46nQ/Q1faEqzy2g1rkEjMg+3RzIVXRXd1BAkXpVudD5Tyw
	WYhqTDfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuU6V-00000005UIC-1ZuY;
	Tue, 18 Mar 2025 10:23:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuU67-00000005UCd-3wEI
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 10:23:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU66-00053Z-Js; Tue, 18 Mar 2025 11:22:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU66-000PRD-00;
	Tue, 18 Mar 2025 11:22:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU66-00G6uy-19;
	Tue, 18 Mar 2025 11:22:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
In-Reply-To: <20250318082435.419053-1-a.fatoum@pengutronix.de>
References: <20250318082435.419053-1-a.fatoum@pengutronix.de>
Message-Id: <174229337835.3839813.3617173015969684887.b4-ty@pengutronix.de>
Date: Tue, 18 Mar 2025 11:22:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_032259_982871_DA9B9DC0 
X-CRM114-Status: UNSURE (   8.97  )
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
Subject: Re: [PATCH master] partition: fix reference to wrong cdev in
 warning message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 18 Mar 2025 09:24:35 +0100, Ahmad Fatoum wrote:
> For MBR and GPT, barebox creates links to the partitions, so they can be
> referenced both by index and partition label.
> 
> Failing to create a link is not an error, but results in a warning
> message. The current message claims that the link was pointing at the
> parent block device's cdev, but it actually was pointing at the child
> partition. Fix that.
> 
> [...]

Applied, thanks!

[1/1] partition: fix reference to wrong cdev in warning message
      https://git.pengutronix.de/cgit/barebox/commit/?id=a0ba27e06535 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



