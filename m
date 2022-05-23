Delivery-date: Mon, 23 May 2022 11:17:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt4BZ-006LhV-PF
	for lore@lore.pengutronix.de; Mon, 23 May 2022 11:17:09 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt4BX-0004wM-PJ
	for lore@pengutronix.de; Mon, 23 May 2022 11:17:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FY+gMN8PtQX/4rjOSJqiSGmGI5GoNTglvxOPnX/UBXI=; b=q9nhyv6kOaReK8
	oA5Wk8ffDHw3GJmS+BYQwTUIEyt3EU86JCE/YWAqL+6EL8jgFxwuk8I6s0Qqn+aSP9T+MnB8IvzW3
	c6r3qqrC7aAawjnbT4ghZXZdZLW05LDPvI0A88ezZ02M/5B0BKwfQZGqNbESWxQpTYj456yImR5DQ
	fmaa2kmGjxXGnMheeUqo0jSbrhJyO/kGjX4iJ9z/tsFRg41tiPhuFe7KMzC298kJCfpBCEQTfEmzW
	5WPHM9aUnPJJeHx//CAMyt3FD6CAijA2cWuOdxv0NKjcUSjj34XdmnVNkxWZPA2w7volqAMXnQExa
	J3pxJXsWdrfPFBO/PWoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt4A4-002lAa-Jz; Mon, 23 May 2022 09:15:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt3Mk-002PZ8-L5
 for barebox@bombadil.infradead.org; Mon, 23 May 2022 08:24:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KirtIEdpBrUMUbpKwHlK3ecAO7w1LSBfyjCfYtXr25w=; b=a3Kvg0/JDiOH1HHQBhMyP8jYt1
 CRO3RNRiswPci/8L4CZPKAnDQ5IoX4NNWGFVoRO9gzPpUUMSQre5Q7MWJhcGGhyX/Q3BD15CXY9Eq
 Zl3pri/zDtTitYhskvBP+zzDGi0SQPElRXeO9xKaHllgvfOrlITQRLrSUWLF6EISbJX280Qt4SHBS
 Li6CpUbYcQQavIr/lZLNbl84/4GJ0jiV9Pas/Emt++jxXXDuNUamaJvWErsCbv1QGGMRKqhc+Jgsl
 vB4zC7iZZUT4WG8tmXX2OZG3VCeGkyl31OIflRnXE0ddoqTmgU+GHs3N9nHvI6ydTu9fdo5CCEi/o
 i3cCn/Nw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt3Mf-000zp0-8f
 for barebox@lists.infradead.org; Mon, 23 May 2022 08:24:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1nt3KX-0002te-VZ; Mon, 23 May 2022 10:22:21 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1nt3KX-0001DI-Mo; Mon, 23 May 2022 10:22:21 +0200
Date: Mon, 23 May 2022 10:22:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220523082221.4qusbcylocpldf5u@pengutronix.de>
References: <20220523072125.776735-1-a.fatoum@pengutronix.de>
 <20220523080009.2jya2x4nb7d5xpty@pengutronix.de>
 <7964f3ba-1c1c-af00-bbcb-12eb297716dc@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7964f3ba-1c1c-af00-bbcb-12eb297716dc@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_092434_191991_131C06BD 
X-CRM114-Status: GOOD (  17.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: usb251xb: remove duplicate status line on probe
 success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-05-23, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 23.05.22 10:00, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 22-05-23, Ahmad Fatoum wrote:
> >> A successful probe results in two lines logged:
> >>
> >>   usb251xb usb2514b0: Hub configuration was successful.
> > 
> > The configuration (and this line) can be skipped if you specify
> > "skip-config".
> > 
> >>   usb251xb usb2514b0: Hub probed successfully
> >>
> >> There is no case where the first line is printed, but not the other and
> >> they say about the same thing anyway, so drop the latter.
> > 
> > The config step can fail. What about lower down the log level for the
> > config step to dev_dbg() instead?
> 
> If the config step fails we will get an error message from driver core.
> A driver with skip-config doesn't do anything useful that warrants
> a probed successfully message, so I think it's safe to drop it.

Hm.. with skip-config the driver still brings the hub out of reset and
into a working state. Anyway just wanted to pointed out, that there are
use-cases where the message is not printed twice.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

