Delivery-date: Thu, 04 Apr 2024 07:29:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsFfT-008fmJ-2K
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 07:29:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsFfT-0003xb-4r
	for lore@pengutronix.de; Thu, 04 Apr 2024 07:29:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FVGhq3OuxojH95RjZWfdaiQr8Zk6vCSp6RaIRYWruI4=; b=13d9Dr2+sVYovUFRPCUQNcsOC/
	epqqys+Bzprfs7BeBVnxMSOgNQJgw2p57esbYEbFYEBu+ViE974pS/VYB5N2b78uMS+zv1u7uqhNj
	H9eLxDtywPqxxNlAhuun4z4I4ty4JRPXl+dwniKBpvtpWO8HsC9/H/UiKMz76dia1ptR5StB/U2k8
	t2P0VCC3eWEcRViE6sK7MuQgiFNN6xGhEdFK79CxpSw8Bfmnjgf4uC67IbrlHFPfroq5YR1RM0ijU
	8ulISMbS27yEMDey6+auxWgx4lcFHXtyYIHbfdqVq8r9YQY2DvfVqCgsjgOq36SuJRJwqFM5fBZIO
	ixcG4T8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsFeh-00000001KaM-3AdF;
	Thu, 04 Apr 2024 05:28:55 +0000
Received: from smtp.cesky-hosting.cz ([2a00:1ed0:2:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsFed-00000001KYd-1WQ3
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 05:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202308; t=1712208527;
	bh=aVRc4Q96i77Im/tgYKbxJP+KSSocGNDxeYfcwAaqW4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZtuKfWKLKeS0TwSI5oQqpZq7/ZAlFeyPAjQ5KXBBfeZs0s4XrF3yYvSyFdJr/xJf3
	 JC7Y7yJzrua3Sy5G8z1zpa+20NjA+2Nr15eQS4wrg/JvEKep6gG5/1amZE7Gt4yt0g
	 ELkwCsNidMUkUILH042YazzykwuxKetsPEvNp8RclYUYm2LGeIoQpFW+W7vS1fEfDj
	 G4ghUhY94j1Zcsyj8lHNA6q+XUK+VQ7l3vXmYEh24E/H1T9GC5WdY8yxsaNFonpLvB
	 A4T+LMq+7qNdlPUfsZUpHfOM33dD7iBqxG8DjEVyNuDCb9+x6rNDRRkXwaayrCxAnw
	 N0wBCWgktPjHg==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
X-Thin-Conversation: conversation
Received: from debian (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 6BBA6118B;
	Thu,  4 Apr 2024 07:28:47 +0200 (CEST)
Date: Thu, 4 Apr 2024 07:28:46 +0200
From: Tomas Marek <tomas.marek@elrest.cz>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zg46ji_wj9GPX9zZ@debian>
References: <20240403074909.32256-1-tomas.marek@elrest.cz>
 <Zg1IB9EmqjlyB-Gm@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zg1IB9EmqjlyB-Gm@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_222851_923242_2643824E 
X-CRM114-Status: GOOD (  20.77  )
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
X-Spam-Status: No, score=-1.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

Thank you.

On Wed, Apr 03, 2024 at 02:13:59PM +0200, Sascha Hauer wrote:
> Hi Tomas,
> 
> Thanks for the patch. I applied it with some minor adjustments.
> 
> On Wed, Apr 03, 2024 at 09:49:09AM +0200, Tomas Marek wrote:
> > +static void i2c_msg_to_efi_op(
> > +	const struct efi_i2c_priv *i2c_priv,
> > +	const struct i2c_msg *msg,
> > +	struct efi_i2c_operation **op)
> 
> No need to pass a pointer to a pointer to the array, changed that to
> *op.

I'm afraid this won't work. The **op was an in/out pointer to the EFI
request operation array. The incremented pointer value was used by
subsequent calls to i2c_msg_to_efi_op(). If a pointer is used instead
of a pointer to a pointer, the op variable in the
i2c_msgs_to_efi_transaction() function isn't modified, and all I2C
messages are now stored in the first item of the EFI operations array.

> 
> > +{
> > +	unsigned int max_len = efi_i2c_max_len(i2c_priv, msg);
> > +	unsigned int remaining = msg->len;
> > +	u32 flags;
> > +
> > +	flags = (msg->flags & I2C_M_RD) ? EFI_I2C_FLAG_READ : 0;
> > +
> > +	do {
> > +		unsigned int len = (remaining < max_len) ? remaining : max_len;
> 
> We have a min() macro I used instead.

Perfect, thanks for the hint.

Best regards

Tomas

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


