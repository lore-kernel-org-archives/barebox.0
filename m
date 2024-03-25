Delivery-date: Mon, 25 Mar 2024 11:40:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rohki-003i9k-1S
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 11:40:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rohkh-0006bq-R8
	for lore@pengutronix.de; Mon, 25 Mar 2024 11:40:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1sP2XxqW/BdZhlxZ37xco08jHqnBXRzCsDMmVtPqJMI=; b=vpr7IW4SGZE2fsew6wNq0LCSek
	CC6UWw/ZhyV8CFOZeJGAuYEk4X5ADEW0BwlO5Ly2cYT8tX2GlRcdBFVEk+54nFd7YW6/KIUSoRiSw
	C3wc6K+cMgUeQl3+rzs8yVMzcwfmcb/67sc785+oEkIoX8xcPt6F5ipdjS5hnJL4F24aXaSGGkXhY
	Hvtxh2/S1NFuvsNNZy8fkY64JqsCeRnCvOw9tS7j8sndTqfcNaMp0txiITMW/9AFEPimG/XRjXKD1
	wFRKs95JtE+ZZyqx3W1jLv/J+e5MuNLNownhFIB7rBLsp3bpguBCQ6qPmfZmW9qaoaMhqioa3L+9Q
	ro3GqFHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rohkA-0000000GoEx-1QMi;
	Mon, 25 Mar 2024 10:39:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rohk7-0000000GoDs-26mn
	for barebox@bombadil.infradead.org;
	Mon, 25 Mar 2024 10:39:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=1sP2XxqW/BdZhlxZ37xco08jHqnBXRzCsDMmVtPqJMI=; b=D3j+qhAFfJ2FYJGkXhD6qV9MCS
	MF5jIcX92dlWNJZsm4zMl8GiG0IR5JnH28aRbAEG6BVBI0azga2WX7f9vt+PKbTIscAcuv1xhHqh1
	poNKf1bj5gOGStdP8luvVTFyc96gvMZ42b2piHKyU+3OVHV9MHWQE75b7Pv02b93UdsZjzKbwcH7x
	5BW5EDt8HPXEwZKsn1cCQ+cQaUwMtLzG0QuMYL+ryEUlco3mxRZSuokpep56mA/a9i4jgdEwk8Wxs
	EymA6LSzUQCEB9AfRE2v3p9Ay/FLWuaojeK01de4apNOomwEXGF84xOec0oxNA2SB4yikPdm+N1J+
	1sd719SA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rohk4-0000000GXJ9-0LOp
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 10:39:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rohk2-0006Vk-T3; Mon, 25 Mar 2024 11:39:46 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rohk2-008OzD-Bs; Mon, 25 Mar 2024 11:39:46 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rohk2-00G6AW-0u;
	Mon, 25 Mar 2024 11:39:46 +0100
Date: Mon, 25 Mar 2024 11:39:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Tomas Marek <tomas.marek@elrest.cz>
Cc: barebox@lists.infradead.org
Message-ID: <ZgFUcmW8aY-QSlRs@pengutronix.de>
References: <20240320125538.31679-1-tomas.marek@elrest.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240320125538.31679-1-tomas.marek@elrest.cz>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_103948_259503_8CE1F784 
X-CRM114-Status: GOOD (  19.30  )
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
Subject: Re: [PATCH] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Tomas,

Thanks for the patch. Looks mostly fine, but this needs fixing:

On Wed, Mar 20, 2024 at 01:55:38PM +0100, Tomas Marek wrote:
> +static int efi_i2c_xfer(struct i2c_adapter *adapter,
> +			struct i2c_msg *msg, int nmsgs)
> +{
> +	struct efi_i2c_priv *i2c_priv = adapter_to_efi_i2c_priv(adapter);
> +	int i, ret;
> +
> +	for (i = nmsgs; i > 0; i--, msg++) {
> +		ret = efi_i2c_message_xfer(i2c_priv, msg);
> +		if (ret)
> +			return ret;
> +	}

Each of the messages should start with a (repeated) start bit and only
the last message should be followed by a stop bit. By separating the
full message into segments and pushing each segment into EFI separately
you would instead send a stop bit after each segment, see the comment
above EFI_I2C_REQUEST_PACKET:

///
/// I2C device request
///
/// The EFI_I2C_REQUEST_PACKET describes a single I2C transaction.  The
/// transaction starts with a start bit followed by the first operation
/// in the operation array.  Subsequent operations are separated with
/// repeated start bits and the last operation is followed by a stop bit
/// which concludes the transaction.  Each operation is described by one
/// of the elements in the Operation array.
///

Instead you have to compile all nmsgs into a single EFI_I2C_REQUEST_PACKET
and push it into EFI as a single request.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


