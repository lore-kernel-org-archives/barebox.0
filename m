Delivery-date: Thu, 02 Feb 2023 10:35:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNW04-00BDn3-0B
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 10:35:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNW01-00087y-Af
	for lore@pengutronix.de; Thu, 02 Feb 2023 10:35:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pLVf6fngxU5Uq3LlC/m9caATSvKCwMqY1KQMliG/x1E=; b=eEgSbc5siKrfg2mJrvkCX4eZ3t
	g0Ttb3yuSHFA5kz0Io5gFmoUw98tykbGEfDxpSorqyWN4/oHT6yJF1FsOGinxJ9e4XYgUiBsLi8ES
	MdaWRHr86sZdCu7paFJlNE5NOMPzX08EOGZU8y2VGzCAqOENsWbajjhcmwRApHJAQmyug8wU1KRAL
	BtzDwhUH/s2RpURRg1kt1PDifxmsyD5QpmZ2/4PlWshPTuaEFK5t04pQgNt979hK5aPZgqZH75KZ9
	42uCz4Z9tK4GrHt7FE1OYBNo/NkxWdzuXAyRkPitMnC3mcbgnG/KeUxtHprSD1CGXaN3wg8Lo1swI
	v9ZRd8Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNVyc-00FBBe-P7; Thu, 02 Feb 2023 09:33:54 +0000
Received: from out-209.mta0.migadu.com ([2001:41d0:1004:224b::d1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNVyV-00FB9C-Lh
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 09:33:51 +0000
Date: Thu, 2 Feb 2023 20:33:16 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675330423;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pLVf6fngxU5Uq3LlC/m9caATSvKCwMqY1KQMliG/x1E=;
	b=MVGHdC9aeAOIb+Daksa6QUetgWRUsqwOGQ9i5t59Puhu6DxJfFAht6LGqrepO2o6gcYzUy
	WsMhjpvRxrBISfXuD2YGSqvZ4Dn0STfMcb3xDCr1cjSJ10ZLXz3jB9bcpWfhU67bvBB1YA
	Wz0BA+CR6LcCMJN6njTWkod7xBPx2MP4J1n5sikPTFbVBtS7uJnQilBm1lZ/t7axDk24VU
	3ymNXLdUyBfaf2Zc5z/ZlvXPoYnlY8OSOGD/kAYQiqdsopZHe4bp4eL7xxVSyHpuVOGWhX
	ofqXMNnjg35yUQDopCaQwjQlgmHs2Uo9Iom/or5x10ZNBJWfhfINK1evFo0CmQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9uDXGfxDzX5D9nz@novena-choice-citizen>
References: <20230201223404.1467998-1-contact@jookia.org>
 <20230202073948.GL13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202073948.GL13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_013348_826703_9BD696DC 
X-CRM114-Status: GOOD (  10.26  )
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
Subject: Re: [PATCH] fs: nfs: Error if a port is unregistered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 08:39:48AM +0100, Sascha Hauer wrote:
> When this happens do we see a meaningful error message on the barebox
> side? From a feeling I would say -ECONNREFUSED might be a better error
> code, but I don't know if that's suitable for UDP connections.

Currently the error looks like this:

mounting failed with -110
ERROR: nfs nfs0: probe failed: Connection timed out
mount: Invalid argument
    probe-> nfs0
lookup mount port failed with -110
ERROR: nfs nfs0: probe failed: Connection timed out

Now it looks like:

lookup mount port failed with -2
ERROR: nfs nfs0: probe failed: No such file or directory
mount: Invalid argument
    probe-> nfs0

Not sure how this could be improved.

> Sascha

John.


