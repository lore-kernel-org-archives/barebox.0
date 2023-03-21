Delivery-date: Tue, 21 Mar 2023 21:55:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pej0m-009ccB-Ct
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 21:55:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pej0m-0003Ll-9P
	for lore@pengutronix.de; Tue, 21 Mar 2023 21:55:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hs9+97xnodS62I350WzfZP4hOL6/Ire+1U6HBOf5i90=; b=BWiL6iqKjsgogPcHA+qRTYzqPn
	ZgCfb5QeEx4XbpJqyucA/4z6hUUxINjZfMWM2kx6VmYWjddCqvmFGDCYBWKMddXL/OtOp3y4g4/ET
	H+Ndge2lT1eQVnt2Kf0S2F1mrT/kJNgVHM/MbIkYRCGhbEmpfMMMMGB7tAxlpxHWVLbKcnVkx5i3F
	XBJDONgxi+ud4J6rnDVfkOJtm731iWe6+AMnlafldHugacnQJsAgtYLOzsWhv/Hruk118Pyq7b52c
	8Yw+DZwPDnhmIbOf4dU8nczvieq/sp2JVqsuS5E5kg/byqMekvRstVOlqEvNbBlwJEKGiYrGQC8KI
	q0AnQLOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peizS-00Dkg2-2E;
	Tue, 21 Mar 2023 20:53:54 +0000
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:400::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peizM-00Dke9-0b
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 20:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=Hs9+97xnodS62I350WzfZP4hOL6/Ire+1U6HBOf5i90=;
	b=1kJqUv7VT4pdr8s29qOzuv88LLzoiGNGezcELAhF93jtZ6G8WLP9TYRCMLvAxL1JPVtLpKM/WiUzU
	 7Bd0LL8hNFEOt/63zXnUTl3d6getTi05zVa29rZEugRy7d8REgoOwi8PUVVLnuufgheWAuBjm00sas
	 sVss3H6gGxxkjo9v07njMZym0ibf/jwNXtjDo5TZK2qJtkOqo/WKsdqC0M3/li78yhVaYVKGUyPwF5
	 Yo6RchRldiTe3x74PUe1NsYP6IevtdJVr5uHJDuOLgioU46sBg3ID0lWHgQQ/2EIfkhUAH5sYUrDoj
	 f4tIKORL80Fv33vjO80bm8phA8rgjHA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=Hs9+97xnodS62I350WzfZP4hOL6/Ire+1U6HBOf5i90=;
	b=YLPT7meRUYOiaC+Li8+BhhW1ezt9tvuLVtGlLTEKuO7tJWtNwVGqCLFvVjpDDXb4ow1QBjovNVp57
	 tuLPH4KDA==
X-HalOne-ID: 73905f25-c82a-11ed-9724-11abd97b9443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay1 (Halon) with ESMTPSA
	id 73905f25-c82a-11ed-9724-11abd97b9443;
	Tue, 21 Mar 2023 20:53:38 +0000 (UTC)
Date: Tue, 21 Mar 2023 21:53:37 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Wolfram Sang <wsa@kernel.org>, Sascha Hauer <sha@pengutronix.de>,
	barebox@lists.infradead.org
Message-ID: <ZBoZUZaqUVwlxH/B@ravnborg.org>
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
 <ZBnnbU1SUkNm4ryz@sai.fritz.box>
 <ZBn/ShAwKik7TdvZ@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBn/ShAwKik7TdvZ@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_135350_740541_A5343109 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all.

Correcting myself here.
> > 
> > Super interesting about the A9263 setup code. I missed it so far. Does
> > that mean that barebox can replace the at91bootstrap?
> Yes. The patch series I pointed at generates a bare variant that I
> successfully used to boot my board direct from ROMBOOT.
> It is a direct replacement for at91bootstrap and loads barebox as the
> next step bootloader.
The above is entirely correct - as the barebox variant supports booting from
SD card only, where at91bootstrap support additional boot sources.

Doable, but I did not have the need, so I did not look into it.


	Sam


