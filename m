Delivery-date: Tue, 13 Jun 2023 08:55:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xw0-004qG7-RA
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 08:55:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xvy-0004GK-Cw
	for lore@pengutronix.de; Tue, 13 Jun 2023 08:55:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8vNpO27J2po7Jf7pCBhJtOySBdzHJ4Sepf1XpqMjfBw=; b=rVb1DLBGdBkSLycTMzNluctPsQ
	0XKBWGwrP5NQ6/RRaBma8TuivoqyDNdpwCf7KPF2iQV5JTdxgBlMHUj6SryKpSbi33sL+HWv4MQe5
	lCiz+BiKxAnJjekXEEo9TMArpp7DAElc7zdzFp0atG6k6Qfh8cXCrkAGWNAzCDAKxYSbUn/vK0hUI
	ap20XRYncHHy3NXUEfLDp9GIRVbKa21+MX7nwXyxlBNHd6aa+gatY5S1Dx0NmMe2Q1S/+ll9VVBVg
	nyI33GAqp8PenUF7qJr8HiQ8Uq0h2ZEsG98caiiORaMA2Hb0hBLrOHNhrS/ivuW45B+sj//ALMXB3
	Bbvvfw7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xuw-0078az-09;
	Tue, 13 Jun 2023 06:54:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xur-0078aU-3C
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 06:54:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8xuq-00046N-92; Tue, 13 Jun 2023 08:54:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8xuq-000555-0c; Tue, 13 Jun 2023 08:54:08 +0200
Date: Tue, 13 Jun 2023 08:54:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230613065407.GF18491@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
 <20230612123232.3071957-5-s.hauer@pengutronix.de>
 <20230613064518.up4nhv3t2iqcya4s@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230613064518.up4nhv3t2iqcya4s@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_235410_053860_96A6ED96 
X-CRM114-Status: GOOD (  27.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/5] dmesg: implement dmesg -n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 13, 2023 at 08:45:18AM +0200, Marco Felsch wrote:
> Hi Sascha,
> 
> On 23-06-12, Sascha Hauer wrote:
> > Under Linux dmesg -n can be used to set the console loglevel. Implement
> > the same for barebox.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/dmesg.c | 18 +++++++++++++++++-
> >  1 file changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/commands/dmesg.c b/commands/dmesg.c
> > index 00e5a159e0..953bdb2068 100644
> > --- a/commands/dmesg.c
> > +++ b/commands/dmesg.c
> > @@ -77,8 +77,9 @@ static int do_dmesg(int argc, char *argv[])
> >  	int opt, i;
> >  	int delete_buf = 0, emit = 0;
> >  	unsigned flags = 0, levels = 0;
> > +	char *set = NULL;
> >  
> > -	while ((opt = getopt(argc, argv, "ctderl:")) > 0) {
> > +	while ((opt = getopt(argc, argv, "ctderl:n:")) > 0) {
> >  		switch (opt) {
> >  		case 'c':
> >  			delete_buf = 1;
> > @@ -100,11 +101,25 @@ static int do_dmesg(int argc, char *argv[])
> >  		case 'r':
> >  			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
> >  			break;
> > +		case 'n':
> > +			set = optarg;
> > +			break;
> >  		default:
> >  			return COMMAND_ERROR_USAGE;
> >  		}
> >  	}
> >  
> > +	if (set) {
> > +		int level = str_to_loglevel(set);
> > +
> > +		if (level < 0)
> > +			return COMMAND_ERROR;
> > +
> > +		barebox_loglevel = level;
> 
> Not really realted to this patch, but should we make 'barebox_loglevel'
> private and use a setter like console_set_loglevel()? Asking because
> console_common.c is the currently the only upstream user.

I asked myself the same question and would likely write it with a setter
nowadays, but I was too lazy to change it ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


