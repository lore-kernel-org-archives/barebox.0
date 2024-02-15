Delivery-date: Thu, 15 Feb 2024 23:35:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rakJx-007ufN-0s
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 23:35:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rakJw-0005nq-ME
	for lore@pengutronix.de; Thu, 15 Feb 2024 23:35:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I35n+aFiy5TNK7jX/SXgdFuRIXiUqIt01RcB2L3POrg=; b=n5pJCr9YW7HHJCi1oAjT6Xy7xV
	pwAsJCAEueu/M4c435EXVqkggTP2YJhh3sA7D2W0K/hTQG6e3SG1HhkUnkHh5ERFfqp3uDUn1SvN5
	MwAvzK+/0oT+CkZeYClYxBZ018i0GNB1xkGTaw4asJlQx8DG2KiBOHb6wT+u/dQFtlKyLRh5BqVRx
	G6J37IE0vnOfkvXM8i0bvv0Tvf+peH/638bcV/b6yfwefUe8h4YOovLrM0Zv920o/w/zoDa6muXJj
	6mS/ha4p6H8VwvrPpm/Kt4Hi/H2Z26P+do69lTjvIvzZOaIx+/hRuTnKnVLrMFUvUeC6qYRKEt4Ud
	T3WiF0LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rakJV-00000000MaX-0wQl;
	Thu, 15 Feb 2024 22:34:41 +0000
Received: from mailrelay1-1.pub.mailoutpod3-cph3.one.com ([46.30.211.240])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rakJQ-00000000MZY-237J
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 22:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=I35n+aFiy5TNK7jX/SXgdFuRIXiUqIt01RcB2L3POrg=;
	b=EnaQHEqke9NMjuDLpurDFcbudxTAJA0fwpdaydxcyClw9105G5DgQ+ICbt8RNVyhOkGO10oUckesl
	 010grLqMs2JwDHtBF5ExuqK1kRnw36H6Pde8e3TPAFRGQsJkA5rYmQYOo6egsPOFh7HVAnd3PHT5uO
	 +sBkY2Yih0DnRJouaq4MtQyNTvnVquGlv+O5qDNmknj9jYy7akJxKJozEpjj8ynNjtI0JHUuDEAojg
	 7AnMmJuEFlv+JQjuSsjQgwK1OknA+Ecm7jjB0Bm1NS+G8gCqaqU2I3UW0ZzZckETfEFzb65LIaiO0E
	 4W6L1B7CV7ekq8Ww1DwM8rPSCkpKhmw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=I35n+aFiy5TNK7jX/SXgdFuRIXiUqIt01RcB2L3POrg=;
	b=DTGZ5F31gNCkdxjI8DJmzQpfTUmvHH8ZT+zReFosZBpKi7vnJ9KwZmJazhAY7Pyh8vE12KW7gPCmx
	 xAFon52Ag==
X-HalOne-ID: 39ae7149-cc52-11ee-9942-1ff1563c5748
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay1.pub.mailoutpod3-cph3.one.com (Halon) with ESMTPSA
	id 39ae7149-cc52-11ee-9942-1ff1563c5748;
	Thu, 15 Feb 2024 22:33:24 +0000 (UTC)
Date: Thu, 15 Feb 2024 23:33:23 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240215223323.GB1462714@ravnborg.org>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_143436_686114_79947226 
X-CRM114-Status: GOOD (  17.87  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 00/15] ARM: at91: skov-arm9cpu (SAM9263) first stage
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, Feb 15, 2024 at 05:29:54PM +0100, Ahmad Fatoum wrote:
> SDRAM setup and SD-Card chainloading support were previously added[1]
> by Sam as well as a WIP patch to enable them for Skov ARM9CPU.
> 
> I reworked his final WIP patch and fixed some smaller and bigger issues
> that I ran into. Now barebox can replace at91bootstrap on this platform
> when booted from SD.
> 
> What didn't work for me were USB and Ethernet, but these didn't work in
> Linux either when booted with the same device tree. I suspect this to be
> related, but I don't have use for either USB or Ethernet in barebox at
> this time, so I am happy with functional SD and nor flash.
> 
> All patches are new ones, except for 11/15, which contains a changelog.
> 
> [1]: https://lore.barebox.org/barebox/20220628203849.2785611-12-sam@ravnborg.org/
> 

thanks for picking up this work and finish it.
There we several fixes in the patch-set I would never have found - nice
work!

All patches are:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Except "ARM: at91: skov-arm9cpu: Add SD-Card xload support" - see my
comment about the hardcoded hex-values.

If the hard-coded hex-values are updated to use the existing defines
this patch is also:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam


