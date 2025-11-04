Delivery-date: Tue, 04 Nov 2025 11:12:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGE1N-00FBCC-2M
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 11:12:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGE1N-0003MF-5Q
	for lore@pengutronix.de; Tue, 04 Nov 2025 11:12:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4x4NNCHntm8w8A7OV1Ua7wmaOAbR+mbOySQrVZndiI8=; b=RB1/r2mlYtM4nb1Krzn+uRZV4I
	ZmFDQAmGCBVA05bYOjDthOUk0V0Ddf2g6+CTAS/n/gp6vaIg1gtuY87Yix7joMLhSwdLI59t3m8ja
	Ejf+VqHRxW2oJE1eWmXpDWiRIO4x6xWa9bYe8DK2nD5aYJ85h7Pm6QLa1VRNdgmo/PKNUXCN80IQg
	jHxF6EaEcQCE7Jp5ZJeU2PWSx04EXRUxdnZiBb34Vqk/r3BIjECrMa9YmBhZ7VeFh6LP9n+cZ2Umg
	1Qs+OBTq2Tk/ECz8GwHI9ralKO+ZUWYSr+EARO4HLp66ch3axfmedjvLARvchK4b6f9WGJWL644PV
	xxP0IqCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGE0p-0000000BaZu-1qqs;
	Tue, 04 Nov 2025 10:11:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGE0m-0000000BaYz-18rJ
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 10:11:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vGE0j-0003Fb-6H; Tue, 04 Nov 2025 11:11:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vGE0j-0070p2-00;
	Tue, 04 Nov 2025 11:11:33 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vGE0i-000yq9-2s;
	Tue, 04 Nov 2025 11:11:32 +0100
Date: Tue, 4 Nov 2025 11:11:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aQnRVNvuEYy32a19@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-15-3bafce636ad7@pengutronix.de>
 <aQh_K6q-F2Og-vhb@pengutronix.de>
 <5d5a5331-9cc8-426a-85ea-cdb288fdf265@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d5a5331-9cc8-426a-85ea-cdb288fdf265@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_021136_333746_2E035B3F 
X-CRM114-Status: GOOD (  25.91  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 15/17] crypto: concatenate fit development certificate
 with private key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 03, 2025 at 12:41:14PM +0100, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2025-11-03 11:08, Sascha Hauer wrote:
> > On Tue, Oct 28, 2025 at 07:03:20PM +0100, Jonas Rebmann wrote:
> > > Merge the exemplary keys copied in from [1] into a single pem file,
> > > in a manner similar to test/self/development_rsa2048.pem for consistency
> > > and to reduce clutter a bit.
> > > 
> > > While at it, rename them from "fit-" to "snakeoil-" as they are not only
> > > used for fit, but also for tlv integration tests, and to indicate more
> > > clearly that these are publicly known keys.
> > 
> > Should we rather keep the "fit" name and add another key for tlv
> > integration tests?
> 
> I'd rather not add more 'compromised' keys to the repo. What would be
> the gain?

My thinking was that with this we could make sure that during tests
actually a key from the desired keyring is used.

> 
> I think naming it snakeoil gives it the warning it deserves. We should
> make it hard for anyone to confuse our CI/Development keys with their
> production keys.

Indeed. I just don't like the term "snakeoil" here.

>From wikipedia:

"Snake oil" is a term used to describe deceptive marketing, health care fraud, or a scam.

We don't do anything like this here. We're not trying to sell snake oil.

I am open for something like "testing" or "development".

Also we might want to add a runtime message like:

"WARNING: This barebox binary contains well known keys and is unsecure"

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


