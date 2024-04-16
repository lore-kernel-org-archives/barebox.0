Delivery-date: Tue, 16 Apr 2024 12:01:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfdK-003Bmp-35
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:01:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfdF-000574-LB
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:01:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=74bVS5EjF8vlpmptKh0STgW+490Jwgqi+d3WHtEctZE=; b=OYFv9vPHb2XLs8ajcPx34WnMEN
	FUtAVCgS7/apkT2pRxmlMFpwriDcb3Gf+u/jaxVWOFcKwVwVAUjB0BSuZ+rxK/uRhTz70pR2bHqm0
	rm0ZVWFwe3Hfq6/NZXyKlJfJwXc6egnGQW7dk161QL5TcNZQ3vQeRwtd7gtAbVcoJqPcwIAetWtl7
	yM558lHVeQ9usClRXIZW/BSzafZdkpq/U00soh5sSF+1ZR0KjUNrOzNGlUExNp24Y92DgNYIEUste
	aX5iPz5J+PuYrPHvtyqgNMH3rjHOpPU4uHVPLVBMq4H93+59C36s3OAHTCUpUtZcri29LmM7LyH13
	grgq7oXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfcV-0000000BhA5-23t9;
	Tue, 16 Apr 2024 10:00:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfcN-0000000Bh8T-46cF
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:00:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfcM-0003jf-Rk; Tue, 16 Apr 2024 12:00:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfcM-00CaLr-FL; Tue, 16 Apr 2024 12:00:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfcM-008RG7-1L;
	Tue, 16 Apr 2024 12:00:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415091448.3824223-1-a.fatoum@pengutronix.de>
References: <20240415091448.3824223-1-a.fatoum@pengutronix.de>
Message-Id: <171326164641.2011341.9693149130588189867.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:00:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_030048_062248_96C5405B 
X-CRM114-Status: UNSURE (   4.92  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Documentation: aarch64-qemu-virt: add name of
 defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 11:14:48 +0200, Ahmad Fatoum wrote:
> Commit d00b07dd14bc ("ARM: Remove qemu_virt64_defconfig") dropped the
> defconfig in favor of multi_v8_defconfig, but missed updating the
> documentation. Remedy this.
> 
> 

Applied, thanks!

[1/1] Documentation: aarch64-qemu-virt: add name of defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=26b637912f30 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



