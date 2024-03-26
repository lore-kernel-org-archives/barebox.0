Delivery-date: Tue, 26 Mar 2024 07:09:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp008-004mkc-0J
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 07:09:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp006-0000uE-Vr
	for lore@pengutronix.de; Tue, 26 Mar 2024 07:09:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tqaOEUvYxJ0bO0PpHgTlb1EbU2Z9rnlAAw9445bdSCU=; b=PdjJn6WN39VhBX4VU1g0y2g57/
	QjN9HaT47KYYkYMyJXhLaprVlcYVrpV/MhL72F3VfNSkCb5JlXokxljZ42WcrHFvOQ/meQO9uIr5o
	MYcCfWNN8MENqz5C3VzZDbvMU2jKjfK7jLguIjPNgAa9uhUgOa+hlzzi/UAMSNrZMS//8WqzcbeMO
	sz6q7jrAbd5GpujLyGAVCfBpEW4vYyYRwTb9LS58ykaUXTHijrS1ejxZopnzCs6suptj9EMFwKXf0
	EHXCIZIos4ifmcT1/AljTTCfOMeKyM5CXQEPHn7SjHFSJ+l60jp1xUS7xRUYiA8cSlTijPHbfAwFY
	d7uWFfww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rozzT-00000003Eeg-1L5z;
	Tue, 26 Mar 2024 06:08:55 +0000
Received: from smtp.cesky-hosting.cz ([2a00:1ed0:2:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rozzO-00000003EbB-2dtP
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 06:08:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202308; t=1711433315;
	bh=4LA+7c8LvziYfdd7LyW/f8cich/91n9Zy+drBcblaDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dw6kdoIHxqXhJYG1VgQpmy+kxfk0BUby4yMxirV1Vlnhq6iBfIb+yf9mFM22CHdgV
	 BtVNqXoD6k9zKOMjKn5665aKQfmYRvLrwVBVmQ7NdlltLV66H6QTjYVrlWJbIjW/U2
	 m3ZIbjPaH5pPZrx0+PK82IbcGmW02hchjLNwdCdIF0n7ylo4oil8AdYtjaWtmPW8ew
	 uJL4UkSIL5Lc1vCmkii0uWNwRsbZVZGsWqXTc9v1zocxWtcJmIRO+abQy6gBkrjTeT
	 bG9kAs4ppPCux4grqXvC8sAi64rYG2x1jKwLqpNO0huY7M6G4oKd6da/b+4LADrq1l
	 c1xHrt4LdhzaQ==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
X-Thin-Conversation: seen
Received: from debian (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 5BA2C5E1;
	Tue, 26 Mar 2024 07:08:32 +0100 (CET)
Date: Tue, 26 Mar 2024 07:08:30 +0100
From: Tomas Marek <tomas.marek@elrest.cz>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZgJmXgQZKRRQQN_u@debian>
References: <20240320125538.31679-1-tomas.marek@elrest.cz>
 <ZgFUcmW8aY-QSlRs@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgFUcmW8aY-QSlRs@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_230851_185486_47AC808A 
X-CRM114-Status: GOOD (  22.84  )
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On Mon, Mar 25, 2024 at 11:39:46AM +0100, Sascha Hauer wrote:
> Hi Tomas,
> 
> Thanks for the patch. Looks mostly fine, but this needs fixing:
> 
> On Wed, Mar 20, 2024 at 01:55:38PM +0100, Tomas Marek wrote:
> > +static int efi_i2c_xfer(struct i2c_adapter *adapter,
> > +			struct i2c_msg *msg, int nmsgs)
> > +{
> > +	struct efi_i2c_priv *i2c_priv = adapter_to_efi_i2c_priv(adapter);
> > +	int i, ret;
> > +
> > +	for (i = nmsgs; i > 0; i--, msg++) {
> > +		ret = efi_i2c_message_xfer(i2c_priv, msg);
> > +		if (ret)
> > +			return ret;
> > +	}
> 
> Each of the messages should start with a (repeated) start bit and only
> the last message should be followed by a stop bit. By separating the
> full message into segments and pushing each segment into EFI separately
> you would instead send a stop bit after each segment, see the comment
> above EFI_I2C_REQUEST_PACKET:
> 
> ///
> /// I2C device request
> ///
> /// The EFI_I2C_REQUEST_PACKET describes a single I2C transaction.  The
> /// transaction starts with a start bit followed by the first operation
> /// in the operation array.  Subsequent operations are separated with
> /// repeated start bits and the last operation is followed by a stop bit
> /// which concludes the transaction.  Each operation is described by one
> /// of the elements in the Operation array.
> ///
> 
> Instead you have to compile all nmsgs into a single EFI_I2C_REQUEST_PACKET
> and push it into EFI as a single request.

I see. You are right. I will fix.

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


