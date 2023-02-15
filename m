Delivery-date: Wed, 15 Feb 2023 14:50:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIBY-008STv-Oc
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 14:50:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIBW-0004gi-1c
	for lore@pengutronix.de; Wed, 15 Feb 2023 14:50:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RqT2zJb3nFZ8VsRZAJ5UGa5cpF4ctemU6WGU+eui7yM=; b=Wvvm5CAm3ER33b1/lKU7u8BA0G
	D7qcMPJPfuoL5lFJ7PG3V96dOtrMHFbw1pL06tJs/TQLLsa5QmoHhvUwNEzYfPGQLTB2kanDqREvs
	pKnlMLINcFYNpytzo+Dnu3ve/WKMO8qA9sCPaYLVwRYQ/0v1FhaP5SBXyfrtzlCsed8+ooDBf9e7V
	mbkBvCyamcbJJ3m03neO2KDA8ujhVL4aN50aJBejbk09VI/3YOo0OJo0z90e1ENdp1xTg9QPiwlnl
	G/Uqp8XBENdLDG5S7x2vPtCsHES1XbcHuJHHLwuieDU0ICRdqOAZv8pgANudvAM7O+ujUy77ZB2oD
	PONg57Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIAF-0066Un-6E; Wed, 15 Feb 2023 13:49:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIA9-0066Rl-Vu
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 13:49:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1pSIA2-0004Bn-59; Wed, 15 Feb 2023 14:49:26 +0100
Message-ID: <ab776fa053a678bbf69085d3e36c7141b5cd93b8.camel@pengutronix.de>
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Otavio Salvador
	 <otavio.salvador@ossystems.com.br>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Marco Felsch
	 <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org, 
	yocto@pengutronix.de, barebox@lists.infradead.org
Date: Wed, 15 Feb 2023 14:49:25 +0100
In-Reply-To: <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
	 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
	 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
	 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org>
	 <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
	 <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_054934_048516_DFA4C4AD 
X-CRM114-Status: GOOD (  17.27  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [yocto] [OE-core] [PATCH 1/2] barebox: add initial support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Mittwoch, dem 15.02.2023 um 14:43 +0100 schrieb Alexander Kanavin:
> On Wed, 15 Feb 2023 at 12:22, Otavio Salvador
> <otavio.salvador@ossystems.com.br> wrote:
> > > Fair enough, I'm open to the idea. It would be interesting/useful to
> > > see if anyone else in the community is in favour of this or not. I'm
> > > sure you appreciate why we need to ask the question and why we can't
> > > just add everything! :)
> > > 
> > > The community usage does appear to be primarily phytec/ptx.
> > 
> > 
> > I have used barebox in some projects in the past for multiple customers. It is a solid and
> > commonly used bootloader. I consider U-Boot the industry standard, but Barebox is also widely
> > used, and it makes sense to be part of OE-Core.
> 
> I do not quite understand why barebox needs to be specifically in
> oe-core. There's a well maintained layer for it:
> https://github.com/menschel-d/meta-barebox
> so once all those meta-phytec recipes are phased out in favour of
> using that layer, there's no fragmentation.
> 

You forgot to mention https://github.com/pengutronix/meta-ptx/tree/master/recipes-bsp/barebox

I did never say that fragmentation is my only motivation.

Regards, Enrico

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Embedded Linux Consulting & Support        | https://www.pengutronix.de/ |
Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  |
31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    |



