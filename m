Delivery-date: Thu, 04 Apr 2024 08:36:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsGi1-008os0-0f
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 08:36:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsGi0-0008Gn-KR
	for lore@pengutronix.de; Thu, 04 Apr 2024 08:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Udn2Hik3c8Jqvx+pZD72NpBG+xjULhwTdP2V18NDsI=; b=lPwBYWhXEzLvO3TOH4/jLPGnPR
	kYpT+35M5pRzzd0WWXCDL7H5vqoqHricJXEPEutN4uzdDtyvPmqyPPZUQk1RMZjDb89tIdzfHnpUf
	j+NSOH5G7SPOjE0Hg3bnBJhDEcWMgi5ujDWeQqEzC6nDTqDU2vIMqtdIx+/ZB7w3ZHSRVGrG9SaYk
	kiLmdJqpHuGTgCpA7TAC2NMtNsHZoR5Rsw5MgZ1YcESoZExpho0qXPJSKSAbd7SYb6j9zL09+/dR9
	WqlFxT7M2ACRqPcQ5G7DpDVGvW17NbMUIn5DEkU1pyAwphbv/RLp5zfxtDDTmQCX9B83co3Dix4TN
	OqEYYBfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGhR-00000001THu-1t3Y;
	Thu, 04 Apr 2024 06:35:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGhO-00000001TFZ-1Aga
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 06:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rsGhM-0007pz-UB; Thu, 04 Apr 2024 08:35:44 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rsGhM-00AJnD-DP; Thu, 04 Apr 2024 08:35:44 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rsGhM-00DxfC-14;
	Thu, 04 Apr 2024 08:35:44 +0200
Date: Thu, 4 Apr 2024 08:35:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Tomas Marek <tomas.marek@elrest.cz>
Cc: barebox@lists.infradead.org
Message-ID: <Zg5KQM7HuwmvjDVb@pengutronix.de>
References: <20240403074909.32256-1-tomas.marek@elrest.cz>
 <Zg1IB9EmqjlyB-Gm@pengutronix.de>
 <Zg46ji_wj9GPX9zZ@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zg46ji_wj9GPX9zZ@debian>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_233546_352317_F41F4112 
X-CRM114-Status: GOOD (  22.61  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 04, 2024 at 07:28:46AM +0200, Tomas Marek wrote:
> Hi Sascha,
> 
> Thank you.
> 
> On Wed, Apr 03, 2024 at 02:13:59PM +0200, Sascha Hauer wrote:
> > Hi Tomas,
> > 
> > Thanks for the patch. I applied it with some minor adjustments.
> > 
> > On Wed, Apr 03, 2024 at 09:49:09AM +0200, Tomas Marek wrote:
> > > +static void i2c_msg_to_efi_op(
> > > +	const struct efi_i2c_priv *i2c_priv,
> > > +	const struct i2c_msg *msg,
> > > +	struct efi_i2c_operation **op)
> > 
> > No need to pass a pointer to a pointer to the array, changed that to
> > *op.
> 
> I'm afraid this won't work. The **op was an in/out pointer to the EFI
> request operation array. The incremented pointer value was used by
> subsequent calls to i2c_msg_to_efi_op(). If a pointer is used instead
> of a pointer to a pointer, the op variable in the
> i2c_msgs_to_efi_transaction() function isn't modified, and all I2C
> messages are now stored in the first item of the EFI operations array.

Ah, alright, now I understand the code. I reverted back to your original
version.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


