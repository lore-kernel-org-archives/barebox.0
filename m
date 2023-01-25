Delivery-date: Wed, 25 Jan 2023 17:32:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKihh-001gwV-O5
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 17:32:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKihe-0005ky-Lx
	for lore@pengutronix.de; Wed, 25 Jan 2023 17:32:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Qs0r1QhYCaSNPtg0SQGTnB4bIUjkB8ZWlFCsATo+P/Q=; b=jEp+88QGhGjz7U
	FwB4T/S34gVjIkOurd2e1TgblFqap2DfxTEaArOr6L9iJcy5z2UCNYvjw55HO5xYdHVPhiJJb1qn+
	DshrHtPMabSnKdT51CzLuh4ai0VKJ8OI543PNMrfOHEuomFyMB9S1/soKsCaBJ+SoPjq9Hky5Nudt
	2hua1I6O2g1ELjvQIu/L1X/LvKQsFyl3hNO1FJhZS9F/N/5UXbSyklleQXZ+ROj7AfoKm72OXXcWC
	839B855aHHDwOWoF0Cx0BwcH6mNMZIAnAkE/jZTuWa1j831p9whhlqJ3J91WiMLDB/H3cLq3Xmv1U
	COMDEGRNgLDOsXxnVzSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKigG-007xLY-1G; Wed, 25 Jan 2023 16:31:24 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKigB-007xL2-28
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 16:31:21 +0000
Date: Thu, 26 Jan 2023 03:27:03 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674664273;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=Qs0r1QhYCaSNPtg0SQGTnB4bIUjkB8ZWlFCsATo+P/Q=;
	b=ZB2U9zd1T/rRuXD3CG2CYThga3EByulirdaFMVpPVAPuRUiUVRQz1QSYTUQljRIPwk7NcR
	Z+iEw5kwo3kVWKs2ReXcHr9Ih4cTei16mDZhW6iR4YpTaqgEvugYcHWdLX6Nh1tAjb4FMv
	rspnS4wxNSqG3PP+AaKt5vComdGI1/RqiwrldFGtDvlXXqo+Zxmwr1qeMQlK8LSxvYxZXb
	miseYPoRAcO4wTJuGQkwGFwJzw9rnTtDebocLcDDJ+3Wslkujmf8fVJXGz7bUvpK9laZpM
	2smX0uhe4zQ3dJbRPQxvcVCn5103fW+hjr04Bwo5QVg62QLOmYQ3cVrqZlyRag==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Message-ID: <Y9FYVwlYP+iIQAsV@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125151955.GB4155@tellis.lin.mbt.kalray.eu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_083120_015632_C327EF01 
X-CRM114-Status: UNSURE (   4.19  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Re: Draft of an errata for RFC916
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

The looks good to me. Did you implement this in Barebox and test it?

John.


