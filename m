Delivery-date: Wed, 28 Feb 2024 10:21:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfG7e-00D7AM-1V
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 10:21:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfG7d-00018D-Or
	for lore@pengutronix.de; Wed, 28 Feb 2024 10:21:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3UgPBFJpdq7WhJNBr7YgjAuIBOtqgLeqbhtGObvp7A0=; b=oom2X7c7Wv1BgU0JgDfijsE4Qk
	o3a7XNW8JYX6s0FHZ+Tk8SR6m1KIbF8dTHa9D6jd7phbDEs2Fx0xPsxKAlXowkUIEIXFHnkOnzMft
	rM1tafUyUkR9G6AW5oVIN0dFz3b2Qb/1dBSRdA7aYdD/hD0MVKpF0b9OTgkcxiQRUIsl2dwvq7vRg
	ARiW/oOFPrkLls+mq4OFdenHwfjxdUh740cusqE65uHz1M7o37iYakORXE90VlaxGCrchE3irihmt
	sWiZbd8hguL7dta5p/xMadaI9W0vgITyYvnqRQihS0Ug7IX/3Izh0sAewAMotS9xqvjxoj3sPN40q
	tmpFnwvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfG78-00000008eHb-3p8T;
	Wed, 28 Feb 2024 09:20:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfG75-00000008eFI-2MXE
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 09:20:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rfG72-00010O-7h; Wed, 28 Feb 2024 10:20:28 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rfG71-003McY-EI; Wed, 28 Feb 2024 10:20:27 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rfG71-00C2lE-19;
	Wed, 28 Feb 2024 10:20:27 +0100
Date: Wed, 28 Feb 2024 10:20:27 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-ID: <Zd7628d1zA82o7JL@pengutronix.de>
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
 <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
 <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
 <20240228102615.938c123aaae9137aae26439c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228102615.938c123aaae9137aae26439c@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_012031_641287_B36C1960 
X-CRM114-Status: GOOD (  30.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Feb 28, 2024 at 10:26:15AM +0300, Antony Pavlov wrote:
> On Sat, 17 Feb 2024 09:51:02 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi All!
> 
> > Hello Antony,
> > 
> > On 05.02.24 10:59, Antony Pavlov wrote:
> > > On Wed, 31 Jan 2024 22:37:50 +0100
> > > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> > > 
> > > Hi All!
> > > 
> > >> Hello Dan,
> > >>
> > >> On 31.01.24 22:03, Dan Shelton wrote:
> > >>> Hello!
> > >>>
> > >>> Does barebox support booting from a NFSv4 filesystem, e.g. boot from
> > >>> NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
> > >>
> > >> The barebox network stack only does UDP/IP. There have been attempts to
> > >> bring a TCP stack into barebox, but none have so far succeeded to
> > >> make it mainline. This is a hard requirement before we can consider
> > >> supporting NFSv4. I hope that lwIP could fill this gap in the future,
> > >> but no one is actively continuing this work as far as I am aware[1].
> > > 
> > > I have started integration on picotcp into barebox in 2015, see
> > >   https://lore.barebox.org/barebox/1436991230-14251-10-git-send-email-antonynpavlov@gmail.com/T/
> 
> Actually I made the first attempt to integrate picotcp into barebox in 2014,
> see http://lists.infradead.org/pipermail/barebox/2014-May/019243.html
> 
> 10 years is too long for this task :)
> 
> In the message http://lists.infradead.org/pipermail/barebox/2015-July/024244.html
> if I understand correctly Sascha asked me to keep network stuff
> users (tftp, nfs, netconsole) as intact as possible.
> 
> At the moment I understand that this task is too hard.
> 
> The problem is: the network stuff users don't rely on "a network stack"
> in the true sense. E.g. tftp_handler() takes an ETHERNET PACKET on
> it's input, tftp_handler() skips Ethernet and IP stuff by itself
> and modifies UDP fields directly!
> 
> This week I have connected picotcp code to the existing network code
> in the way that makes it possible to keep dhcp_handler() and
> ftp_handler() intact. The result is ugly: barebox netdevice driver
> receives frame from network, pass it to picotcp, picotcp parses
> network protocol headers and extracts udp payload, next
> picotcp passes udp payload back to my picotcp-to-barebox adapter,
> the adapter RECONSTRUCTS ETHERNET PACKET and give it to tftp/dhcp_handler()!
> This horrible approach creates more problems than it solves!

So if I understand correctly you tried passing *all* incoming packets to
picotcp and route some of them back to the barebox network stack.

Instead of passing all packets to picotcp, can't we just dispatch the
incoming packets on a per-port basis in barebox and only pass the ones
picotcp shall handle to picotcp?

So basically a struct net_connection with the handler set to the picotcp
receive function?

That way it might be possible to have the barebox network stack and
picotcp in parallel and port the handlers over to pictotcp one by one.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


