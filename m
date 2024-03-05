Delivery-date: Tue, 05 Mar 2024 16:34:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhWnp-009pdH-0T
	for lore@lore.pengutronix.de;
	Tue, 05 Mar 2024 16:34:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhWno-0002xI-I6
	for lore@pengutronix.de; Tue, 05 Mar 2024 16:34:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PE8jPOkAPKIhswqZ0oXvuaDtPxM5drCIKhDCCACZEeQ=; b=wtBiKpTGM3gKZofKNddDGs166H
	vABdQz16RSs0ErRaK4pVRvz2gkbZAMaENpNFBz2MVYYsQ5QMJAF6JJDKSMrZ7VU4OyuO7VQDT2bHG
	ypqHp3wkvYnKdT0oLvwHj5MNRy+2yxieTPlAZ4a/pfQXx5bAlcrJy/etrXCrkdaj1kIKK6fnT7Bpy
	IBn3jQjdvqij1AiqnBckLH5HGlEKUNGFv8yvOokGmwEnO1+BEx+Fcxclmd63pUNwc+zPPFZ9R8uCo
	iWL4eOOF8OXtxrA/z5bWRcV2v3s8dVO/n0/cCFnFJ3NjTMv9UUNnZ63QpUoJPUqiRQH6EK8FvhI6t
	JR1zpk0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWn5-0000000EHZX-3dWp;
	Tue, 05 Mar 2024 15:33:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWmz-0000000EHYM-2bk9
	for barebox@lists.infradead.org;
	Tue, 05 Mar 2024 15:33:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rhWmy-0002a5-6S; Tue, 05 Mar 2024 16:33:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rhWmx-004ZwH-Jt; Tue, 05 Mar 2024 16:33:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rhWmx-00Aah3-1m;
	Tue, 05 Mar 2024 16:33:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Roland Hieber <rhi@pengutronix.de>, 
 Denis Osterland-Heim <denis.osterland@gmail.com>
In-Reply-To: <20240305103241.2257742-1-a.fatoum@pengutronix.de>
References: <20240305103241.2257742-1-a.fatoum@pengutronix.de>
Message-Id: <170965278754.2524300.5750856071063503237.b4-ty@pengutronix.de>
Date: Tue, 05 Mar 2024 16:33:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_073310_928216_1D2ACD22 
X-CRM114-Status: UNSURE (   8.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: rpi: fix regression booting without
 VideoCore DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 Mar 2024 11:32:41 +0100, Ahmad Fatoum wrote:
> The Raspberry Pi firmware running prior to barebox can load a kernel
> directly and thus can boot barebox-dt-2nd.img straight without having to
> use the Raspberry Pi images.
> 
> However, the Raspberry Pi specific PBL entry points, store the VideoCore
> DT into a handover area for earlier extraction of fixups done by the
> VideoCore firmware. This doesn't happen with barebox-dt-2nd.img.
> 
> [...]

Applied, thanks!

[1/1] ARM: rpi: fix regression booting without VideoCore DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=d10e80e4d683 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



