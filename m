Delivery-date: Tue, 07 Jan 2025 15:31:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVAcO-000LhT-1O
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 15:31:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVAcK-0006LZ-MT
	for lore@pengutronix.de; Tue, 07 Jan 2025 15:31:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYHogOqmRYi4ilerbw9TSiXVD5o3IDvQi2Twgdcu/UI=; b=fj+xRJrWAHVrbOO5oKfNZxPJoo
	NrxIgzBp1EyFv1pNzLwzvao7hUb4RJxU1H8WGw3yiF9Pf0W8dZBwBEpbt6WVy5e5QiS1l6OSC7WJn
	0CTUO07nbXfcvNsSkE4SdpqtFdCZQ27WlgmayOo5O15Smrc+g52DX/u/w4zVpDrNtbr+ABKZFq6GM
	JrXPioeadHgpePaFPYxPDsw3pflDTwDKuiGIWHFCUUdFqfcftS9zY4m5NaRnmWdchaJdFTA3rVn4d
	Pq2mrvApaDt+kN7mwvUDmSGZbxTrugPAOq59LCdGgf6LlQbB9MZUcBfnQ6dt6IVwfwm75s3BDCAlD
	MjchoWtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAbS-00000005DiU-3Afm;
	Tue, 07 Jan 2025 14:30:42 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAaJ-00000005DPv-3MLf
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 14:29:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736260167;
	bh=RcgHsEbisC/TCvyVHnzxAmKqasbQ4v53U7GqRnvM2fA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PqAGuyTPFyIHyQRKgivp1gTQE8v2RHDteeqkhLgTAXWZ8Qm6IWFsSiPVVUDLg0lX6
	 8F03Rd5och6f//EvOCIRfG4+efjpjyZQsSNdhqMD358n5fkUTN0h63Bd5SfxhRoezJ
	 pjfsgl6UUZ/WgyrTx2Q1zrjMNNyzK4vxyMShrpOJ7xltH8PAvkTVV9Dfy5tt2cbgVR
	 ucvTLFsYYrpLxK+Q2/9V4DkYiplpcRWkq6Syn1aZb6TpUxxEbP7X8L2l3msxoPb7IV
	 awwB2GjmxkBWQFbbgVaazEM2j0Cn4L7eU1/elBC8iNrXM7Tku7nNdKygvZbYy3sy0w
	 9vKFzjXZtkTAA==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 1E03740202;
	Tue,  7 Jan 2025 15:29:27 +0100 (CET)
Date: Tue, 7 Jan 2025 15:29:25 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z306RYOR35rgDdho@hephaistos>
References: <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
 <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
 <Z1mnJB8Suz3SNWbI@hephaistos>
 <Z2VPgRnxah5lc09X@hephaistos>
 <76532287-74b7-42ca-860c-b2e6bda8484e@pengutronix.de>
 <Z30oWivcXTQmw9ZO@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z30oWivcXTQmw9ZO@hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_062931_978819_1A53C1C4 
X-CRM114-Status: UNSURE (   6.22  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sorry I did a typo which could be very misleading and ugly.

On Tue, Jan 07, 2025 at 02:12:58PM +0100, Konstantin Kletschke wrote:

> What me holds back from lowering the speed is the following:

I meant to not want to lower the delay amount of 1000 (i.e. resulting
into counting to 3000).

-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



