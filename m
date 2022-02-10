Delivery-date: Thu, 10 Feb 2022 16:24:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIBIe-00BueB-IU
	for lore@lore.pengutronix.de; Thu, 10 Feb 2022 16:24:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIBId-0000qi-CS
	for lore@pengutronix.de; Thu, 10 Feb 2022 16:24:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pJjxzCNNDItk7xol9a6z625jWHlpfZpGwVEOvFWBS8=; b=KFh3oNoF+4tffN
	uNnQQeEe4HqmJ4JAqTGvKmE5xW/WHb6oO/4+spuBDukawISeXjXRJUnLAWZNrGJVRHs7VBT3SDTkr
	8snYUW393STdUHxUU8Z6gFXR7z0ITnj8uokzWxgtivSAgx89IVBH2xmJ6to2WzlCqjzxSJJbFgV4m
	lIbPzU2pRGwXdqcjc207zfLG0dFbXxnQNkqxkEjLCAtHR9RE+Jf+80of9UQ/UMdTw3gJmPIk5RvCa
	brxOGxKrPOKtsK0yrCQxPC7T6pfL47wdXKmkuPZY6Ya6R6/Bu/MWPZ/IE4Tkh55xdlrAJhsWpenei
	uzyjMoGJHOjJQ8+2UnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIBHF-004DCn-01; Thu, 10 Feb 2022 15:22:33 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIBH9-004DAY-Oz
 for barebox@lists.infradead.org; Thu, 10 Feb 2022 15:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644506542;
 bh=q2U/Jwc5sMC5XAkNx8+CcK2GOM3r9jT+GxHSiRoOKnM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=apCp3cRkfiz13TgsbWkHJxbvrfSCOQNhnBkYgdGoc1v8ccd9VaUdTBMHu5y4UXwTR
 zZlc78Ly2pHGyBAgFP7Yjteq8BvJeJGZOemkxxMQ3AvUp+fP76I2thOlvVkqMk4nAm
 SXdaGkmGTq5aWAQYWMym3yCLWzjSm1SrPpiFM4pc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.78.143] ([80.245.78.143]) by web-mail.gmx.net
 (3c-app-gmx-bs17.server.lan [172.19.170.69]) (via HTTP); Thu, 10 Feb 2022
 16:22:22 +0100
MIME-Version: 1.0
Message-ID: <trinity-428345f2-04d4-4905-9cf6-42ed3b3f5d4c-1644506542395@3c-app-gmx-bs17>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Frank Wunderlich <linux@fw-web.de>, barebox@lists.infradead.org
Date: Thu, 10 Feb 2022 16:22:22 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220124085513.GX23490@pengutronix.de>
References: <20220123165149.158515-1-linux@fw-web.de>
 <20220124085513.GX23490@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:ttim9wdHjisUsLv2q4P9ftJWsr75jjU1Pzz3GSac9BCmHZP9QOttWIolypGQo/OCagL6I
 RGxGVTuSa5inPjT1uCPUkEqz2s2/YD1SpvIsmiMDqGOc2UmL5fZ7n9qZckjezrSn/1oAP0BMHV1r
 G1gMyQFSd6vFhL18arRxADRaPDvqftA0XLXspey+W3wmKrEXnb0ck5coqhdxaDYcDTK7TmhGJ+3E
 Y9P+9VM24sugDybDAftyOKcnNny9KwpyBVmt8hpZV/2yzbzm7jYO5P3GNGsiWjeu0Pj+q/Wd9UMF
 q0=
X-UI-Out-Filterresults: notjunk:1;V03:K0:1XjLjE4v8Vc=:5dwsWBpYebKOo03Aeu6rGa
 0cpIbDNMKfukOsYY1KrGhVc+2J4d/YiIyDlYN1iNHh2XYQCcq5OjHqrZGPCSE/tc9jjVqGPEQ
 WMNIuVgSbhYKZZWL6LINKi/mtxiMgRmkVFt7qY58RSFGJ1jWgzpfN/fVx98SwsCsa+RGLWqx9
 yE63nHoKjFEE5g4EEMe0DxxgmD8LjrbzXxsJoXntHDxcuxOqnNkcna2SWYt3+/E2kP7tXPP/+
 Am8xaRGB5a2BROlnDTG5L01kQpOtj+HyUFdfYbPaX9cmlslVLZKl4FHRP2FZ1Lz3ZNmD5eFl3
 zlhbkxpHHdGZ/iUEIhhMl1KFWrss4tFjwBUEjszKAaWnqIB/oIX/hArjHbmWRnQyrtpSYFl3q
 Y9tAyvjeHxdFcLVWOcMnA26En4ADOmjnAcLi/AU4JZWB29EGUwVCgnwiYNFcRopHi9L3Sc/h3
 eebtPrxBrJqmSZtX/fHMe+DCWKPmZRTWxNW3DyMj1WQiO2xbhf5ZTHYKXsK/5j51Z4xtxN1SB
 4ajm8CvOy/ktCq5MfKBDlIZru7yPR12QxYuGOxd4NfNElzzW0H0NYyO7Az2s+DvzdTYKSAHIm
 J16moVPDmOs9XPce+v8TUeQyfTNqjSR6NQLnREu/CCqad0MTlv12j9VEeZBSTK9bWu08msDkt
 /w6iLYgxWy0SMTFPV5KTwn+xJMMaeyBucryL0JbKyxXmuyJ0kkzQtPkex4w7Mfs0rguqPyM4J
 ohXtoIxdzMVmFP0U80CNu7bdvaKbamrc1IlOrHpF3WI18cztLeT199QsnHUzGhznS4xo369sA
 CfnuJJ3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_072228_121827_A60F0083 
X-CRM114-Status: GOOD (  13.62  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re: [PATCH v1] ARM: Rockchip: Add rk3568 BananaPi R2 Pro board
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


> Gesendet: Montag, 24. Januar 2022 um 09:55 Uhr
> Von: "Sascha Hauer" <s.hauer@pengutronix.de>

> I saw this device tree looks different from the one you sent for kernel
> inclusion. This is not a problem now, but once the kernel dts is
> upstream it will show up in dts/ in the barebox tree. We then usually
> include the upstream dts from the barebox board dts, so that only the
> barebox specific additions are in the barebox dts. Given that it would
> be nice if you could minimize the differences now already, so that later
> inclusion of the upstream dts becomes easier.

Hi,

after dts got merged to linux i used it to find differences and minimized them.

have not added io-domain as i don't know if they change in future and they are not needed in barebox.

needed to add tsadc+pinctrl and spi3 to rk3568*.dtsi as they are referenced in my linux board dts

can you look if the dts is now ok for upstreaming?

https://github.com/frank-w/barebox-r2pro/blob/r2pro/arch/arm/dts/rk3568-bpi-r2-pro.dts

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

