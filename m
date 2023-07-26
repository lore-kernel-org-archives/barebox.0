Delivery-date: Wed, 26 Jul 2023 15:12:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOeJj-00AscB-Rz
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 15:12:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOeJh-0001aP-C8
	for lore@pengutronix.de; Wed, 26 Jul 2023 15:12:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e3Z7vJgz+I587vF3+Ez7bexMOhCFpH+pphSkzpi99PY=; b=GIqiNHLrQRSOLP9m8mRLPA97KL
	QYWV21ut/e/QIsSK3xIqky3d3NoE4+y0qe56aKdXrvZZ4M/9D9cEk29MI4X36qwgaa6ZedNzNASEI
	jazMvmUsTWGXq95rs1zpnl2SajLcIaBcJuLsOB33iXlvvGzSe86J5RLbuAkqyittLJ2I0ow4zay1I
	AXDBXp3gaamCMn9odxlpqffk96i3PsCEebj5cEQTrCtpjzNhAzV4giW1NGPlG9jAW42DP8ijiRvtK
	D6kru0O0KwIqKvjhKA0Ol0LfmnQslxfsTgLJi6aPNVH7vjn1oHH9WDXWlcbiRyVtS/WSfd1PMV0Qt
	snVuCzfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOeIM-00AV0I-2e;
	Wed, 26 Jul 2023 13:11:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOeIJ-00AUzs-2U
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 13:11:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOeIE-0001QR-Mz; Wed, 26 Jul 2023 15:11:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOeID-0000Ju-W1; Wed, 26 Jul 2023 15:11:05 +0200
Date: Wed, 26 Jul 2023 15:11:05 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
Message-ID: <20230726131105.GS18491@pengutronix.de>
References: <20230710172335.26701-1-jmaselbas@kalray.eu>
 <20230710172335.26701-3-jmaselbas@kalray.eu>
 <20230710194703.GA19256@ravnborg.org>
 <ZK0O9ya3gVS8DAam@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZK0O9ya3gVS8DAam@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_061111_828623_A7EB0609 
X-CRM114-Status: GOOD (  21.79  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/8] mci: Add dwcmshc-sdhci driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 11, 2023 at 10:12:39AM +0200, Jules Maselbas wrote:
> Hi Sam,
> 
> On Mon, Jul 10, 2023 at 09:47:03PM +0200, Sam Ravnborg wrote:
> > Unless there are good reasons that I miss you could squash this with
> > patch 8. It looks funny that you add a driver and then delete a lot of
> > code because you updated some infrastructure later.
> 
> The reason for this is to be able to revert generic sdhci changes, in case
> it breaks other drivers, without completly reverting the dwcmshc driver.
> I have only tested the generic changes on the newly added driver.

Please resend the series with first the generic sdhci changes and then
your driver using it. Should we have to revert the generic sdhci changes
then we can still extract the necessary changes to your driver from the
v1 series.

As a reviewer I don't want to review code that is deleted later in the
series.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


