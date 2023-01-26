Delivery-date: Thu, 26 Jan 2023 08:57:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKx8r-002SDh-9N
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 08:57:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKx8o-0000wp-PQ
	for lore@pengutronix.de; Thu, 26 Jan 2023 08:57:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nVD/BObODByUr6cgXYrar5ZqBIGmoQC4ewRkDapFz2k=; b=uECwipptNH20D8Sf0Ppz2iFSis
	phnsyMN6/vlN6ExOJzYtXzo5xU713fRrfuNq4axSoz8pZX8pzTA7EfZ7aAokTCO2hAt55EZWSXAIH
	JscosrZykK8WaDVHhUOiwexiD518nJbZf7Ttvln/yH0IWbbdT6RHMgJfO/tCQ4QoxB0UoqyCM4Zw2
	VPQ5h+KVTaWaUX3tD8bFy4PK2LawNUTZ5p0fsrDoY+zIsksrWoqX7wTNJmNWHoh6JbVkcny71nzSo
	MlHBLpFQ/coBVt3uwTB5oAD/gmQ6KGBdgv1SH88Eb+oj+SaatgvmDwL6VtA6xmQiFsD2aZVHKHMb5
	X7sy52PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKx7Y-009uCo-Ox; Thu, 26 Jan 2023 07:56:32 +0000
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKx7T-009uBb-NE
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 07:56:29 +0000
Date: Thu, 26 Jan 2023 18:54:06 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674719782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nVD/BObODByUr6cgXYrar5ZqBIGmoQC4ewRkDapFz2k=;
	b=Ml5LyWLY/7+Dn3BTEszTJfpyy3ffhdw8nPpCKNMQw3/rxYPVr+qT2b0r0rHCY/lAHq0Y/A
	cTivzCt9H2jvcyDyz+DsKqmBj3u48tEn6avM8SHS4hgmVtO7nc9Q09YC8GsECJ4F2OYzq8
	jzWEogmpZNeu+ADon+jOgRdhCF32tljx1YKYSB04PBCI4dNw3fFpbiIfWwl+JBeQnJfN6R
	QaWi6+63j4Ydud9vOsRnlEqIbDyqmZoLtxmFDIBXv5gJFmT0EUYZlNs48AL+JJCnfbtebL
	5IzZgMPW2fEvcT3mrCRkMcst/Jt/1W4sDnn6CC/dM9jYe2F4rOxfL3x0+gZIcQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9IxnqxbowcjOOZ/@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-3-contact@jookia.org>
 <20230125193940.mrgtbxuueixridtw@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125193940.mrgtbxuueixridtw@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_235627_922389_93F0E215 
X-CRM114-Status: GOOD (  15.94  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] ARM: novena: Setup RAM using static configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 08:39:40PM +0100, Marco Felsch wrote:
> Hi John,
> 
> this patch should be part of patch1 since without this one you can't
> boot the board, right?

Yes, but I wanted to do a separate commit so I can document the origin of the
code for the Git history and make it easier to review.

If this is inappropriate I'd like to move some of the git description to the
header file instead.

> >  	enum bootsource bootsrc;
> > @@ -66,6 +74,7 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
> >  	if (!running_from_ram()) {
> >  		imx6_ungate_all_peripherals();
> >  		setup_uart();
> > +		setup_ram();
> 
> Nit: You can also move the setup_ram() into the load_barebox() function.

Hmm. I'm not too sure how I feel about this as the two tasks are unrelated
code-wise. I can change it if it makes things easier.

> 
> Regards,
>   Marco

John


