Delivery-date: Mon, 30 Jan 2023 21:43:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMazq-00812X-99
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 21:43:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMazn-0002Ku-9y
	for lore@pengutronix.de; Mon, 30 Jan 2023 21:43:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2/6EMG0wAbXzHMfdjJQRAwFOZwXNdHjK20C3Tez5FyU=; b=rkRKWOs2PTdqlGhpbhg5HyMvpt
	I9tXMhjzQIl1GoYOPJdCxZn90feF3m2axuADzPQa9RaP+70Tx/ALa5hf9Zkbass+f9sEMb52UFJv2
	Ra85Z7bZm9RBITI6tUHb7PgI5oc3XRR+kL9yTysyb/ZKFrEBfzYrXb8Zx1utim3QIkqwChUZnMNTF
	i8GHqImGeYkMn99QOxkjZbGtQlk4TVfXTlzCJH/KTqqn0DK3FWlKWzDCebVkVBfug0cqX7HjCwTyv
	X1PSD0lLlAxekVB6VV88vA2agod0rDDU9J4FAWNHfONj7R9Fsj3jHVgXQMw+EnTNTzyi0oEqJOuSE
	MdHNjoAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMayq-005O46-Eo; Mon, 30 Jan 2023 20:42:20 +0000
Received: from out-61.mta0.migadu.com ([2001:41d0:1004:224b::3d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMayk-005O32-Co
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 20:42:16 +0000
Date: Tue, 31 Jan 2023 07:41:40 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675111329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2/6EMG0wAbXzHMfdjJQRAwFOZwXNdHjK20C3Tez5FyU=;
	b=PCEgdf6pCutCERrA3BQQniE6q7l7NmnR7krgdWURRzkVdTtyFpSWkTcAb68S7UZAtTFsq4
	ixn+1MDyDjzd6j8YayzYFyymEmpxDuJxS4yWPIui8DMQ0UATGoiae8F/TSGW4R/2ffapYd
	2aVpNbLz3eTwxYiST+WtAJJAHy1/qwCXelVEcfO7nfK5tcONslRJw495R+7YgRAdpFsbpR
	UOTOdqUzNifELwT+BZS7hjdx6oc3/91GA9N0ojactbQGJM89GAVZcAnlVYaV8F8L4iQBd9
	mIx73r8REEZmEKYt7rvgLiDFUbCWC5blx5BCr7gh/JlDfnuwclee3lVMTVUEVA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9grhFG3iAYFFuf9@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230129232758.1799987-5-contact@jookia.org>
 <20230130201824.qgcrbyefwfg2psna@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130201824.qgcrbyefwfg2psna@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_124215_190835_240D5EAC 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 4/4] ARM: novena: Use DDR3 information from SPD EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 09:18:24PM +0100, Marco Felsch wrote:
> > +	if (eeprom->ddr3.mem_type != 0x0b) {
> 
> Is this parameter and value standarized?
> 
> > +		pr_err("SPD data is not DDR3\n");
> > +		return false;
> > +	}
> > +
> > +	if ((eeprom->ddr3.bus_width & 0x1f) != 0x03) {
> 
> Same question as above. Would be nice to avoid magic numbers if this is
> the case.

I believe it's standard. I could add some comments but the standard itself
isn't publicly available unless you can find it re-uploaded online.

> 
> Regards,
>   Marco

John.


