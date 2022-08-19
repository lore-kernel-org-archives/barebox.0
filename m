Delivery-date: Fri, 19 Aug 2022 09:12:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwBL-003ovj-JM
	for lore@lore.pengutronix.de; Fri, 19 Aug 2022 09:12:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwBJ-0002VQ-HZ
	for lore@pengutronix.de; Fri, 19 Aug 2022 09:12:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kKhTCODdubfsccN5B2VCyFEJcK3cwHRbspDubO2lr+A=; b=yhhq7l9D7QFg63yPOyLX+3sQQc
	fVCgrWndYYwisH2v4fOEfzqJV2chomVbqeWJRcw7n5F/DL0B30H35JcwcnlJ0xGdmpFuaW3yfIYdD
	y1aNtk0wO8SPB1IeBog14h4GoC+dasImjalsghrLXk1bzDGiHMSiBssMHuOomwT+WP8Bs0Z2ph56m
	5QOlSsQ+rFRqAJPu0xMtYvud6lGUW4EV+CtmSoSsaQxG6w4+VOnhcDOwGx9mI/0ZmVDHo2Tm+jVzd
	PV8uzuF+DOj/zj+29Js6Gfk8yyBiw/SlA3wEc9FhpDI5bix1PYZwtpXj07oADA/rnN+Ha3fb64Oss
	pqOF+ztQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOw9W-0036Nm-HK; Fri, 19 Aug 2022 07:10:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOw9R-0036Jk-7p
	for barebox@lists.infradead.org; Fri, 19 Aug 2022 07:10:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOw9O-0001tx-0W; Fri, 19 Aug 2022 09:10:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOw9N-00067B-0e; Fri, 19 Aug 2022 09:10:37 +0200
Date: Fri, 19 Aug 2022 09:10:36 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220819071036.GX17485@pengutronix.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
 <20220816091918.GO17485@pengutronix.de>
 <lyfshw5xwe.fsf@ensc-pc.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lyfshw5xwe.fsf@ensc-pc.intern.sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_001041_319140_93A1D6CA 
X-CRM114-Status: GOOD (  20.80  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 00/18] add "windowsize" (RFC 7440) support for tftp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 16, 2022 at 11:40:49AM +0200, Enrico Scholz wrote:
> Sascha Hauer <sha@pengutronix.de> writes:
> 
> >> The tftp "windowsize" greatly improves the performance of tftp
> >> transfers.  This patchset adds support for it.
> >
> > There's a variant of the tftp-hpa package with RFC7440 support here:
> > https://github.com/ClausKlein/tftp-hpa.git
> 
> thx; seems to work with it.  I had to comment out the setuid() stuff to
> run it as an ordinary user but can start it then as
> 
> | ./tftpd/tftpd --address [::]:1230 -s /var/lib/tftpboot/ -vvv -l -L  -p

I didn't manage to run it as non-root. As root it works as expected
though. The speed gain is really impressive.

I saw that atftp already contains a patch for RFC7440 support, so sooner
or later RFC7440 will find its way to the distributions.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


