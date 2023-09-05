Delivery-date: Tue, 05 Sep 2023 14:27:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdV9s-004vcm-PB
	for lore@lore.pengutronix.de; Tue, 05 Sep 2023 14:27:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdV9q-0006rr-Ad
	for lore@pengutronix.de; Tue, 05 Sep 2023 14:27:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wkfSt6cjyv3hv2D1boKReYICItABS1SMyL44Gp2Z7o4=; b=j4tVUjuWAIUQwbTwTHy4tWK90q
	vK/xuP5jK4FjcIjlIKdEKdlh74kQAhKhEQFNZbGcHBED2pzysZM1i6crUdDgsC2vKaS/Uj6d2qZdu
	xr4aSP+A+G5JJgVtsZpyHlJQ4AaciAT4X6OWnNobmcixGEs9pnSw5Te6cwrNF/rXgIV6IR5QfZJEr
	e4ajyUCseM97mQ5ywXCoxU1jHnQSlXJZIm8ls6+zES6Jv7cwN81M7KccZPTAQVZQGZGf2bmNK7PJZ
	ha0B3Q3WAoomwbHpf1e63eRwdrDTKzXU56hOZfIy7rYzyg526xw2m9ApsLOdkfolzuu8mNR7yw60r
	2WBa0fow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdV8k-0060MH-2K;
	Tue, 05 Sep 2023 12:26:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdV8h-0060Lj-04
	for barebox@lists.infradead.org;
	Tue, 05 Sep 2023 12:26:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdV8f-000679-L5; Tue, 05 Sep 2023 14:26:37 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdV8f-004Btk-8G; Tue, 05 Sep 2023 14:26:37 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdV8e-001cwh-Sb; Tue, 05 Sep 2023 14:26:36 +0200
Date: Tue, 5 Sep 2023 14:26:36 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Johannes Zink <j.zink@pengutronix.de>
Cc: patchwork-jzi@pengutronix.de,
	Barebox Mailing List <barebox@lists.infradead.org>
Message-ID: <20230905122636.GM189379@pengutronix.de>
References: <20230829-crc32_in_pbl-v2-1-8a0a575b360a@pengutronix.de>
 <20230904081944.GB189379@pengutronix.de>
 <930ff968-e07b-d427-4253-a433435e26b8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <930ff968-e07b-d427-4253-a433435e26b8@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_052639_063760_827D8606 
X-CRM114-Status: GOOD (  22.39  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] crypto: crc32: make crc32 available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 05, 2023 at 09:57:21AM +0200, Johannes Zink wrote:
> Hi Sascha,
> 
> On 9/4/23 10:19, Sascha Hauer wrote:
> > On Tue, Aug 29, 2023 at 04:38:32PM +0200, Johannes Zink wrote:
> > > crc32 may be required in PBL for checking data integrity. Add it to PBL
> > > when CONFIG_CRC32 is enabled.
> > > 
> > > To save some memory use a slower-but-smaller variant of the crc32 algorithm
> > > in the PBL.
> > 
> > I've just sent an alternative patch series. Please check if that works
> > for you.
> 
> What did you base the series on? Maybe I am holding it wrong, but it does
> neither apply on v2023.07.1 which I use in my customer project nor on
> upstream/next.

It's already included in next. I had to re-order the patches though
because my original order caused some compile failures in between.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


