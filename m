Delivery-date: Tue, 21 May 2024 08:36:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J6q-00Bor3-1T
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:36:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J6p-0000mQ-UT
	for lore@pengutronix.de; Tue, 21 May 2024 08:36:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eR7qBhn/LA4dYJbFBc4tAy0QMWwDp5gc9tFJvDBJs4Y=; b=mj16XZU36wgKi3DJNwD0d3VmHi
	uDkEc48EvXFlGLplVMS+om/N8YGBi6qATLzt0LF1HWjSRA/Cib9lsM5lL40XYnGo5smc0TnYJPs27
	+osGrTTuQjzgFYf8ISah5DrMoFksWRHojgN1xsS2eQBmdOFubLms1vaJ+00iJPzJYNAF8X4nJatgg
	4nywObLRXc+kUJ18Oj/UQbyIuB/RD5pYiwESXhJIm0Q3FGqiExyxzHAkOzai3KuP81EpgDxQeklDK
	nib3oDJg+1iPjf0geUjQbdqnfHgvUqzDKMvUAjjIqTIXh2TKY+EmBa0BRDXBED7zdpXQofcUQcKWy
	WaQhVyBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9J6N-0000000GUTA-3toO;
	Tue, 21 May 2024 06:35:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9J6I-0000000GUSC-3t0A
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:35:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9J6G-0000cm-Sr; Tue, 21 May 2024 08:35:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9J6G-002Lwm-GE; Tue, 21 May 2024 08:35:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9J6G-0060oT-1P;
	Tue, 21 May 2024 08:35:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517074754.767031-1-a.fatoum@pengutronix.de>
References: <20240517074754.767031-1-a.fatoum@pengutronix.de>
Message-Id: <171627335243.1433042.9954778603134213253.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:35:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_233555_001591_E206D10A 
X-CRM114-Status: UNSURE (   7.18  )
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
Subject: Re: [PATCH 1/2] images: sha_sum: mark as not needing executable
 stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 09:47:53 +0200, Ahmad Fatoum wrote:
> The hash section contains only data, so add a note that an executable
> stack is not needed. This will suppress a warning when we start using
> this on sandbox.
> 
> 

Applied, thanks!

[1/2] images: sha_sum: mark as not needing executable stack
      https://git.pengutronix.de/cgit/barebox/commit/?id=320b72bfc91b (link may not be stable)
[2/2] x86: lib: setjmp: mark as not needing executable stack
      https://git.pengutronix.de/cgit/barebox/commit/?id=628e7d6e5d1c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



