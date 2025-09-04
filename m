Delivery-date: Thu, 04 Sep 2025 08:51:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3om-007wL2-07
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 08:51:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3ok-0003q3-Sh
	for lore@pengutronix.de; Thu, 04 Sep 2025 08:51:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t7E24wsHcey8nIzkInTl3xI17yHQBeCWSBF9DxAT4C0=; b=37gwSMfgdOH6/la8ECbkUN5mah
	WW7Tk2UBNBE7V/gga3yyg3IUEE1a6RfPQ/9KrXwUn6OIs5ulXIOrJh7KTWNpvxFuINqst0zYijap3
	BYL4++l8BT4ypL0YtdIVvi2+lSnYwrupelb4WudKMmVH9/ke9FkpW0e7d6/xqGCPtQ1P6jfL9IPMG
	h6vkJGQ9MdKmC7Z6h5IsuBEbmRa7xtbE7Wti/RM8edn5KkA6A6a6Dv7X8wOPGfbTGPaGJcTN4JtAb
	kNphmKzq2y6P6qFUTXnSaOSNtx4Zp9VHSJYyZ+tHC3NYP8u0xqE4KhACYuv8OCKcg9FhMMyXAZzRp
	vfmSfrFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3oK-00000009eO0-0LTF;
	Thu, 04 Sep 2025 06:51:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3lj-00000009dnS-1mit
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 06:48:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uu3li-00037B-23; Thu, 04 Sep 2025 08:48:26 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uu3lh-003gVG-2p;
	Thu, 04 Sep 2025 08:48:25 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uu3lh-0023oy-2S;
	Thu, 04 Sep 2025 08:48:25 +0200
Date: Thu, 4 Sep 2025 08:48:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: anis chali <chalianis1@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aLk2OXrt357LdhkT@pengutronix.de>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-6-chalianis1@gmail.com>
 <aLfqB0Ma_UTaGKpG@pengutronix.de>
 <CAL+1fyD6Jevxx_wP00caRoXe0yRmM6uScJN8W3fkRVNVfLRj1Q@mail.gmail.com>
 <aLksEfZ3-YiEL-xN@pengutronix.de>
 <CAL+1fyA5FtjLfRDbF-dpxr=T6kL=hrF8pr6wJk5aR1X=5CEFUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+1fyA5FtjLfRDbF-dpxr=T6kL=hrF8pr6wJk5aR1X=5CEFUg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_234827_460925_388BA357 
X-CRM114-Status: GOOD (  26.59  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/7] efi: payload: add support for efi stub boot and fit
 image.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 04, 2025 at 02:20:59AM -0400, anis chali wrote:
>    Hi Sascha,
>    > Please keep the list on Cc. Other people might be interested as well and
>    > might have some opinion in the discussions taking place.
>    Sorry for that of course.
>    > I just looked around how fit_has_image() is used. The return value is
>    > treated as bool by all callers, so I think it's better to just return
>    > bool from the function. I just sent a patch for it...
>    ack
>    > Sorry, I don't understand the question.
>    I was asking, would 128KB be always enough to cover any hardware, should
>    we go for 512KB instead?

When I understand correctly the 128KiB would only be the additional
memory for later additions to the device tree, right?

I think for that 128KiB should be quite much already.

>    For now I submitted with 128KB.
>    > No. I don't do EFI very much and I currently don't have a setup for
>    > testing this. Ahmad is more experienced with EFI than me.
>    Ok, I can maybe share my scripts, they are not clean at all with many
>    repos.  if I have time
>    I will do some clean up and share them (there scripts to generate
>    fitImage, linux, dts, optee, TF-A, UKI, edk2, custom qemu ...).
>    Thanks.

Great, looking forward to it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


