Delivery-date: Tue, 10 May 2022 10:13:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noKzr-00813z-G1
	for lore@lore.pengutronix.de; Tue, 10 May 2022 10:13:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noKzp-0000Mt-Nc
	for lore@pengutronix.de; Tue, 10 May 2022 10:13:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iOX0ySGNyM/J4d5sFXn/zDohrlp0JZ2uWBpAKZWoK4=; b=SYirZxyYeUfp8c
	k5iTKmBB+KCctUsaAKTwiDe7ZFEJ40JmXn3awyb4u38TQUctLI3PWmzFYW0l4MalqiqJG6/7q3/to
	NN/Du7vuK9JHpgRP6fcicT1Mqf7Wm7yotst6MDQNTheQ9RGf8x4B21rQ4q4KwW8+VcuPN+HWnEdL3
	knb6P/fD9JLTwP6uwvCPsWKxazzI2G1mF+8OVAQ9yaDCgcgCSVlzyXj/SNXQmLysoQbAAfSyFu01t
	NoOuVwWgFZD5DxNmgQMthVqJhAPCqtgSK3HdhwID8ifWAz4NXD50EodZM4coyNidaT4o1fV2grurV
	Rad4hpEKZ5+hKq2WuERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noKy9-000YCu-LB; Tue, 10 May 2022 08:11:45 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noKy3-000YAn-VR
 for barebox@lists.infradead.org; Tue, 10 May 2022 08:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652170290;
 bh=99KlqcGBTb/JU/Sjk3BbwOXdK9vpGXvgNFJIBW4Lfqs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JUgePDaPE9A9TShwoqpkzpobBvYUxjaBe3pcvSku6EvZiQVEqEVtmepK77N1qaKA5
 zhGZ1jfaf/EbDqP+vMuAFPNB6IsEwPqMVqvXIayM+4cvLEbTlJlNnQ0a1ryaY5V8Dh
 yXhWlZtyoynSO2zcLKefKfw5Yue4tikH325l52PE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.224.181] ([157.180.224.181]) by web-mail.gmx.net
 (3c-app-gmx-bs05.server.lan [172.19.170.54]) (via HTTP); Tue, 10 May 2022
 10:11:30 +0200
MIME-Version: 1.0
Message-ID: <trinity-e9285084-1a6d-4f4b-9552-ba07aa2d8aee-1652170290235@3c-app-gmx-bs05>
From: Frank Wunderlich <frank-w@public-files.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 10 May 2022 10:11:30 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
References: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:y5w3byU+E3S6TJPjKsO9XHXRtxKy07yLfO0fzQ3ADHHl4QvMwzwRni6aLgop6RPPoSy/F
 9fNfZtTaSpYTTPSoluF36oY7Gm03VgmgZRgwpF6yO3LFT2yI9PrenqW291c/Skye/Ps26e4o1QrT
 zAq1+onW+fCQTLEFacfTpv3YTbUYke7Vp3Av7tZMhOlBJCqbe/1YSqbqgj/PYafDH2W5QUoJqUn9
 bNC5erFtHGDe0A90ZNxRDHADF8TP3BxtWW2/EkHkjIbDX2MCCVD1ZZStmtke//wEJLzTwYp3RP8K
 yY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:v9R2ZtQd4hc=:lbSnw7qIfxgOuhY+DdhzAN
 fcABRBIbmNEbfWmQOPdgRD/dEFhP6sS4r4r64Ow17JREdiynEJTtGC2iQlrFDHA1aIGZkBH/W
 fOsOl94Z6XfG8VLjD3exTgd0WJsoC1B2SnAgszqmHkak4OP9Avb6eql6gz9z+cX24RjFbiK03
 lqhPxLqwSovOb4CJ9Lydmuvkr4mWUDuhmlTofuOpJKw0qEJ3cq48GIjc5PmLqKNWDylSrjDCh
 /xLHu6NT3FYcpb/OEIaEj0I5/eg8rgd4hZxjX4J5G2eWIIac19nUKzDphqNgBsRG0JdLBdU1u
 2Yjm91117H+4MFiWE5Ly1GZeRPGzpOxJ5A0prrczookj9ziSvdMmp0AGEShkqMzDJ5tuAVQ7h
 vkI0Pqz/wdJDj844+eDo3PpVPs/BtMDlzZThkHBosbaMDFmiTrIeFUZWTVpNZ15BSzkNN7ne+
 srmjqIZ1HR5HHMmAaegahu609auSTAQYcw39UZgo7te3sUEKdpEEXmdTOnrwffz+x0v4zgfcI
 z6UxExHeg0o2TyW4u0lgy0/baNSvXuoEviTZdsjPBKK7iGV4Geh+GQigYPn3ZYcDhg45CG8tQ
 Om9hx9HujEPY19gPvNzY2XdkGmHydL304+lho+xPwyxRfFHwRgM491F8mTJl1KVhh+WbXUaB7
 TvKl70NXKtDiZVm0qJF+GZsDN0CNTWeZJmAjkfn8+7IB/UFgq9u+t2OuJj0J6ACAaZqLFR2eQ
 AJ7zeoU+DIX5bFtRoMUQG0QkTXQzVFB82U5an1smJdsnvrP+XrMUsh0YD93I0pUi10i7dGnd+
 4gdEYRH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_011140_592080_D7DE1962 
X-CRM114-Status: UNSURE (   9.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: [PATCH 0/2] align rk356x drivers as preparation for mainline dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

> Gesendet: Montag, 09. Mai 2022 um 13:36 Uhr
> Von: "Michael Riesch" <michael.riesch@wolfvision.net>

> The changes are tested exclusively on the RK3568 EVB1 -- Frank, if you could
> give this a test on the BananaPi it would be great.

currently usb on r2pro v1 is broken in barebox. Have got it working for upper port and then applied this series.
It does not seem to break anything, upper port still working in my local repo (based on master).

> Looking forward to your comments!
>
> Best regards,
> Michael

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

