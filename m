Delivery-date: Mon, 20 Oct 2025 15:23:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAprN-009uPg-0u
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 15:23:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAprM-0005ag-M4
	for lore@pengutronix.de; Mon, 20 Oct 2025 15:23:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qSsuR728dTGD9wRj+xvV9w2zui623Jue8JhxAuvqsJ0=; b=eAEmOsOfhTLLWI9y1AF7HA0t4m
	scQCe9W7JcWr6EGBmR0pYFsz79o1iGMj3V1ela45gCLAS1wGxgQvUzLViz2T4vEYLgIysJYiRg+UP
	Z5j9PwDXUeKJGCANMx+EDgVOeZnLls30vuYzz1+l92/AQrcPAYXMZk1QtGFqwuuucX/fxQS4z3O59
	WHsFUy0nsY5xP4YmDQGyseAiaYcEkiJuWLEIQquNHT2kZ0ylDy/BlppGVwcW1OrylKyj0TxyunJMn
	WFCNdtvtMpmSfg84OKbZlRLDHn7eZ7lfa6PAK43CYccUx572oJa8kWh8v86Ps3+/Q2e2BiTWgJ58p
	2QONuJsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApqv-0000000Dlyh-3KQU;
	Mon, 20 Oct 2025 13:23:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApqs-0000000DlxM-2yzC
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 13:23:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vApqr-0005TJ-3h; Mon, 20 Oct 2025 15:23:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vApqq-004YYM-2z;
	Mon, 20 Oct 2025 15:23:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vApqq-007Lim-2g;
	Mon, 20 Oct 2025 15:23:04 +0200
Date: Mon, 20 Oct 2025 15:23:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aPY3uEYmbLSxYEKV@pengutronix.de>
References: <20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de>
 <aPYCgfi-oX6zQgY-@pengutronix.de>
 <f4c0e6e7-9725-414f-b405-c098b6459753@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4c0e6e7-9725-414f-b405-c098b6459753@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_062306_752653_5E270F18 
X-CRM114-Status: GOOD (  35.58  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: dmesg: clear logbuffer fully if not requested
 otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 20, 2025 at 02:36:11PM +0200, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2025-10-20 11:36, Sascha Hauer wrote:
> > > If loglevels are selected using -l or -p in addition to cleaning being
> > > selected using -c, only clean those messages shown by the loglevel
> > > selection.
> > 
> > I find this behaviour rather surprising. The only useful thing I could
> > think of we can do with this is "Discard unimportant messages", but only
> > by printing them. It would be more useful if we had a -C (uppercase)
> > option to discard messages without printing them. But even with that,
> > there are many things we can do with this behaviour that are not useful
> > and only a few that are actually useful. We could delete for example all
> > "info" messages and keep the more and less important messages, but why
> > would we want to do this?
> > > I think you should rather use the filter options -l and -p to limit the
> > output to the messages you are interested in and finally use -c to clear
> > the buffer.
> 
> I think both behaviors could come as a surprise depending on how you
> look at it but if no one raises another position, I can make sure that
> in v2, -c will always clear all messages of all loglevels which is also
> much closer to the current behavior. I'd then add a warning that in
> these cases, filtered-out messages are cleared without being shown.

At least clearing all messages would be in line with dmesg -c in Linux.

> 
> However I disagree about the -C option and the idea of clearing in a
> separate step.
> 
> My concept of -c is that it 'consumes' the ringbuffer, a 'dequeue'
> operation, if you will. This needs to be a single step to ensure that no
> messages get lost or duplicated.
> 
> For example in some long-running test, you might run `dmesg -c`
> periodically and store the output. It should be guaranteed that when
> doing this, you never loose a single log message (if you clear often
> enough to never fill/overflow the buffer). I think the prior
> implementation couldn't guarantee that, but my patch changes that. From
> that perspective, the option to clear the buffer in a separate step
> would not help.

I rather meant while using dmesg interactively. For the long-running
test I agree, we shouldn't lose log messages in this case, but Ahmad
provided a way to archieve this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


