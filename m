Delivery-date: Tue, 21 Apr 2026 09:55:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF5xC-00Edp1-1v
	for lore@lore.pengutronix.de;
	Tue, 21 Apr 2026 09:55:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF5xC-0006Vi-2Y
	for lore@pengutronix.de; Tue, 21 Apr 2026 09:55:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K7FRo65+PeOrEUtT04RpigXDfPTD8sCuMcvTnPHwJS4=; b=3miQGRQ59V8OmxsnNZeZRkgULn
	9NPBx78SulmgTh2qOMpzG16bK/anq7F9igrhrvP9nTy0RRHWNN6jO4kEOxxUDnNwHdP3hrd7/AN/8
	DC0Zqtx1AymCGeCcHALOiwdrZBkWQACdTwybM/Zx3IZWYIOgThbhOjf2gkkpYJ2hbMQdWRmA0BRSI
	avtsOeklmXpWM3ZZ3F9h6fLRMfQFuu+IaqmHDKARaJmjA2g3SZ2aU3rPMlAG5EfAaqk63bB/WDqpv
	2eSapF5ExRUV9fBQAOk6uFu9fSiOoszKPfOsEGoolN89/FwzcXsoxeQI03XmioA9RI/inFerfJDbo
	Mp1FzrCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF5wZ-00000008DSk-2fOL;
	Tue, 21 Apr 2026 07:54:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF5wW-00000008DSH-2NoB
	for barebox@lists.infradead.org;
	Tue, 21 Apr 2026 07:54:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wF5wS-0006M2-Cn; Tue, 21 Apr 2026 09:54:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wF5wR-006T1J-2e;
	Tue, 21 Apr 2026 09:54:43 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wF5wR-00000006HWS-30J9;
	Tue, 21 Apr 2026 09:54:43 +0200
Date: Tue, 21 Apr 2026 09:54:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: anis chali <chalianis1@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.6" <noreply@anthropic.com>
Message-ID: <aectQyiyowJc1DCH@pengutronix.de>
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
 <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
 <439e4d93-0b31-41a5-93a4-3e0456e60a7b@pengutronix.de>
 <aeYZgSySnesKe_L0@pengutronix.de>
 <22ce3b8d-b01f-4566-895d-c175c33a7e26@pengutronix.de>
 <CAL+1fyAnh3D1p=yj8+Fgj8CsjE6R0Jsfc5XbwyZYKhK797QQ8w@mail.gmail.com>
 <CAL+1fyCYo3ZATq8d3Tv5fy_OcGVo2J3q3853-LqxgLqXNEahiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL+1fyCYo3ZATq8d3Tv5fy_OcGVo2J3q3853-LqxgLqXNEahiQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_005448_610508_F7DCC3AC 
X-CRM114-Status: GOOD (  16.98  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: handle NAK when CHHLTD does not fire
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Mon, Apr 20, 2026 at 10:28:58PM -0400, anis chali wrote:
> Hi.
> 
> On Raspberry pi cm 4, with only the patch usb: dwc2: handle NAK when
> CHHLTD does not fire,
> the usb controller does not work and displays indefinitely the message
> below even if no usb storage plugged in
> ERROR: dwc2 fe980000.usb@7e980000.of: Timeout on bulk endpoint
> I did the test with the patch series and I get the same behaviour,
> console continuously displaying the timeout error.

I just tried with only your patch applied and it doesn't work for me. It
seems there is some timing issue involved, because when I add debugging
output at the right places then it works.

I haven't gotten further so far.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


