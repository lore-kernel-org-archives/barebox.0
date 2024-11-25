Delivery-date: Mon, 25 Nov 2024 09:37:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUao-00083J-1v
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:37:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUao-0002Il-Hx
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:37:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=afnGRhnq92710v31QobKrYtlmGw8G6ngbo0yXRXzACY=; b=48Cxvfj5+ZFkNqa5rLT08VMl5I
	hw76RnwE+8VdVHVXsjJWBW+BchgFc2XmxWo6Qd01L6Pvtynw2q/3W4ade8qTomOJA1L61G6me6WfO
	aLHPGtT/ZBoE6gr1Ws6zna+vCEftWwwZVDnCSABi5DH7lHnBgdbviGV/X55jwE7XIxNFjGUiPA3bR
	J1ZMrBP3YqfSC6ZXRs7jYkkn7ko8/SkzVu3GLY9IiBCdNI5Abc5pecG+85I32WjxaeM0mAtqAX6r1
	GhHVDE3DyvpLMSGBLO448o6hy8d01FgEK8xnA+fkcisjzXeJy+AjbhzO2vIj4YPs/duR3Moop0T/l
	mKuJEv4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUaR-00000007P9e-09zr;
	Mon, 25 Nov 2024 08:36:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUPk-00000007NKS-3YrE
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:25:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPj-0000yT-OM; Mon, 25 Nov 2024 09:25:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPi-00032B-2Z;
	Mon, 25 Nov 2024 09:25:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPj-000hbJ-1c;
	Mon, 25 Nov 2024 09:25:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20241119113328.2024731-1-u.oelmann@pengutronix.de>
References: <20241119113328.2024731-1-u.oelmann@pengutronix.de>
Message-Id: <173252314749.167594.7285114821111673319.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:25:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_002548_881561_24258A44 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: skov-imx6: switch barebox' environment from
 MBR to GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 Nov 2024 12:33:28 +0100, Ulrich Ölmann wrote:
> When barebox is booted from an SD-card the latter is usually not MBR-partitioned
> anymore but instead utilizes a GUID partition table today which assigns names to
> partitions. This allows for more flexibility as it is independent of a specific
> partition number. Chose the name "barebox-environment" for the partition that
> shall be used for storing barebox' environment.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: skov-imx6: switch barebox' environment from MBR to GPT
      https://git.pengutronix.de/cgit/barebox/commit/?id=12faae2ee53d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



