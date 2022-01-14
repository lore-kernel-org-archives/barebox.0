Delivery-date: Fri, 14 Jan 2022 11:40:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8K0R-001xgr-Eu
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:40:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8K0Q-0000cy-AQ
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:40:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3MrsMX89njPunpksfZuztwdd+n6DPpqX34Nu85BZdc=; b=Jo1cdrKXTzNtft
	rgLrcgjwNw+h5Q07R1EvzLRlQWVbNsiav6+IhnNr4h4akpVpUlBSzaf6lt5KkAehpLV69KbUMrr7G
	/lOSucZ0iZPT1GplB9RPJbNci8DVMi26emL8nC8V0scZ4l8S8LTBkpnoNdrRxJNJqiXuEkM/HvNTY
	FDpuFrPF/XuOWCNfe0YMMVGS26Wyfu3xkTGdKjIkNzM1NbLVhq/i4lpdO+5yQ86ckuBxCM6FMLBDa
	oSGmp8CVIr+VgsIQOnWdSKNjC1yloZck9CigN+ae10kM2mIC4utp8q76KojuBUXhS3X99xaLMHdHM
	jmUpoFr4X2VVwnz9QL6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8JzA-008k92-UR; Fri, 14 Jan 2022 10:39:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Jz6-008k8E-9h
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:39:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Jz5-0000R3-3E; Fri, 14 Jan 2022 11:39:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Jz4-0005sl-QQ; Fri, 14 Jan 2022 11:39:02 +0100
Date: Fri, 14 Jan 2022 11:39:02 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220114103902.GZ26619@pengutronix.de>
References: <20220114082141.302151-1-o.rempel@pengutronix.de>
 <20220114082141.302151-2-o.rempel@pengutronix.de>
 <20220114083018.GS26619@pengutronix.de>
 <20220114101246.GA21557@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114101246.GA21557@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:38:39 up 34 days, 19:24, 79 users,  load average: 0.18, 0.13, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_023904_361726_192574B5 
X-CRM114-Status: GOOD (  19.69  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] ARM: rpi: set uart0-pl0110 clk to 48MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 11:12:46AM +0100, Oleksij Rempel wrote:
> On Fri, Jan 14, 2022 at 09:30:18AM +0100, Sascha Hauer wrote:
> > On Fri, Jan 14, 2022 at 09:21:41AM +0100, Oleksij Rempel wrote:
> > > At least on RPi2 this clock is 48MHz. This issue was not visible,
> > > becouse amba-pl011 driver was not reseting UART controller after
> > > changing baudrate. So, clk settings was not updated for some time.
> > 
> > We have an rpi3 and rpi4 in our lab. Could you give this a test on these
> > boards?
> 
> Yes, rpi3 is tested and rpi4 is currently not supported.

Fine. Ok then, applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

