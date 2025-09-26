Delivery-date: Fri, 26 Sep 2025 14:54:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v27yP-001Kp8-1T
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 14:54:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v27yO-0006Pb-UQ
	for lore@pengutronix.de; Fri, 26 Sep 2025 14:54:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NhMXOnds3etj+es1lkg+GnsT5DIRgP6el5hvuVBu0zE=; b=D1frxctf/A/JBWYNoty6tidlkg
	kwVDBqGBu4hGr6GJmRiWX13qqBxuNaSgGB/JisCxImkmYrnV2Frv9cgJq4INJYr9r9w9bI9KSDfiQ
	dZJnXFQPVA5s4r5xNQZPIpQHb+XimUhHu0mMlT9rvB606u2eNnVXrGbAQCwc6QC1qMgirpsECRCpA
	x/JxmgEsGZn1BIi+bVqRnG4cVEJdm7tuzS6sUgfPeMARJ7aDlLfyuJMLdogQ/9yga4hPJDpcMYe6a
	nr7NeWMKEosJohf3cGVhP47R/O9nXOUuj6M9TtHfwqcCrf9qqniz+/CnkpBXra1pvwf3Dx3ZpNXTp
	3uETVIPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v27xy-00000001Kfq-0VL7;
	Fri, 26 Sep 2025 12:54:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v27xv-00000001Kdj-1WQv
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 12:54:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v27xt-0006I9-SZ; Fri, 26 Sep 2025 14:54:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v27xt-000aq3-2G;
	Fri, 26 Sep 2025 14:54:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v27xt-0000000D9rG-2gvm;
	Fri, 26 Sep 2025 14:54:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250916101213.762678-1-s.hauer@pengutronix.de>
References: <20250916101213.762678-1-s.hauer@pengutronix.de>
Message-Id: <175889126163.3136080.7544434041524264930.b4-ty@pengutronix.de>
Date: Fri, 26 Sep 2025 14:54:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_055423_404169_239D2D93 
X-CRM114-Status: UNSURE (   6.96  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: am62l: Update SCMI clock ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Sep 2025 12:12:13 +0200, Sascha Hauer wrote:
> This updates the SCMI clock ids to the ones used in recent TI TFA as
> of 229d03adf ("PENDING: feat(ti): add missing scmi pds")
> 
> The SCMI clock ids have been refactored as a result of the issues raised
> in [1] and [2]
> 
> [1] https://lore.kernel.org/aCcSG5ah12N0yOwi@pengutronix.de
> [2] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/34834
> 
> [...]

Applied, thanks!

[1/1] ARM: am62l: Update SCMI clock ids
      https://git.pengutronix.de/cgit/barebox/commit/?id=32912596a929 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



