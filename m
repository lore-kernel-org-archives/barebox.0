Delivery-date: Mon, 23 May 2022 13:14:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt61V-006RAa-96
	for lore@lore.pengutronix.de; Mon, 23 May 2022 13:14:53 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt61T-0000iE-PX
	for lore@pengutronix.de; Mon, 23 May 2022 13:14:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p67qlZK8UanAoXgUACEXIwCI11/3f6oiVbh1lF7a/Vs=; b=d46m32BiPSeTBr
	3IxQlY3DX0fkBwL1HOAm+u/+7memdKppx8ag5Gc8Qzth7e1nBoTI5WjZ1RYKw6YrlWpe0o/hTVi/r
	XavF6Zau3Oog/ytGnqRYYokkOvTLT8mMZIzwJg3vy+2lQJ3TGUrLSWjvbVSov+INKT6FNcJ17jtNl
	0exLZz8wGIUygPeLuietVVvxB59Z2zgV51PveWwbhPtsYiQ/XAJwWyqDmyZZLZhhHztoryv8E4hJy
	3HzG+Yuy6qv9eIRKe7IcN4BucynP8dOW0uRNU7gayEDz/HOYdSrFlNWMmZMq+8jfcXi66b3NpuHaE
	wlAHQkzk/xvfdL1QjcwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt5zp-003aNc-GA; Mon, 23 May 2022 11:13:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt51q-0037rB-4m
 for barebox@lists.infradead.org; Mon, 23 May 2022 10:11:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1nt51m-0005SZ-FX; Mon, 23 May 2022 12:11:06 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1nt51m-0001na-5s; Mon, 23 May 2022 12:11:06 +0200
Date: Mon, 23 May 2022 12:11:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220523101106.l7njntapy7wlusrj@pengutronix.de>
References: <20220523072125.776735-1-a.fatoum@pengutronix.de>
 <20220523080009.2jya2x4nb7d5xpty@pengutronix.de>
 <7964f3ba-1c1c-af00-bbcb-12eb297716dc@pengutronix.de>
 <20220523082221.4qusbcylocpldf5u@pengutronix.de>
 <c9ecf954-af9d-cdc6-083a-7df248ddfcae@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9ecf954-af9d-cdc6-083a-7df248ddfcae@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_031110_242067_E82C2DAA 
X-CRM114-Status: GOOD (  21.02  )
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
> On 23.05.22 10:22, Marco Felsch wrote:
> > On 22-05-23, Ahmad Fatoum wrote:
> >> Hello Marco,
> >>
> >> On 23.05.22 10:00, Marco Felsch wrote:
> >>> Hi Ahmad,
> >>>
> >>> On 22-05-23, Ahmad Fatoum wrote:
> >>>> A successful probe results in two lines logged:
> >>>>
> >>>>   usb251xb usb2514b0: Hub configuration was successful.
> >>>
> >>> The configuration (and this line) can be skipped if you specify
> >>> "skip-config".
> >>>
> >>>>   usb251xb usb2514b0: Hub probed successfully
> >>>>
> >>>> There is no case where the first line is printed, but not the other and
> >>>> they say about the same thing anyway, so drop the latter.
> >>>
> >>> The config step can fail. What about lower down the log level for the
> >>> config step to dev_dbg() instead?
> >>
> >> If the config step fails we will get an error message from driver core.
> >> A driver with skip-config doesn't do anything useful that warrants
> >> a probed successfully message, so I think it's safe to drop it.
> > 
> > Hm.. with skip-config the driver still brings the hub out of reset and
> > into a working state. Anyway just wanted to pointed out, that there are
> > use-cases where the message is not printed twice.
> 
> Would you prefer I consolidate the logs messages into a single line instead?

Still think that the easiest would be to lower the hub configuration
print to dbg.  So one can enbale the debug on demand if needed. But a
single line info() seems fine for me as well.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

