Delivery-date: Fri, 20 Mar 2026 07:36:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TT5-002w0A-1c
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 07:36:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TT4-0001rR-Ee
	for lore@pengutronix.de; Fri, 20 Mar 2026 07:36:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9jmpM9Np2U0KBVLFjIQdxByFbVNvkfaWem/at5Oi+x4=; b=HTz+8ufXPB6ZFGA7uIvBdsYpf5
	8HcIu4ZSpMFMolvXZm5pKkuQOKrG/3mHFQG4XZ582kgR+T94SgRdoZywQdn1Eq3AjpyAGQmK60N3/
	okS8c2sNixoNxZI4+MLwowCJ/NxGFD5g7Ihc88znjXtd0kaJVpTWQ8nBSfLXeV+6qJD5+tFEJGsPL
	E4ca9gDNDMnXgkG8o9/j4HJvUtirN52/HEPgEb/v1hijyRC1jLuoC5r0RASXv4Y9WNSF7K/r7Bw/c
	7rwvngrqULvs1rF6zo87nc7CmtBx61KyFH+EHJLyvK45MI70kAw8HFt6o16FCfzoIHwdEimbYhe9/
	Ox0Vk2dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TSh-0000000CBLy-2MQU;
	Fri, 20 Mar 2026 06:35:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TSe-0000000CBLD-1viT
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 06:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TSc-0001kS-Sk; Fri, 20 Mar 2026 07:35:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TSc-001CQ3-2F;
	Fri, 20 Mar 2026 07:35:54 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TSc-00000001Tko-2cGD;
	Fri, 20 Mar 2026 07:35:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260317134755.3184029-1-s.hauer@pengutronix.de>
References: <20260317134755.3184029-1-s.hauer@pengutronix.de>
Message-Id: <177398855462.351287.18077361694020239743.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 07:35:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_233556_502458_1D6D81B4 
X-CRM114-Status: UNSURE (   6.84  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: rockchip-otp: implement SoC UID reading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Mar 2026 14:47:55 +0100, Sascha Hauer wrote:
> The Rockchip SoCs supported by the rockchip-otp driver have a SoC UID in
> the OTP data. Read it out and forward it to barebox. The raw SoC UID
> goes through some crc32 code before it is used. This is based on U-Boot
> code which itself is based on the Rockchip Downstream Linux support.
> 
> 

Applied, thanks!

[1/1] nvmem: rockchip-otp: implement SoC UID reading
      https://git.pengutronix.de/cgit/barebox/commit/?id=101b25168f3c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



