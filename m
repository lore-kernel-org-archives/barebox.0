Delivery-date: Wed, 21 May 2025 09:39:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHe3O-0015pB-2K
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 09:39:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHe3O-00047P-5z
	for lore@pengutronix.de; Wed, 21 May 2025 09:39:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sxAGW5RQk5WSKEG5/a7mWSAhwS0dpneOCfuyG6ENb4M=; b=UCGSHbKOtTNpBAaGoLueD2h0PS
	lTmTB5BMwv1Q3/6udqqem7+DngieWqBRJZ6fWIDT06NDEfL9ilkADicysCfBp7iDFJIUVZZCh1jsB
	Q2Kt3RD1IKqbTqKMhNAyTIHJl/RdDthU9L9gDxdmwa+7RyaWkgzxSAenNXTiQK+N5I5q7fvTl8eO+
	ChmhThqLcvQGLm80sfUhg5ASivVsmu+bqticHeCMJvbQBCMBACM7AqW6Q+XcdbJVw7fCfdN8yHvHl
	w8AfuOBXeLDCdo3JSEy1AYvcpdQAGFVykK7b0KliHip2IWWIo6+2t3R5xV5+aSYGIScgmhNot18dj
	Glfa9wmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHe2l-0000000F58k-3LoS;
	Wed, 21 May 2025 07:39:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHe0O-0000000F4tI-2kc7
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 07:36:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHe0N-0003aW-E7; Wed, 21 May 2025 09:36:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHe0M-000XH1-1N;
	Wed, 21 May 2025 09:36:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHe0M-009Lqa-1A;
	Wed, 21 May 2025 09:36:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Robert Schwebel <rsc@pengutronix.de>
In-Reply-To: <20250520124118.73783-1-a.fatoum@pengutronix.de>
References: <20250520124118.73783-1-a.fatoum@pengutronix.de>
Message-Id: <174781300635.2228909.12531117286026339436.b4-ty@pengutronix.de>
Date: Wed, 21 May 2025 09:36:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_003648_695305_E2E724D0 
X-CRM114-Status: UNSURE (   9.55  )
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
Subject: Re: [PATCH master] of: partition: overwrite arm,arm-firmware-suite
 unless donttouch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 May 2025 14:41:18 +0200, Ahmad Fatoum wrote:
> barebox doesn't support arm,arm-firmware-suite partitioning and if the
> barebox device tree uses a fixed-partitions binding for a flash, it will
> overwrite a kernel partitions node that uses arm,arm-firmware-suite with
> the fixed partition binding.
> 
> This broke in the default case with the addition of
> global.of_partition_binding=adaptive, because the check for a compatible
> was successful, but the compatible was neither fixed-partitions or
> barebox,fixed-partitions.
> 
> [...]

Applied, thanks!

[1/1] of: partition: overwrite arm,arm-firmware-suite unless donttouch
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c9a72656f88 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



