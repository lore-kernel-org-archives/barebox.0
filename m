Delivery-date: Wed, 28 Feb 2024 12:42:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfIKx-00DKxf-2J
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 12:42:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfIKw-0007yo-QU
	for lore@pengutronix.de; Wed, 28 Feb 2024 12:42:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9/E5lMLhKEKsYlR9trLCb7IQ576L98zgSjvRHJUNiM=; b=yEcRmqySpMuIAj
	e99n5xqvol6JKWm8wWbpoka2nXI+6cg9UC8QZe6NTJoy9aw+IkcLyTccamOCnWeVqYTa1UVgKNhNd
	uYvHlcMD/IwLUCrb5Q6rC8rW+AxvVft4HDdTdBx2Yv7ZY4liAx1R+9wzsTEL5CHY3wFr4m/qm080S
	1nQB1S4xmIw7rR5mWFHkhA5DajW7KTxcU55NcUBBLbDZL4fWoEC9IdBIWLkmInQF0H5HHk1LVD+Ev
	PSH8GTV2JYP5XSqmOSGcACN/9CY7jR22bItCtcR0fAVsAZ29SnvtuKkXrsV1Jcw4/viQFjcKY2fDn
	EFl+mMEmv1VzXblKUuSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfIKG-0000000940h-2kIm;
	Wed, 28 Feb 2024 11:42:16 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfIIw-000000093TU-1DxS
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 11:40:56 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2d23a22233fso57530091fa.2
        for <barebox@lists.infradead.org>; Wed, 28 Feb 2024 03:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709120452; x=1709725252; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X9/E5lMLhKEKsYlR9trLCb7IQ576L98zgSjvRHJUNiM=;
        b=njpKXw967Lq/8CcHf6AQfkHLfTrRlPjBWcCvkVoIJIg8038DRS7xSNFe+wvPCWgGeP
         rleHCexRpbTfi9n3MAc+AbQve93oFZlEI9RMXswwsVuWuJ+gbiJgFSLNhEwsg3ySTPh7
         rv0pAwSRity5lZTcp5D2om8+bH9x0DsZgZ+PtsZZczamHJkQGQm9QVLvONmiYwZ3XvRc
         oqGNiIzPCOz+6r+MTkdvf4kirywmcuDLyfEZP5CS/VFsRkdXMx+6nehSWtqgiqY83Efo
         xI5LEZL1Omzyvj8lr8YrSOpInkI0mu1QHyUOOWlJewav880X6JXVHOoy7VG29duaJT8b
         Uyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709120452; x=1709725252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X9/E5lMLhKEKsYlR9trLCb7IQ576L98zgSjvRHJUNiM=;
        b=kJqvTdVFCRzM/41SdD/10VL/cW+KJd1oi4FST6ylbyZ5zill5bAyY+hAOMmoduvnaC
         VQnV2JPuL4qtB4rXRl5HEpMddwRseBgEXjTEM3kM8HNCKsicILQj9j7J7fsejUFrKpcz
         LRQqNv/rW8il483JGstyTQM2wigFi/nFAkQI5LKs9YPAc4lnwHAGxHvejPqO532IerlU
         e033NuV4Q05b3m2xNAvQEFKy4O3MMG692HSImd7615ntn/B4Q2pVg1vD4kKfa2zpBqUd
         nFTWlnjKqF7Qvyw42sr+SMIk0krskZ3BDZb1Debu2r1hLeKNoKywjqfy0a5fdD+NMW5F
         Mjvg==
X-Forwarded-Encrypted: i=1; AJvYcCUBNxHWJz7jPh1C94b5Cbh9UJegx4T+TMFhAhaFPf1J3k3pkdA5U7lUT4r5pUoEqEMhO92ShXQbxcv7rUyrp1tsHUpv2Q0C3NufT8g=
X-Gm-Message-State: AOJu0YyB8GbEDaHt/I+gMlQMsBFxm8m+JQ/OyTJ6wiUlfILCONg6CEvR
	sf2/pOXTGYuVaXiSEI620HNWnnZPHATegCWsvVCwLdVtJ4yXLy3k
X-Google-Smtp-Source: AGHT+IEh0t764j2sSQVUfhRogrWXt+Mgv3RuN0rTkwfml/2r6Okj4dWnfviBB4/RDa6/0JgwoV598Q==
X-Received: by 2002:a2e:9f0e:0:b0:2d2:7a4e:f5e8 with SMTP id u14-20020a2e9f0e000000b002d27a4ef5e8mr8019860ljk.0.1709120451795;
        Wed, 28 Feb 2024 03:40:51 -0800 (PST)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id w14-20020a2e9bce000000b002d0c639e0cesm1596398ljj.6.2024.02.28.03.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 03:40:51 -0800 (PST)
