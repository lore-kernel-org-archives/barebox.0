Delivery-date: Fri, 20 Jun 2025 14:59:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKn-009Hkz-1K
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:59:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKm-0005fX-QY
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:59:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dFJmVwc3ANDt0GNB0lsLeW3h5JxUmEYSsOFU2HOd1lk=; b=MACzxAHLFap7af9uRd6Ryb5PkK
	UrBnJC37QILcH/Oc/rnUVJsg/wOpS89zvMcUWKWoTP3Mduja6l3mBaIAL3Mzmpp/lPJb50rY+aBXI
	OTnvJsm0p0MXzu09LdlqjtAdysyzsSUhlassSx+EfYORjqzmlZ+YAVgd03NlEqNttIB4tS+2TPngz
	cneErtYCsqZ6HYW+zEtSyMP7Gpv+SRhh5ABlCCdMaQkQQmwAXB+G6+GSM07HPDLu1LLavHIU6gpnA
	kvsPs/O5gmM8mnxXWnyp8Xpf2S12CyKoD/rCv3BoGp4/iNAMtYRB5dop2tQEVunkIxeZgwng9o08o
	j+7B5ZbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbKK-0000000FdEV-3laF;
	Fri, 20 Jun 2025 12:58:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSb8G-0000000FbC1-2JLi
	for barebox@bombadil.infradead.org;
	Fri, 20 Jun 2025 12:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=dFJmVwc3ANDt0GNB0lsLeW3h5JxUmEYSsOFU2HOd1lk=; b=PovGEpFOa2YS/zd9/WIqZhru7D
	Wf+uP5S3kWbcdcJ0lKH0VLduqRGmjE5hAG98wKnTX5xdEPYSAb4bO6k0XVdetkURx6YOgybZVRnhW
	bb6TkoG0mNiAnzIW3ISoH4MTEODYBW66/vXBtxL+on4BXUbnpnwrrxntTEnpaPCHT1ch1saT4pB69
	zlNQWLZK6htKVkFmUpVNhAfnFZwrVZohufK2Ejx/In/OFMiP2puKINzWTczVvYPdWhy/FaJWuIaZw
	DpIEvvXdIVbAHY8xrNgHqyuJfDbsJ/E9/c4nh70yjxYRQ16TzOtnDccA+U7Hy8jZr8oN61muoyfbk
	mwVQ2ZQA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSb8D-00000004jZV-3Mdn
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 12:46:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSb8C-0007dB-TD; Fri, 20 Jun 2025 14:46:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSb8C-004Snv-2K;
	Fri, 20 Jun 2025 14:46:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSb8C-00D3jr-26;
	Fri, 20 Jun 2025 14:46:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250618123642.1432610-1-a.fatoum@barebox.org>
References: <20250618123642.1432610-1-a.fatoum@barebox.org>
Message-Id: <175042356864.3112578.12807191128971308852.b4-ty@pengutronix.de>
Date: Fri, 20 Jun 2025 14:46:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_134610_004342_62DF4B65 
X-CRM114-Status: UNSURE (   9.90  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mmu: explicitly map executable non-SDRAM regions with
 MAP_CODE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Jun 2025 14:36:42 +0200, Ahmad Fatoum wrote:
> So far we have been setting eXecute Never on MAP_UNCACHED regions and
> left it out for the default MAP_CACHED region.
> 
> We have at least three places, which depend on this to remap non-SDRAM
> regions executable, so ROM code or newly uploaded code can be run.
> 
> Switch them over to use a new MAP_CODE mapping type. For now, this is
> equivalent to MAP_CACHED, but with the addition of W^X support in
> barebox, this will be required to avoid a prefetch abort when MMU
> attributes are used.
> 
> [...]

Applied, thanks!

[1/1] mmu: explicitly map executable non-SDRAM regions with MAP_CODE
      https://git.pengutronix.de/cgit/barebox/commit/?id=225fda833a82 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



