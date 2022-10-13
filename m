Delivery-date: Thu, 13 Oct 2022 10:33:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oitfB-0079z4-EP
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 10:33:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oitf9-0007aE-JT
	for lore@pengutronix.de; Thu, 13 Oct 2022 10:33:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yHi9ms2lTLXS5vc6kmo46T5HWgRPcJT54nvMEPPlY4s=; b=XSuEK9t1OQe8SGRwfumh6te26z
	qxXbrGC37zGuZE1XbptEGptEl792oxk0X1Qv/MSDTXAzPbSF9woojDNcVX5bNQaueNDiYvEfmP/C4
	V6mo9l7RdGoChrvM6jy2zbZhSv7CZQBJlfg/6fzz0nFGXR6Zc/Ti072gWQbcWltik94VsElrHAsn3
	v17raemwwsaQDkqdQAh+TvPq5X6U7Z5jqBk8DqBTkNPgrs8VFqY4gmkEhQ3bok5kXHr+nmLbUrF8N
	b661dsoBZ0lD/myDFQSPc1W+Ep6QNdJjTzZc9SJVah/T55ZzTjUdfxLwlHd5sVOPqmVvdXrlaqrrh
	r+aOzuKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oitdn-00B6YL-2w; Thu, 13 Oct 2022 08:32:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oitdi-00B6XT-Su
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 08:32:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1oitdf-0007WT-9n; Thu, 13 Oct 2022 10:32:23 +0200
Message-ID: <f8a908d9482756a68c0e0e0e347ce6852532b2c6.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: BAUER Bernd <bernd.bauer@ses-imagotag.com>, Sascha Hauer
	 <sha@pengutronix.de>
Cc: Barebox Mailingliste <barebox@lists.infradead.org>
Date: Thu, 13 Oct 2022 10:32:22 +0200
In-Reply-To: <PR0P264MB3289835436E9D3C600F7FD3CD2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
References: 	<PR0P264MB328928CED65F8A4275814502D2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
	 <20221013073204.GE6702@pengutronix.de>
	 <PR0P264MB3289835436E9D3C600F7FD3CD2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_013226_947125_362D1A2A 
X-CRM114-Status: UNSURE (   5.04  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: AW: HAB/SecureBoot on IMX8MN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Bernd,

One of the pitfalls we had when enabling HAB for i.MX8MQ was that the
SIP supported by the downstream TF-A to request the HAB event log was
stalling the SoC forever. I couldn't find a way to make this work, so
instead for i.MX8MQ we are parsing the HAB event log directly from
SRAM. The i.MX8MN address is probably different and you'll have to
check whether the same restrictions apply, i.e. if the HAB SIP is still
broken on i.MX8MN.

Best regards,
Rouven



