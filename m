Delivery-date: Mon, 30 Jan 2023 19:36:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0u-007tNY-7D
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:36:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0q-0003ex-SB
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:36:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D7oUTAikJ4Mdso4QqyLBUehOh1BDFmbAC8FfOEMdLDw=; b=4GCA33ndGEsLjbtxKnd35Jq7NC
	AkU+D3ecXtV2ujd08sWGujctnAf1Me3nl2SLm+01MppwyZNhjT0IuUP1fQOtl1ASCtd3P2ZAw9KSo
	l6/jUJIHRwvgYRLOGRrJ4w7SrvMvxiGvnFC83T/xrZyRcDlNseoS/Dje+vCzUXBkcTaQ7GJAd0tiA
	w814ckkLZj6SXki3BDDzuGvEzazvbHhKUrtfnXVyZGbXFscaEum0EFVeFC7aM2soFXS0zbmMv3FPP
	tXpaTymfdIwYhcki8gXTw6s8uFUKT9h/4iLYaHnstMpvbFon4nszCKi1AARKLolMEQJ+7SbrCIkkB
	MIebQvPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYzX-0052oH-Fk; Mon, 30 Jan 2023 18:34:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYyh-0052Wa-TV
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:34:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMYye-00031x-QG
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 19:34:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMPCr-0006PZ-VD; Mon, 30 Jan 2023 09:08:01 +0100
Date: Mon, 30 Jan 2023 09:08:01 +0100
To: John Watts <contact@jookia.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230130080801.GO13319@pengutronix.de>
References: <20230126183624.85500-1-contact@jookia.org>
 <20230126190258.110423-1-contact@jookia.org>
 <20230127080633.5f2g46g3j6j7wcpm@pengutronix.de>
 <Y9ORygZa/PBo2ucN@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9ORygZa/PBo2ucN@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_103404_104505_8405F5BB 
X-CRM114-Status: GOOD (  23.24  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DATE_IN_PAST_06_12,DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX6: Specify OCRAM base address and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 27, 2023 at 07:56:42PM +1100, John Watts wrote:
> On Fri, Jan 27, 2023 at 09:06:33AM +0100, Marco Felsch wrote:
> > Hi John,
> > 
> > On 23-01-27, John Watts wrote:
> > > The i.MX6 includes some on-chip RAM: 128KiB on most variants, with 256KiB on
> > > the Dual and Quad variants.
> > > 
> > > This region is where the first stage of Barebox gets loaded if RAM
> > > initialization isn't hard coded using DCD information.
> > > 
> > > Add the base address and size so it can be used to calculate where to put the
> > > stack at boot.
> > > 
> > > Signed-off-by: John Watts <contact@jookia.org>
> > 
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Do I add that to a V3? :)

No. I collect the Reviewed-by tags while applying. Or better, git b4
does this automatically for me ;)

> Should I add the review stuff to my Novena patches too?

Usually when sending a new series you add the tags you got from the
previous one, but just adding tags is not a reason for resending.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


