Delivery-date: Tue, 24 Aug 2021 08:49:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIQFX-0005Am-Cn
	for lore@lore.pengutronix.de; Tue, 24 Aug 2021 08:49:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIQFS-0002OS-Tb
	for lore@pengutronix.de; Tue, 24 Aug 2021 08:49:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXy/A+aM7lNw+LaZ2AZ7b8m0LQj1e/a0l01pBYrgts4=; b=T8tWrRblzK8dWH
	y37/yoaCngDUjbx5uvSuqBkxW4xMjrNvW37aIoC98AfY9/w28xEt/XM+pA/YL+Ub4fT9FsD+fD19b
	XLKBlCnUTwzt2eDw5QzbX28ndVnuSNtnQhjFRl4HNa4WKbYICj+aMcl8afwOK/FgVCPVN9feyAY66
	IcaV+/81Z6iujE6Ac74LMSbfO7leebtoiCE4FY3R4vVuv8wrhmBtzm0k4b9U+HQtvPyknQd3Q1IVh
	MSqhPUCXymbGN4DgwzeHBRbiEyOmmZlLsrJG4FG7T8zA8eHTqpHGRy7HnqnEwjoEiBCaIEYEOmRvq
	hjvwMv0ZIcBdMf7Imsqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIQDL-001vDa-R9; Tue, 24 Aug 2021 06:47:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIQDH-001vCO-Ka
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 06:47:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1mIQDD-0002Hd-Q6; Tue, 24 Aug 2021 08:47:07 +0200
Message-ID: <a10ab29f12e4146cbd9db271e7cb506084f45b7b.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 24 Aug 2021 08:47:07 +0200
In-Reply-To: <edee4bbe-ba6e-7356-5ce7-984a4009134d@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-9-r.czerwinski@pengutronix.de>
 <edee4bbe-ba6e-7356-5ce7-984a4009134d@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_234711_757132_09D53D87 
X-CRM114-Status: GOOD (  12.32  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 8/8] PBL: enable LIBFDT for OP-TEE early loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 2021-08-05 at 15:53 +0200, Ahmad Fatoum wrote:
> On 03.08.21 11:44, Rouven Czerwinski wrote:
> > This allows the OP-TEE early loaded board to add the reserved memory
> > entries for the correct MMU setup. This is done by including pbl/fdt.h
> > and using fdt_fill_reserve_mem().
> > 
> > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Would be nice if we had a board upstream that made use of this.

The Webasto CCBV2 can make use of this, however due to incompatibility
with THUMB it is not enabled in the default config. I will include the
necessary changes for ccbv2 in this series.

Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

