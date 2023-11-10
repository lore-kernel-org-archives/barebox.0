Delivery-date: Fri, 10 Nov 2023 11:18:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Oaj-005gLy-0s
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 11:18:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Oaj-0003lk-Bm
	for lore@pengutronix.de; Fri, 10 Nov 2023 11:18:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S/yTpBFT0UYRbQ54F1Z6tmd9fBvtHK0PjhrPRlzLNS0=; b=xCP5Peggj5Ks0O3AyyquBBKVo/
	EztzjgIrRPEyvLXARijrm2qvEzqH+WLzAQ+sm/5qcO/r1cyp+mQJxY3LMUP104GZPELJUtS3f4KuF
	OKtXdnou/kIw3t+fWpvcnZzxQE3E0xYg0ag6xBIouCZe3Cb28K8LUg0Gd/WWZ0nbGwiXzIJPNCpOQ
	lFBGss4L2AkCzNvM7fCi86eOJBvk5Pnhbri+zSYOVF7yYmHRQel/thoJ5hZk+p1NBkR2YujGtBu2q
	d5Sb9faYGbzVMiI/+2ihKxpwfDcfEQAofOtWtwA/JqhTj+fEBiPBzqJJcWDgAGQPyoO9U/rAaFHTd
	XZ1cJ3eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1OZQ-008HAF-0P;
	Fri, 10 Nov 2023 10:17:00 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1OZL-008H1J-2a
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 10:16:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1699611364;
	bh=G1X5KAQpS5F26n17iSwJ16dsOrX9/hLrcxqUJ06a38s=;
	h=Date:From:To:Subject:From;
	b=bwMqlHoKg5hO7Z9BU4Afr7bkWNaCGklxdBhEu6kRxpj2p/grh9ZCJy22cZqYblQHs
	 96TGh4zRG7pRzFiwv+jHGlmXXwFNhy5ce/3eUnAfz8FzvCgmfhEWPIUhcV7bcq/p2+
	 KRKJvzdmVNFT6THCSEQPC1amP0gGrzrK1MlIl/0W3VnIzCT55FXRi8rYgfcASYz2rI
	 BEozYJj6XTBj/DP4HMO1cbng2xU+Ofwm8LZqMQAUWIqB2+DB4MAZBI7qKr01XBzAtg
	 +hEFeX/LAe8upVYLIgUBlvOnES8hy6uBD17AaQUvrN1jjxVZ7EYHzj70VW0A72ZNr3
	 QFxyKdV0BwwiA==
Received: from hephaistos.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 7492B401E3
	for <barebox@lists.infradead.org>; Fri, 10 Nov 2023 11:16:02 +0100 (CET)
Date: Fri, 10 Nov 2023 11:16:01 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <ZU4C4WtD8k3Xzl4W@hephaistos.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_021656_332002_3AD12836 
X-CRM114-Status: UNSURE (   3.73  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Rockchip rk3328 support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dear barebox community,

is something like the rk3328 supported actually? I have a Dusun DSGW-210
device here which _seems_ to be mainly 99% like a rk3328 EVB board (Olimex
rk3328 eval bord). 

>From the CONFIG options or cpu support files I would say no, but there
is dts/src/arm64/rockchip/rk3328-evb.dts which sounds rather good so I
wonder if this is hidden as a subset under other board/cpu.

Kind Regards
Konstantin



-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Strasse 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Gesch"aftsf"uhrung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



