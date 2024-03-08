Delivery-date: Fri, 08 Mar 2024 11:24:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXOs-00Da1h-2H
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 11:24:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXOr-0007iO-VO
	for lore@pengutronix.de; Fri, 08 Mar 2024 11:24:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dBJsRPERXNkdLQmxDLl03DUvCFq86Rez/ZEiuWxKL3E=; b=x9Z6V3/USbTUCBzW8z5dO11A7R
	MHgyboV2uRFoAUQ1ooctr9eVwuiU4/MX0H8SWy+Ad2dGh6l97H4CErNSgE2B3LkeOnMizgovFJEnB
	vWSQ63KisYgCUoenF2yya4S0Tf0OxdKuVQ/+giuZvw7mjTJZ4QtW17XXS1/nJnEOgYgHmEhh0sH+z
	QEBnnQOycoI3zUzJZNfcH5Knr5B6OmVnAT52ifhbhkI3l3FQGemVXqXkFdN9HPiAyf9YQ8ndRetz1
	pMHlDyOxFfpGymaCCUAHMquPlZzqgjZN7aiJ7btNpiVBtvXAzr9FuzlqILpGq8K/JvqOcxiMmKf4K
	5TNsZm6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXOB-00000008kjk-3tl9;
	Fri, 08 Mar 2024 10:23:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXO6-00000008khp-1TAn
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 10:23:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1riXO3-00075f-C9; Fri, 08 Mar 2024 11:23:35 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1riXO2-0057K1-QI; Fri, 08 Mar 2024 11:23:34 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1riXO2-007u5R-2L;
	Fri, 08 Mar 2024 11:23:34 +0100
Date: Fri, 8 Mar 2024 11:23:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org
Message-ID: <ZernJsdi43QXwuVr@pengutronix.de>
References: <20240220004316.fdc79907089c7358a1e67f62@gmail.com>
 <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
 <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
 <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
 <ZdSu671i2n4RQPoz@arcana.i.gnudd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZdSu671i2n4RQPoz@arcana.i.gnudd.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_022338_554600_E95DCCB8 
X-CRM114-Status: GOOD (  26.25  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 20, 2024 at 02:53:47PM +0100, Alessandro Rubini wrote:
> >> This hasn't
> >> seen development activity in 5 years.
> > 
> > Please see https://github.com/virtualsquare/picotcp
> 
> But the TCP/IPV4 standard didn't change, either.
> 
> >> lwIP on the other hand still sees active development.
> > 
> > I agree with you. It looks like lwIP is more popular than picotcp.
> 
> Sure. It's older and it has a loyal (or addicted) user base and
> commercial support. Or it just needs more commits because it'w worse and
> full of bugs.
> 
> As far as I know, lwIP is horrible code, difficult to integrate and
> maintain, while picotcp is designed in the right way (although I admit
> I only looked at the former, about picotcp I only talked with the main
> author without looking at the code).

I have played around with lwIP and tried to integrate it into barebox.
Now that there are patches integrating lwIP into U-Boot that was quite
easy to do as the patches show the places we have to touch.

It was easy to get ping and dns working, at least when the host to be
pinged is in the local network. I wasn't able though to figure out how I
can get lwIP to route packets through a gateway other than setting my
(currently only) network interface as the default fallback interface
which is used whenever no route is found.

It turns out that in lwIP the ip, netmask and gateway are members of
struct netif. It has no idea of separating a link from a network
interface. Yes, we do the same in barebox as well, but I don't need
a dedicated network stack to have the same limitations we have in our
adhoc network stack.

In order to get an idea of how routing is supposed to work I had to look
around in the code. It's really a pain to see and I really don't want to
have to debug it. The combination of two spaces indentation and a huge
#ifdef density makes it really hard to read.

>From that experience I can understand your concerns about lwIP.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


