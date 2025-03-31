Delivery-date: Mon, 31 Mar 2025 08:58:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz96M-006SsY-28
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 08:58:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz96M-0001LZ-4x
	for lore@pengutronix.de; Mon, 31 Mar 2025 08:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yH9raeZYZN86YZi368LF+/lv7SWMIDMkEmHO1ECR+Wg=; b=h7T1omrFu2BlbejAzVKV5+qHXF
	gZbW86MUguieDmO2v6Y2FcXYZy3yV3Z9Q3Y8JrPBlyIU/0m477Zfv1SxQOeF5pRH4zyKJmy1KFDcU
	rQeEMawj7QcgeiKYgz6h8GSReS3klSVhwc6KxVn4v0c2kO46pSd+ZeEb+ieorW/L2toPk0/KB/sDe
	gOn7Hrr2B7wth/paOpEP+hJfP4wqvH52JxKqfyDEX6PlAhGD3vrxpdNLEVMlH1GAhWP2+1BGGJkCP
	QFuyv6YFOQFx+cBF/kV34J93y69RQkgRhyxGRogWZf/HQnMg4926ULG+7w0NK09rTzeojfk1An0h0
	TTfEeU1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz95v-0000000H99t-0hJX;
	Mon, 31 Mar 2025 06:58:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz95r-0000000H99B-3pFL
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 06:58:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz95q-0001Gd-Ei; Mon, 31 Mar 2025 08:57:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz95q-002Y90-0s;
	Mon, 31 Mar 2025 08:57:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz95q-00157K-0f;
	Mon, 31 Mar 2025 08:57:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250328083424.512384-1-a.fatoum@pengutronix.de>
References: <20250328083424.512384-1-a.fatoum@pengutronix.de>
Message-Id: <174340427820.257953.936746885738788608.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 08:57:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250330_235759_957126_F380693A 
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] blspec: drop explicit devicetree "none" handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Mar 2025 09:34:24 +0100, Ahmad Fatoum wrote:
> The bootloader spec mentions only that the devicetree key is optional
> and doesn't list none as special value. THe barebox behavior on none
> is completely bonkers as it attempts to delete barebox' own device
> tree, which nowadays fails with an error message.
> 
> Drop that special handling altogether.
> 
> [...]

Applied, thanks!

[1/1] blspec: drop explicit devicetree "none" handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=6bedeada3252 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



