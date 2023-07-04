Delivery-date: Tue, 04 Jul 2023 14:01:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeiT-00EkyZ-NL
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 14:01:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeiR-0004bN-AV
	for lore@pengutronix.de; Tue, 04 Jul 2023 14:01:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/KMg83bPhiU49n3OmowsMgRClO9hajH5o7BqyFtUlh0=; b=kmwquVdoXF1v9V/tH4JqrgLcdH
	hw+z4BxKqJ5bJXs0QFFlI9f9iAZZnJ+5MbYP5HnDzH3krD7lY98+PAwRA06tN1Zt2kssbWbqyIHQF
	eSllUL+5NKWQPff5sgO9Rh+HEIU2QptPAEvyQuNEryvNBWxeQV/hX2XUsEX0EXJU5lk+Nzggqw9G/
	AeGLwHFfkH/oGnAh6M7lTR6ncmWB4LA5OIbi2Wmp6Ed5hPj2WeBrw95LG+qfTc7wptKXE6/EiPIMU
	bg025tjrYDxIy+wwhS1ODJnFM4yFPrxKOJVrG6jqyZQJ9gzR/agddUNxyPcJTST01/6A63qAsHvEC
	2xiuPA6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGehE-00DBKC-2C;
	Tue, 04 Jul 2023 11:59:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGehB-00DBJO-1o
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 11:59:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGehA-0003zd-4V; Tue, 04 Jul 2023 13:59:48 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGeh9-0008Jf-Tr; Tue, 04 Jul 2023 13:59:47 +0200
Date: Tue, 4 Jul 2023 13:59:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230704115947.pwrt6gc5bsjeif5l@pengutronix.de>
References: <20230704112921.741776-1-m.felsch@pengutronix.de>
 <20230704112921.741776-2-m.felsch@pengutronix.de>
 <20230704113803.GB18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230704113803.GB18491@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_045949_598096_DC868CD4 
X-CRM114-Status: GOOD (  22.17  )
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
Subject: Re: [PATCH v2 2/3] commands: test: replace printf with pr_err
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-04, Sascha Hauer wrote:
> On Tue, Jul 04, 2023 at 01:29:20PM +0200, Marco Felsch wrote:
> > Replace the printf() with pr_err() to support:
> >  - color formated prints
> >  - logbuffer storing (dmesg)
> >  - loglevels
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > v2:
> >  - new patch
> > 
> >  commands/test.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/commands/test.c b/commands/test.c
> > index c1b84c42ef..5478011185 100644
> > --- a/commands/test.c
> > +++ b/commands/test.c
> > @@ -77,7 +77,7 @@ static int do_test(int argc, char *argv[])
> >  	if (*argv[0] == '[') {
> >  		argc--;
> >  		if (*argv[argc] != ']') {
> > -			printf("[: missing `]'\n");
> > +			pr_err("[: missing `]'\n");
> 
> Logging functions pr_* and dev_* should be used for core and driver
> messages, commands should use printf. The line between logging functions
> and commands is not always clear in barebox, but here it is.

Okay, thanks for clarification. I will drop the patch and send a v3.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


