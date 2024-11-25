Delivery-date: Mon, 25 Nov 2024 10:02:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUzV-0008k2-0G
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 10:02:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUzV-0006io-0y
	for lore@pengutronix.de; Mon, 25 Nov 2024 10:02:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JCWhAXnP2uqz+El/+TbmFidMXINZeLJJUe1U+POMJ1c=; b=MACVAz6dZBF3o30s6Hx67J7S45
	6DO1M+EiVrTMaKXPZPwi4eiDGph32rucFxHbs4fgl8A7h+v6oIDOMKvJHhG8J4ouX1NkFfK+DawDX
	Wp2W74yOp699QBiDTn0XtB0NMQhXTe996vvJGIiNSozssMfj9W8x8X9/SGes4QAijrG4e+O7Nyl4d
	0CCcFEcEol/stGDOY03eXXygdMACcHlG5NMy2Pc1zfSGcvHxj5AERLk7lfoPHgKMButVFNpC2Gztz
	4kdxi8zyghkzPTJKPTmOQk5Aa6GF8KgFsstgyX/srSCvfX5wiEMve6mqEniFTSRaOLeIHITIHHa55
	cWG+mJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUz3-00000007UEm-3uoP;
	Mon, 25 Nov 2024 09:02:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUz1-00000007UDt-04lJ
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 09:02:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tFUyx-0006W8-Sn; Mon, 25 Nov 2024 10:02:11 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tFUyv-0003BI-0d;
	Mon, 25 Nov 2024 10:02:09 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tFUyv-00EbfG-2p;
	Mon, 25 Nov 2024 10:02:09 +0100
Date: Mon, 25 Nov 2024 10:02:09 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sven =?utf-8?Q?P=C3=BCschel?= <s.pueschel@pengutronix.de>,
	barebox@lists.infradead.org, Ulrich Oelmann <uol@pengutronix.de>
Message-ID: <Z0Q9EVP1ycOGkKAW@pengutronix.de>
References: <20241118164344.48806-1-s.pueschel@pengutronix.de>
 <Z0Q7Tsd59M7MrpQP@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z0Q7Tsd59M7MrpQP@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_010215_052080_4659E651 
X-CRM114-Status: GOOD (  15.11  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: imx8mp-skov: skip sd/sdio detection
 on the eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 25, 2024 at 09:54:38AM +0100, Sascha Hauer wrote:
> On Mon, Nov 18, 2024 at 05:43:44PM +0100, Sven Püschel wrote:
> > Skip sd/sdio detection on the eMMC to reduce the detection time by
> > about 270ms. This change is already part of the kernel dtsi file
> > (see  dts/src/arm64/freescale/imx8mp-skov-reva.dtsi).
> 
> Oleksij, Ulrich,
> 
> Wouldn't it make sense to use the upstream dts?

always :)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


