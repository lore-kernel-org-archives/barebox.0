Delivery-date: Wed, 31 Jan 2024 22:38:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVIHr-00ESfC-2Q
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 22:38:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVIHs-0004Cf-Bb
	for lore@pengutronix.de; Wed, 31 Jan 2024 22:38:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S4OE1g8wzpWvOxoRNpt586+M/SUVa/iiEbsJBQvCCEU=; b=n3gyLyhqLKRh6BoMRsVgJnaaZC
	Pp2KIYpj/E2S6GhrOFLKijaD0uI/TcXD5fVAYIDZSzF7pMT8SYIkND9ebpQbTI+gpnHfj2LogesFl
	veOEgBb8NxedBg/WbsRxvdNusUChok6QVL16YgA3hLCTs+osk9ZxZNplDnZSyzrnj0bKQJFC1VrE3
	BCUJxTKGjTFAxk1t6sdhPNYmh5L/4dWpoQY933lxpXufqpncks7kvnVmIT8Tl5zGpSzY5JoGvgFQk
	537hxhVOlP2tX0GEfsuhmKh3u/tyimgLVo7zKL01YSFEI511jwu3cPSoB5YzVtASy35fNM02akRks
	Z+QUJEjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVIHN-00000005ZrH-3uz6;
	Wed, 31 Jan 2024 21:37:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVIHK-00000005ZqE-2lOC
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 21:37:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVIHH-00048Y-FT; Wed, 31 Jan 2024 22:37:51 +0100
Message-ID: <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
Date: Wed, 31 Jan 2024 22:37:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Dan Shelton <dan.f.shelton@gmail.com>, barebox@lists.infradead.org
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_133754_733683_B996FDB0 
X-CRM114-Status: GOOD (  16.84  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Dan,

On 31.01.24 22:03, Dan Shelton wrote:
> Hello!
> 
> Does barebox support booting from a NFSv4 filesystem, e.g. boot from
> NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?

The barebox network stack only does UDP/IP. There have been attempts to
bring a TCP stack into barebox, but none have so far succeeded to
make it mainline. This is a hard requirement before we can consider
supporting NFSv4. I hope that lwIP could fill this gap in the future,
but no one is actively continuing this work as far as I am aware[1].

> We need NFSv4, because it does not need rpcbind, and combines
> filesystem, lockd and other stuff all in one TCP port (2049). Site
> policy also does not allow NFSv2/NFSv3, but allows NFSv4.

Please note that this only concerns barebox and that kernel nfsroot is
unaffected. You can load kernel and device tree over TFTP and supply a
suitable command line argument to the kernel to use a NFS root.

The standard net boot target does just that:
https://elixir.bootlin.com/barebox/v2024.01.0/source/defaultenv/defaultenv-2-base/boot/net

It specifies TCP, but hardcodes v3 currently. I guess we could drop the v3 and let
the kernel decide on its own what version it will use? If that doesn't work, you can
override the file locally in your environment, e.g. via CONFIG_DEFAULT_ENVIRONMENT
pointing at a directory that contains a boot/net file with the appropriate
changes (or just call your boot target something else like boot/nfsv4).

Hope this helps.

[1]: Some attempts I am aware of:
     https://github.com/a3f/barebox/tree/lwip
     https://github.com/olerem/barebox/tree/picotcp-2019.06.29
     https://github.com/jmaselbas/barebox/commit/4a987bfdc2ad50c13126dd6290d2477c3fc0c87d

Cheers,
Ahmad

> 
> Dan

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



