Delivery-date: Tue, 06 Aug 2024 07:55:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDA9-006jQi-0d
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 07:55:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDA8-0003v4-Ku
	for lore@pengutronix.de; Tue, 06 Aug 2024 07:55:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d7WArPy1GjBtr0ELfkC0Br+3LThdX/+2s8JRz9SKe2Q=; b=PCJ+DCi9p+Xsma17WFttmwNI0i
	hwEGUzyvLJ3ve2l2SBo0TA54S0dt6Mp7g+IAe7h3t/ZfT4mdHviVHWqn/khQpR8FOw/AbyHUn6l7H
	TgjifHn47nIMyKgBVVY/yzufMX+sEpvxAxF9LxIOyo98MsIHX3dDgRTfXOcM2SRskrpEoMOsCPnfj
	BpOZbGTBN0nBJdkD2I6QFRvD9nHqvtgzdZdSq7o/mm4XjNIHF5cEuBoS8tJhFIoVXFhCb1lQ6SOnK
	9vSr/MlpwK1SURfnM9XAvYuPFdIXz9lBr1kSh3JNCsBFosM/du4/Rtxrxp+ZsfGgzO8nmK0srv1Hv
	LJKzDiUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbD9e-00000000bvl-2zdn;
	Tue, 06 Aug 2024 05:54:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbD9b-00000000buy-0Ge6
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 05:54:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbD9Z-0003p8-GI; Tue, 06 Aug 2024 07:54:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbD9Z-004scq-3N; Tue, 06 Aug 2024 07:54:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbD9Z-002jaM-06;
	Tue, 06 Aug 2024 07:54:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240805163837.852102-1-a.fatoum@pengutronix.de>
References: <20240805163837.852102-1-a.fatoum@pengutronix.de>
Message-Id: <172292367702.651867.2279383539336182533.b4-ty@pengutronix.de>
Date: Tue, 06 Aug 2024 07:54:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_225439_134654_14B5BC64 
X-CRM114-Status: UNSURE (   6.95  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] optee: include linux/limits.h to define U64_MAX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Aug 2024 18:38:37 +0200, Ahmad Fatoum wrote:
> U64_MAX is defined by <linux/limits.h>, which so far was included only
> indirectly. To avoid breaking the build when this indirect include
> disappears, include it directly in the file where it is used.
> 
> 

Applied, thanks!

[1/1] optee: include linux/limits.h to define U64_MAX
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f46b786f0cb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



