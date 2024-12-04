Delivery-date: Wed, 04 Dec 2024 12:08:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tInFD-003t5D-2U
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 12:08:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tInFD-00086X-M5
	for lore@pengutronix.de; Wed, 04 Dec 2024 12:08:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3gH7tM0nJKRGMtKufj9+DA8WQRMl6RFW3BykcaGB2Ls=; b=L40cGhe99WwBIEy+6d8fTrwCTw
	+M+nx7wBnRTmXxXw0g3b7Y61FsbvIUds5sEqOxEcHyB1P175Y6KcHULBIaa7kKiFhqRdT8i9TWUmP
	gUtraiA6iB0ZTIwXiIf/vWqskpscb6aYtt3mjn6kZTOtTrlozJfXSZDlUaak/2F+ALKmtsC18IYnJ
	s+dB6HGbDc0NZsmg1KztD+dgnpzHILOjIdJzyTXC0l8is8hAlWjbtHpGptRGvKqWcqqfYgUwljktd
	wRmYEaXsqboAieUuuVPKW3z44oAWhNCA7szGZ+2+NGkVwh9HKdO2IUJuKM4TH8p7RbdIimmeKDIYv
	omYXAg7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tInEX-0000000CJdj-46Bc;
	Wed, 04 Dec 2024 11:07:53 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tInEV-0000000CJcl-045v
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 11:07:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733310464;
	bh=hpAPZbIg+OcCTkgcJXACC1f2ivaFtWIFwSiPiDd2+Ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OXlm8PIBWE9xX7uNewVX/dRKJMlmvjawsZM0aOMLGZP17NgIISVsexzSO740MwYMI
	 2iB8VoUbBwWjDKSAE+v++1Uuq9f+IHBEwOVhlJ3QuyEa9Bs2S5Kcb6Pft6WjqGhirB
	 3icWT2Qep/kmenL2LIqJ24pbm8gbOOrLGKEvk1Ri2YRqdu5Dz6Tmp7TNvvU2tqb20V
	 ZHxD33wcxPGCkasp0kILJ+M7rhaIatNArA07eFfMJ05r/YWj6gNMyE3kl+6Ou5lSQr
	 HHkl8mpEFJN7Bm2TyPIUsYkjN22mBdfZmj565ljqZDA6GEBvOQqQhzPnPv3owkeKBI
	 cY0jMJqvGc+9g==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 1554040078;
	Wed,  4 Dec 2024 12:07:44 +0100 (CET)
Date: Wed, 4 Dec 2024 12:07:42 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z1A3_oo935q1bOXx@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <Z09PNnu8AgghB8wF@hephaistos>
 <653f9b1e-2044-41c9-b87c-0d9804c9a6cb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <653f9b1e-2044-41c9-b87c-0d9804c9a6cb@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_030751_192919_1EB46372 
X-CRM114-Status: UNSURE (   7.77  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 03, 2024 at 07:46:56PM +0100, Ahmad Fatoum wrote:

> Anther thing, I wonder about is what configuration the PMIC has on affected
> boards and boards not affected. Can you use the I2C commands in barebox
> to read the PMIC register set and compare it between the affected and
> unaffected boards? Maybe they have different mask defaults?

This is an affected Board (warm restart freezing):

barebox@TI AM335x BeagleBone black:/ i2c_read -b0 -a 0x24 -r 0 -c 0x1e
0xe2 0x3e 0x01 0x01 0xb1 0x80 0xb2 0x01 0x00 0x00 0x04 0x00 0x7f 0x0c 0x18 0x08 0x08 0x06 0x09 0x38 0x26 0x3f 0x7f 0x00 0x03 0x15 0x5f 0x32 0x40 0x20
barebox@TI AM335x BeagleBone black:/ i2c_read -b0 -a 0x24 -r 0 -c 0x1e
0xe2 0x3e 0x00 0x01 0xb1 0x80 0xb2 0x01 0x00 0x00 0x04 0x00 0x7f 0x0c 0x18 0x08 0x08 0x06 0x09 0x38 0x26 0x3f 0x7f 0x00 0x03 0x15 0x5f 0x32 0x40 0x20



This is an unaffected Board (warm restart works):

barebox@TI AM335x BeagleBone black:/ i2c_read -b0 -a 0x24 -r 0 -c 0x1e
0xe2 0x3e 0x01 0x01 0xb1 0x80 0xb2 0x01 0x00 0x00 0x04 0x00 0x7f 0x0c 0x18 0x08 0x08 0x06 0x09 0x38 0x26 0x3f 0x7f 0x00 0x03 0x15 0x5f 0x32 0x40 0x20
barebox@TI AM335x BeagleBone black:/ i2c_read -b0 -a 0x24 -r 0 -c 0x1e
0xe2 0x3e 0x00 0x01 0xb1 0x80 0xb2 0x01 0x00 0x00 0x04 0x00 0x7f 0x0c 0x18 0x08 0x08 0x06 0x09 0x38 0x26 0x3f 0x7f 0x00 0x03 0x15 0x5f 0x32 0x40 0x20





I spot no difference, and both change INT from 1 to 0 on second read.

Kind Regards
Konstantin


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



