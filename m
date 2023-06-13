Delivery-date: Tue, 13 Jun 2023 10:36:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zWH-004vKK-Gk
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:36:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zWE-0003zR-VC
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:36:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l/WnRK+XKribjhjxcjgI/2nyWeUsKOCopGg9q7JDQAU=; b=IIbStgqfcIg9g4ntys1Xmf45ci
	GJLI5Gm9d7YhygulZ7285j3OubwGJ4x3LemubVi1V4CP3QLgUTzXCk8iCz8WaWcCj/iSK0NLXclOm
	XfA9LfyXajqrQjfYhZzmHE8cYWswDgDus6S710liVct5nU2F2lbKNwbOdcZUl12ZwBDc8ONvkl/RM
	/C59ovCNLCiQsQs/ULfVXuWODgy9eWa7TgZyOYWgZ17kphxc8147410uBSvkmIHH9h1zFu7+vJjXa
	jacZotmgAqs2XDBKJukUYhZdGjZcvVVQFkNILjSRFxkKp5T823Ds9wXwejFO4HdpRMfm01zuvltaf
	oNIv+CLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zVB-007OIk-12;
	Tue, 13 Jun 2023 08:35:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zV7-007OGe-2a
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:35:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zV6-0003Zn-C9; Tue, 13 Jun 2023 10:35:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zV6-0003G1-5u; Tue, 13 Jun 2023 10:35:40 +0200
Date: Tue, 13 Jun 2023 10:35:40 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Jan Palus <jpalus+gnu@fastmail.com>
Message-ID: <20230613083540.GP18491@pengutronix.de>
References: <20230612125823.1087094-1-a.fatoum@pengutronix.de>
 <20230613075911.GM18491@pengutronix.de>
 <7f57920f-a892-57f7-ba06-514951470075@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f57920f-a892-57f7-ba06-514951470075@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_013541_839385_3CFE42A6 
X-CRM114-Status: GOOD (  19.07  )
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
Subject: Re: [PATCH master] kbuild: Port silent mode detection to future gnu
 make.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 13, 2023 at 10:02:03AM +0200, Ahmad Fatoum wrote:
> On 13.06.23 09:59, Sascha Hauer wrote:
> > On Mon, Jun 12, 2023 at 02:58:24PM +0200, Ahmad Fatoum wrote:
> >> Port silent mode detection to the future (post make-4.4) versions of gnu make.
> >>
> >> Makefile contains the following piece of make code to detect if option -s is
> >> specified on the command line.
> >>
> >> ifneq ($(findstring s,$(filter-out --%,$(MAKEFLAGS))),)
> >>
> >> This code is executed by make at parse time and assumes that MAKEFLAGS
> >> does not contain command line variable definitions.
> >> Currently if the user defines a=s on the command line, then at build only
> >> time MAKEFLAGS contains " -- a=s".
> >> However, starting with commit dc2d963989b96161472b2cd38cef5d1f4851ea34
> > 
> > To which repository does dc2d963989b96161472b2cd38cef5d1f4851ea34
> > belong?
> 
> https://git.savannah.gnu.org/cgit/make.git/commit/?id=dc2d963989b96161472b2cd38cef5d1f4851ea34

Ok. Reworded "commit dc2d963989b96161472b2cd38cef5d1f4851ea34" to:

GNU Make commit dc2d963989b9 ("Always add command line variable
assignments to MAKEFLAGS")

and applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


