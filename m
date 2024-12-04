Delivery-date: Wed, 04 Dec 2024 12:22:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tInSQ-003tKV-3B
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 12:22:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tInSP-0001k1-Sm
	for lore@pengutronix.de; Wed, 04 Dec 2024 12:22:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bjsPGssFReJJ5hsech16It9xviO+PdJ1znZaw/E9bfc=; b=NzjrbNkaPUDqfrhVJ28rVQH1F0
	vXosPFSuSb1mlI6XSel8/UCL4Rh4rMcQMUqGWT72colZC8vZSxlOnLf+R6w9mBE0HFAkGc9fbBggg
	xEIwPYtgKBZcajHAn0CdZWaEytxTahBf2v9vl2xzVgSEI1GKJ+Cvab0PEYeRE1QTION7PaZlQGPhD
	voRst7Vr5ID5B7AyyFjCn5+WK24TQXnfDznrW4RggavrS2TST//aBw3F2/iqpFMnBkQaVST9JSTKb
	UR7zdW966/MT274n3ylL0TcFfX5K0HANtuXDaZimGko9VBskCL5hTfcY+20EmjXl9ugALdzkepewH
	5ZSUZTLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tInRv-0000000CMYp-35j8;
	Wed, 04 Dec 2024 11:21:43 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tInRH-0000000CMU8-0Am8
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 11:21:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733311231;
	bh=tkT4IXGoiRYRh6hdS+TWz3gHuqGmSFVx6FzNakP9O/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JJx/HgUDUDf9jb1OaFppq+zfl6Pe7RqEkHpGTX6TvaFdhpJfNTm8A9PbvF8a//spa
	 ks41vY57ldHQ1YcFC9BwB8iCayEd/kYB5BfPVG5tNFAv6R7tXdF0foy2cIPPPjYAe9
	 0mvB7CbSv/wcK1mkeNnB+UWyTvwgXY5UGEGJ5fQtB9lJkvysQxHHiIPc6bxHxAFi+l
	 8K1+u1/ZFj2sQV1oAS0WHsap3w3hN6cnFq2CtkHY8Do3mw1a7KG5uaWfN9SJgDswsb
	 R3ShqKaFe0htLytsENswXLY8NrTe2kXd5trH2bnaz8DIf9b6Kjy7wGpRd/54Ql+LJT
	 LBD8y2WyWThDQ==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 8098A40078;
	Wed,  4 Dec 2024 12:20:31 +0100 (CET)
Date: Wed, 4 Dec 2024 12:20:30 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z1A6_vnK4ddTccbI@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <Z09PNnu8AgghB8wF@hephaistos>
 <653f9b1e-2044-41c9-b87c-0d9804c9a6cb@pengutronix.de>
 <Z1A3_oo935q1bOXx@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z1A3_oo935q1bOXx@hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_032103_223467_FF93C980 
X-CRM114-Status: UNSURE (   6.41  )
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
X-Spam-Status: No, score=-7.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 04, 2024 at 12:07:44PM +0100, Konstantin Kletschke wrote:

> This is an unaffected Board (warm restart works):
> 
> barebox@TI AM335x BeagleBone black:/ i2c_read -b0 -a 0x24 -r 0 -c 0x1e
> 0xe2 0x3e 0x01 0x01 0xb1 0x80 0xb2 0x01 0x00 0x00 0x04 0x00 0x7f 0x0c 0x18 0x08 0x08 0x06 0x09 0x38 0x26 0x3f 0x7f 0x00 0x03 0x15 0x5f 0x32 0x40 0x20
> barebox@TI AM335x BeagleBone black:/ i2c_read -b0 -a 0x24 -r 0 -c 0x1e
> 0xe2 0x3e 0x00 0x01 0xb1 0x80 0xb2 0x01 0x00 0x00 0x04 0x00 0x7f 0x0c 0x18 0x08 0x08 0x06 0x09 0x38 0x26 0x3f 0x7f 0x00 0x03 0x15 0x5f 0x32 0x40 0x20

This is the same BBB, unaffected, read out with its shipped u-boot
(U-Boot 2019.04-00002-g31a8ae0206):

=> i2c md 0x24 0x0 0x1e
0000: e2 3f 01 01 b1 80 b2 01 00 00 04 00 7f 0c 18 11    .?..............
0010: 08 06 09 38 26 3f 7f 00 03 15 5f 32 40 20    ...8&?...._2@
=> i2c md 0x24 0x0 0x1e
0000: e2 3f 00 01 b1 80 b2 01 00 00 04 00 7f 0c 18 11    .?..............
0010: 08 06 09 38 26 3f 7f 00 03 15 5f 32 40 20    ...8&?...._2@
=> i2c md 0x24 0x0 0x1e
0000: e2 3f 00 01 b1 80 b2 01 00 00 04 00 7f 0c 18 11    .?..............
0010: 08 06 09 38 26 3f 7f 00 03 15 5f 32 40 20    ...8&?...._2@

Command issued three times, in address 0x2 also transition from 1 to 0
on second read.

Differences in 
PPATH (barebox: 0x3e, u-boot: 0x3f) and
DEFDCDC2 (barebox: 0x08, u-boot: 0x11)

Wondering if this could be significant...

Regards
Konsti


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