Date: Wed, 28 Feb 2024 14:50:58 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Message-Id: <20240228145058.1df54e06780cdb4060fce1d7@gmail.com>
In-Reply-To: <Zd7628d1zA82o7JL@pengutronix.de>
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
	<a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
	<20240205125900.c4b182f57b6efe0152beee24@gmail.com>
	<90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
	<20240228102615.938c123aaae9137aae26439c@gmail.com>
	<Zd7628d1zA82o7JL@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_034054_435857_35ABA68A 
X-CRM114-Status: GOOD (  33.98  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Dan Shelton <dan.f.shelton@gmail.com>, barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 28 Feb 2024 10:20:27 +0100
Sascha Hauer <sha@pengutronix.de> wrote:


Hi Sascha!

> On Wed, Feb 28, 2024 at 10:26:15AM +0300, Antony Pavlov wrote:
> > On Sat, 17 Feb 2024 09:51:02 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >=20
> > Hi All!
> >=20
> > > Hello Antony,
> > >=20
> > > On 05.02.24 10:59, Antony Pavlov wrote:
> > > > On Wed, 31 Jan 2024 22:37:50 +0100
> > > > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> > > >=20
> > > > Hi All!
> > > >=20
> > > >> Hello Dan,
> > > >>
> > > >> On 31.01.24 22:03, Dan Shelton wrote:
> > > >>> Hello!
> > > >>>
> > > >>> Does barebox support booting from a NFSv4 filesystem, e.g. boot f=
rom
> > > >>> NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
> > > >>
> > > >> The barebox network stack only does UDP/IP. There have been attemp=
ts to
> > > >> bring a TCP stack into barebox, but none have so far succeeded to
> > > >> make it mainline. This is a hard requirement before we can consider
> > > >> supporting NFSv4. I hope that lwIP could fill this gap in the futu=
re,
> > > >> but no one is actively continuing this work as far as I am aware[1=
].
> > > >=20
> > > > I have started integration on picotcp into barebox in 2015, see
> > > >   https://lore.barebox.org/barebox/1436991230-14251-10-git-send-ema=
il-antonynpavlov@gmail.com/T/
> >=20
> > Actually I made the first attempt to integrate picotcp into barebox in =
2014,
> > see http://lists.infradead.org/pipermail/barebox/2014-May/019243.html
> >=20
> > 10 years is too long for this task :)
> >=20
> > In the message http://lists.infradead.org/pipermail/barebox/2015-July/0=
24244.html
> > if I understand correctly Sascha asked me to keep network stuff
> > users (tftp, nfs, netconsole) as intact as possible.
> >=20
> > At the moment I understand that this task is too hard.
> >=20
> > The problem is: the network stuff users don't rely on "a network stack"
> > in the true sense. E.g. tftp_handler() takes an ETHERNET PACKET on
> > it's input, tftp_handler() skips Ethernet and IP stuff by itself
> > and modifies UDP fields directly!
> >=20
> > This week I have connected picotcp code to the existing network code
> > in the way that makes it possible to keep dhcp_handler() and
> > ftp_handler() intact. The result is ugly: barebox netdevice driver
> > receives frame from network, pass it to picotcp, picotcp parses
> > network protocol headers and extracts udp payload, next
> > picotcp passes udp payload back to my picotcp-to-barebox adapter,
> > the adapter RECONSTRUCTS ETHERNET PACKET and give it to tftp/dhcp_handl=
er()!
> > This horrible approach creates more problems than it solves!

> So if I understand correctly you tried passing *all* incoming packets to
> picotcp and route some of them back to the barebox network stack.

for every barebox network device I create picotcp network device
which can send packets by picotcp initiative.
net_receive() just calls pico_stack_recv() with corresponding
picotcp network device as an argument, so no code change in drivers/net/.
net_poll() just calls pico_stack_tick().
So all incoming packets go to picotcp only.
Picotcp can send packet if necessary without barebox interraction.

UDP datagrams processed by picotcp routed to corresponding dhcp/tftp_handle=
r().
Are dhcp/tftp_handlers parts of barebox network stack?

> Instead of passing all packets to picotcp, can't we just dispatch the
> incoming packets on a per-port basis in barebox and only pass the ones
> picotcp shall handle to picotcp?

Good idea. I have to try. We can reroute IPv6 traffic to picotcp in net_rec=
eive()
and reroute TCP/IPv4 traffic to picotcp in net_handle_ip().

> So basically a struct net_connection with the handler set to the picotcp
> receive function?

net_connection handler is set to the normal unamended dhcp/tftp_handlers.

> That way it might be possible to have the barebox network stack and
> picotcp in parallel and port the handlers over to pictotcp one by one.

But I see a problem here. If there is a ARP respond in the incoming traffic
I have no idea there to send it. Both barebox network code and picotcp
can make ARP request. I suppose can just route ARP respond to the both stac=
ks.

But what I have to do if an ARP or ICMP echo __request__ is received?

I suppose it is possible to add some simple dynamic incoming packet filtrat=
ion rules
that can be changed on-the-fly for testing purposes.

--=20
Best regards,
=A0 Antony Pavlov


