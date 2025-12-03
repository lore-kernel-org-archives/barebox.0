Delivery-date: Wed, 03 Dec 2025 10:00:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQij5-007SUo-0Z
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 10:00:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQij4-0004lG-JN
	for lore@pengutronix.de; Wed, 03 Dec 2025 10:00:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IrCiQaOx4PjGQpwr8VQD5rNgTRSOaqyl04yjM/Zcf+I=; b=3E2eIzpfHC8Q6Ex7O0uQkIP9LV
	oI5c5hFyMjYAFweKqBvCjSRJres6mB2n5lCE0uYXcU2pRL/fSum9fP2Cfyppq7espj5PLDvxjfl85
	7OiY0Mz7/b9gqLs+HmUDyQG6zjEXAJpXSNk9qmGpjjPxRYQlewxq3n7PYiAYikD5rwycJZr1iZ9wX
	xSzptis2i2rVTP5pFdNJXzIbgQnDv716q0TYuTKGGYxp+FxbClLjO+VjP301rKjj2wgHjKwEmcc+k
	XP7XBDcYlqljGCLeCorYY5S7FMskknqOILLHpxbWC1+lRD0itZ0RAxVMRmCK/AQMb+uMKIbfHVZje
	/U3dNxeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiid-00000006LEy-0rYX;
	Wed, 03 Dec 2025 09:00:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiiR-00000006LE3-2nOZ
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 09:00:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQiiQ-0004Hj-6i; Wed, 03 Dec 2025 10:00:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQiiQ-003kSC-03;
	Wed, 03 Dec 2025 10:00:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQiiP-0000000EOOt-40CN;
	Wed, 03 Dec 2025 10:00:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251202092256.1565823-1-s.hauer@pengutronix.de>
References: <20251202092256.1565823-1-s.hauer@pengutronix.de>
Message-Id: <176475240195.3430240.14057389685142425705.b4-ty@pengutronix.de>
Date: Wed, 03 Dec 2025 10:00:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_010004_613184_6C73CD80 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: fix automount when last filename component is a
 automountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Dec 2025 10:22:56 +0100, Sascha Hauer wrote:
> When opening a directory in openat() as indicated with the O_DIRECTORY
> flag, pass the LOOKUP_DIRECTOY flag to filename_lookup() to make sure
> the target is actually a directory. By doing this we can skip the check
> afterwards.
> 
> filename_lookup() only triggers the automount on the last component when
> the LOOKUP_DIRECTORY flag is set, so with this change when /mnt/mmc2.3/
> is a automountpoint a
> 
> [...]

Applied, thanks!

[1/1] fs: fix automount when last filename component is a automountpoint
      https://git.pengutronix.de/cgit/barebox/commit/?id=500df27eb054 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



