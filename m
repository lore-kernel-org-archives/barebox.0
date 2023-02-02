Delivery-date: Thu, 02 Feb 2023 11:33:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNWuT-00BGiC-AV
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 11:33:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNWuQ-0008KA-KK
	for lore@pengutronix.de; Thu, 02 Feb 2023 11:33:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q5yYIQVVhVRZifg3slRn9KQ+KFaby8/DUr7P3e8lo3U=; b=WdFwpaZABEENT6wGbMtHcMtaq8
	i9BoHSfSBA/aqUadC4cRmLvCWM3+aSZP9+yiRqFjUmaOlBGZFMeEZgmX2IfVI/5hW8I/HSjCoUfAP
	4iKULzzxnAXT90yjQpvy1VDhpIs46j/4XxFqhFFvdbSbci+16CSR27+Esxn8psVi4vIpBOTXisaSQ
	2p8rHeuZbxSRCRhlxvfjxhbdeLN2MtnXXZN4OtEpDi+zeEYVn6ByjmYsi0Lac37DEjRazXTV+Ftq0
	A9OrbwCIUi8T2jsG8L6zbVG2VUggBjL5YBnWyOlmAV7IE57s6AUfZHIMK0fACqPnT7oNetW1dtgql
	04i4Jymw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNWst-00FNSm-Hn; Thu, 02 Feb 2023 10:32:03 +0000
Received: from out-179.mta0.migadu.com ([91.218.175.179])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNWsn-00FNRI-9R
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 10:31:59 +0000
Date: Thu, 2 Feb 2023 21:31:16 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675333911;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q5yYIQVVhVRZifg3slRn9KQ+KFaby8/DUr7P3e8lo3U=;
	b=ft9RwSrS90yjVpqABqF9UNILT308pPEyibFeRLtBnuq1//0r3cMJalQPQHN9MY/LzalBHb
	WDH/WK6LUfI1OW8aSMJidOfHF47G3aS1jC+VirUJ1FymBecuuE2LuoDTwvSvSLSN6Umby+
	6OU1STHavd6QeI/d+r5ahw9vErthw1qVUsFcKtzmyQPeDNSWW8BC2HRFc3+cuSGmaSZapJ
	M5dchisotxrOfy+tREugQKWEfIWu9jWWqvtVyud1eEt8tJRGCqByKg7Rx5hIEbcqgX8q49
	TwejzprKs349hMF9/d5GDPWzVr4GzRgQeiF34sTUOs+ONR6Wp+w9KKatrCTz1A==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <Y9uQ9PoA88bPX/CG@novena-choice-citizen>
References: <20230201223404.1467998-1-contact@jookia.org>
 <20230202073948.GL13319@pengutronix.de>
 <Y9uDXGfxDzX5D9nz@novena-choice-citizen>
 <3d53375e-2bdd-33e2-be09-6b6b0705105b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3d53375e-2bdd-33e2-be09-6b6b0705105b@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_023158_088724_7EC3EA58 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: nfs: Error if a port is unregistered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 10:45:05AM +0100, Ahmad Fatoum wrote:
> Add a pr_warn with a descriptive message?

Something like "hint: check your nfs server supports UDP"?

John.


