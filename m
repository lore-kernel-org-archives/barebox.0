Delivery-date: Mon, 20 Feb 2023 09:49:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1rg-00CY1P-VG
	for lore@lore.pengutronix.de; Mon, 20 Feb 2023 09:49:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1rf-0004hc-TJ
	for lore@pengutronix.de; Mon, 20 Feb 2023 09:49:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h0xqkea3dmhqxCPnMJTSqxE5CTa0dUr9SjT1lynCQyA=; b=WVPvCI0UIkhWOnpvknGxsS9Qg3
	3iAFzzrle06K4tfQmFqZnnw5mLc2idvjFkvCYU9tKCUkHXhOEE+UrA4TTv09IPYMGmftMNqJbBXhy
	XS4BPt3CGXce1tqqxq/2vuwel7PD1U6Y1ojdDrH1G/1rqKkZ4MdOkJ181pVCT5sWGj7+iKuzCA3GK
	Cr1Mr2pGGuVib+koA0aJGb/CFC2O9J8NtM8ZIS1UUWYLYsDUdoiu35hrI98CAtrhDtAg1RX0+84e9
	s6Fy8EZ7INy8zP+TDQeL+JeLzCbU59lwTSStCA3R+PuOtN2dAkepPAeLFmweo8xvVw4JkAYGzh9O8
	j5gCib6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1qL-003Npw-IF; Mon, 20 Feb 2023 08:48:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1qG-003Noz-C8
	for barebox@lists.infradead.org; Mon, 20 Feb 2023 08:48:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pU1qE-0004ZP-0t; Mon, 20 Feb 2023 09:48:10 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pU1qD-0001ze-Pa; Mon, 20 Feb 2023 09:48:09 +0100
Date: Mon, 20 Feb 2023 09:48:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230220084809.f7xcbqzwbz5jzsd6@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_004812_535830_7884B037 
X-CRM114-Status: UNSURE (   8.88  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 00/20] dts: avoid DT breakage new fancy DTC v1.7.0
 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-02-17, Ahmad Fatoum wrote:
> The fresh v1.7.0 release of the device tree compiler now contains
> fancy new syntax:
> 
>   &{i2c1/at24@50} {
> 	partitions {
> 		/* something */
> 	};
>   };
> 
> instead of &{/soc/bus1/bus2/i2c@12345678/at24@50}, which is overly
> verbose or &i2c1 { at24@50 }, which will break once someone renames
> it upstream to please the schema checker.

Just to double check this and I understood you correctly, the compiler
will complain if we specify:

	&{i2c1/at24@50} { };

and the node is not exisitng anymore?

Regards,
  Marco


