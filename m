Delivery-date: Wed, 05 Jan 2022 16:43:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n58S0-00BuZG-0Q
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 16:43:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n58Ry-00034o-O1
	for lore@pengutronix.de; Wed, 05 Jan 2022 16:43:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVgiKV/5LMelglIOWr5/apPdya13f9AjLi9CM0rE18U=; b=ncBRiihjBIJ9hh
	GAcgnoyLqAepyedVBUkLwoqT3jH3zaTeWEOV05+LGJ4xfXbmXB4+pvq1FshsRgrChRVAw0YummPEr
	La5KjiFi+KYaA0oK3qMhBQjHG6kEsPRRgLLR15+JKVjHY9sD/zRKlNbMmow1S3oIZOyo3nGyYNkKn
	Ejj43lPtIM9ZKMawPCk6azIEoN8r8mLUQfEoTL23NBnZ+8CRPtSGkhtzKcgtHsIQtkE2hbBeCodlx
	QpfKd9PvGvn3EZfxl3Kb6eKUZShVJO8tLZKpcamBEh0FZK0jfeTv8ByeNvYOsqktDyAFbOY1fnFwH
	FqCnyQwmzz/4e2/r/mEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n58Qe-00FCXL-Pb; Wed, 05 Jan 2022 15:42:20 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n58QU-00FCV3-2Q
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 15:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641397322;
 bh=pwlxprU5hJpAzjhdcqaq8GtCbswGoa9tqKZxKDodgos=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PTt41jGRyNLoJRdPMSfwjhbaLdUlAXeleKfJcMnp0a3U7hYiaVi9Q+TxlgvCkbZsi
 bIlVlL+azycB1LsT3PbNmFgktEihBr5keTYBPAOWFdWB+VrLcmE3AtoP0e5KyFfyMh
 6a/MbfGouv+1yiSOPEGpwYRQoZ7UmFL6SkOxqwkY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.138] ([80.245.79.138]) by web-mail.gmx.net
 (3c-app-gmx-bs58.server.lan [172.19.170.142]) (via HTTP); Wed, 5 Jan 2022
 16:42:02 +0100
MIME-Version: 1.0
Message-ID: <trinity-cf421ba4-410b-4e0e-bb2f-60fef962bc97-1641397322119@3c-app-gmx-bs58>
From: Frank Wunderlich <frank-w@public-files.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Wed, 5 Jan 2022 16:42:02 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5692a978-e5e5-c46d-978e-49438ee28782@pengutronix.de>
References: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
 <5692a978-e5e5-c46d-978e-49438ee28782@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Dcj3zCVHPZCMDOM/5Dk64xM2cVzboPqrVtTPqSbeq+ZThJV9vONyn5qD+9zRJv+0qCmIm
 y5km9+uQja7M84FmIELdAOwBcSh8AWPISejyo90zPVr9hb8JrQqCMYwybNyhR3VheNm6MK+PouHM
 BMvH3z6PaqlRros8YGIRlcpbm5kUvrKnxB/MvIwuxGX35nRvAgx7CqPb7WIw/Rk7AfCuhsF4v1ZY
 K5ZLrjn2Tk7+ILEFVFhTEvxUYojSqYyUr0fVatNcCLOd6KeFZCiLCwxc2Kj6VmIM70VXtpYxHj8S
 0c=
X-UI-Out-Filterresults: notjunk:1;V03:K0:0gVQUFel0AE=:MM3WmeDH3LTJrFdZSfDI9S
 WaqU2/HD32w3c5KJtCeNaRE1DyFRh0t1s+sfsmWIWO6JBJIekYd4XK81wC4O9vp9IPSMbvUsO
 mnmUeFyEAC/MfwtkoE1Jz8YsFbKLVCHqpE0LOPRSselqmRSE+ilYoxKsDJFrayO3pmeoWcogE
 puZIy4w6dLHwCv7YBkyqE3Binw/zqfErKOIkZ7orQs0OCQd0OcllpA8eiO3VCm/YPy7sHvouy
 7kdS1nXSdTialV+jhutNW+Z8FJcSW8dt52UCKlD1k1YWAtQWP4fzm55+eyMaZGCqt6ZerhHc3
 5G0xvBJZlo7SrS5iI1GfqUjk0yngEuR6TQPYNq1Dws4UEZNRGU0hCXIFMDZnAxgd0LkHWjuOp
 R24FwO74EaEtefgWOue0Xpnue0pPdntR5kGDHp9PeZRdl9tBqJOjA2c1zW/cCZg4bF4A2NFgG
 XrCMX7zB84jVKQLgYLg+d4varBQZaCun4S0PJo6wgfnP5S0GfGbBwr0jBZsR8/ybuEnCeaNb4
 mU5CVLaLJqXyzEwHXimok9ZLwUwtVwH8shqITEBTi2XwJnEbtJsIB4pIVdAmjW2MWgQNuIy9k
 ZuHrnzfPTjcfvHEvYI8tkge4bU3djlllokWjLflz9t2IqwIjWIfGFnA5ejctkM79QKo6jppVp
 zVW6CEojIoJgL3dksj6I9KgoCJ++e+2qdHoKvfQCQ0S1W3tRCSBIu2THMdgsdBdNK4t/Y+DxP
 J07SHQkyP2lqWm+7aEP0Uoe9h09mKd4l8k82TC1hfcvJzlUKNIfCF7Uvdmn0tMb2BztvnoCDq
 DxAvSUc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_074210_471728_B82D08DD 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Aw: Re: barebox - rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

> Gesendet: Mittwoch, 05. Januar 2022 um 13:08 Uhr
> Von: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
> An: "Frank Wunderlich" <frank-w@public-files.de>, barebox@lists.infradead.org
> Betreff: Re: barebox - rk3568

> > https://www.barebox.org/doc/latest/boards/rockchip.html#rockchip-rk3568
> >
> > says it starts from sector 32, my first block for uboot (idblock.bin=spl+raminit) starts at 64, full uboot in partition at 8M.
>
> You probably figured it out by now, but the discrepancy is likely due to differing
> block sizes. barebox documentation has `dd bs=1024`, while the default is 512.
> boot firmware is a single chunk with barebox, so no separate second stage bootloader
> partition.

thanks, this indeed explain the different offset, which is same after resolving the double blocksize

> > As it differs a bit from evb can i add new dts like in uboot?
>
> You can check out the commit adding the EVB or the Pine64 Quartz64:
> 8d14f8e898b4 ("arm: rockchip: add support for the quartz64 board")
>
> Feel free to send patches for your board along the same lines. :)

currently evb is working well, so i try to add bootscripts and maybe an menu (if i found out how) :)

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

