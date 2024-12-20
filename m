Delivery-date: Fri, 20 Dec 2024 09:49:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYgu-00ANjZ-28
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 09:49:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYgu-0005Is-LC
	for lore@pengutronix.de; Fri, 20 Dec 2024 09:49:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XGW1bAOtB7ZtSPmMXOWJVcgA+AxypS5Hjd2M9KEFpFw=; b=mv69rz4LGze/6zIKwHk7tzzkbu
	pq66bBp1A9LRLOQlrTShsBHEm0r+a/UHPVfe3i97bZ4KIofGPhOfdkF8uNTujgdWdbPBiIrU6cyOF
	RM6UZk2IHoPF86IJybWScrgyo3/GtercjYEi0lTFOBNhGZkrttpQLBNJK4UiF00P3D40SpJ0uZdSR
	yT1e21Q5tHGAVmNx+apoKQu/ufDRi8XLqREFcpcs0fpNkoMoBycb6W/nqgSi7qvq52IRT1DQyFXmv
	aDAxBMA/kr4L6k9vj0ofzR4PdZfYWOFUPB8He7vMUBbWjfUrRSmwVg5BiGe6bfKRtldTQdUN/BO50
	slhDtjVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYgT-00000004KGf-2toi;
	Fri, 20 Dec 2024 08:48:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYgR-00000004KGJ-3DAe
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 08:48:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYgQ-0005AS-D3; Fri, 20 Dec 2024 09:48:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYgP-004LWq-0f;
	Fri, 20 Dec 2024 09:48:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYgP-00DDr8-2w;
	Fri, 20 Dec 2024 09:48:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241217140833.3693113-1-a.fatoum@pengutronix.de>
References: <20241217140833.3693113-1-a.fatoum@pengutronix.de>
Message-Id: <173468450991.3151505.6137373893262263392.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 09:48:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_004831_809145_18B308D3 
X-CRM114-Status: UNSURE (   6.97  )
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
Subject: Re: [PATCH master] video: dw-hdmi: fix I2C controller probe
 breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Dec 2024 15:08:33 +0100, Ahmad Fatoum wrote:
> The dw-hdmi I2C controller binding doesn't support listing I2C slaves
> as child nodes in the device tree. This is fine as the EDID I2C address
> is well-known, but trying to parse the dw-hdmi device tree node as if it
> were a normal I2C controller will fail:
> 
>   ERROR: i2c11: of_i2c: invalid reg on /hdmi@fe0a0000/ports
> 
> [...]

Applied, thanks!

[1/1] video: dw-hdmi: fix I2C controller probe breakage
      https://git.pengutronix.de/cgit/barebox/commit/?id=a1f21c191888 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



