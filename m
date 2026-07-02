Delivery-date: Thu, 02 Jul 2026 15:53:18 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfHqw-00CHMG-2F
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 15:53:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 85F3420066B
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 15:53:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jQENih8Y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jBwnxPkHRfpaE74IuCFYrhM3uNgZ2RoF6Ucq7CCD0mQ=; b=jQENih8YoLY8ZvdCkUJnGvfaa0
	ZQXTydAUYWT+y+M7dxxNRurFOqCIPMUcAQ2xDx0GveGfwg66+Q7cLG2UuBU2iGpEKY/Z+Pvzwp85I
	EKx1DJ3zfOz4wJCuayEKtSEo8Oae6H7jGoczalc5183ePG4XAgVONlwykWXbQCuQeoRB2QuCUati4
	qXj7S8NKhK2/5JiBZ0ePY8xCDT9hbv7L0+krglLK7hQBl7/qCDQkYU0QlW6DyuoFbDVv0H8O/r7B8
	QvENcF+IuHIn4nBJSSsurOGj/MB7Z60dpmUwuhGfyYIzJQdguH0jN7B/fGpbGxy+KsWn9tXVWrrxv
	L5GVpTgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHpn-00000004ZMB-2KnM;
	Thu, 02 Jul 2026 13:52:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHpj-00000004ZKt-2Vlw
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 13:52:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 221BA200A6D;
	Thu, 02 Jul 2026 15:51:59 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wfHpf-005kqN-0B;
	Thu, 02 Jul 2026 15:51:59 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wfHpe-0000000DQ8M-41QY;
	Thu, 02 Jul 2026 15:51:58 +0200
Date: Thu, 2 Jul 2026 15:51:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Subject: Re: [PATCH] restart: fix restart handler by name selection
Message-ID: <lzvfqil7wcmv3rryrbfqqoanho4e4u45nmbggiahujctpl7gzl@ehv7yjsmig7v>
References: <20260622172121.1736295-1-m.felsch@pengutronix.de>
 <f81603e6-d35b-4b73-a113-21d7be6f1066@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f81603e6-d35b-4b73-a113-21d7be6f1066@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_065203_791603_2FD01756 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-07-02, Ahmad Fatoum wrote: > Hello, > > On 6/22/26 7:21
    PM, Marco Felsch wrote: > > Commit d20a9a455d8d ("restart: allow selecting
    restart handler by device > > name") introduce a bug, while add [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Queue-Id: 85F3420066B
X-Spamd-Result: default: False [-6.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_TWO(0.00)[2];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: wr6ptf5t3x8qz9bpa6hpqn99uxin3igr
X-Rspamd-Server: mx1

On 26-07-02, Ahmad Fatoum wrote:
> Hello,
> 
> On 6/22/26 7:21 PM, Marco Felsch wrote:
> > Commit d20a9a455d8d ("restart: allow selecting restart handler by device
> > name") introduce a bug, while adding the support to select a restart
> > handler by device name.
> > 
> > The list_for_each_entry() loop should sort out all restart handler which
> > don't match the user requested restart handler. Instead all restart
> > handlers which don't have a device associated are honored as well
> > because the if condition is always 0 in this case.
> > 
> > Split the if to fix this and add a helper variable to make the code more
> > readable.
> > 
> > Fixes: d20a9a455d8d ("restart: allow selecting restart handler by device name")
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Why do we have restart handlers without a device name?

Because it's not required for them to have a device associated, e.g.
each restart_handler_register_fn() user doesn't have a device set.

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> > ---
> >  common/restart.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/common/restart.c b/common/restart.c
> > index 391d7bd3773c..85519912170d 100644
> > --- a/common/restart.c
> > +++ b/common/restart.c
> > @@ -117,8 +117,13 @@ struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
> >  
> >  	list_for_each_entry(tmp, &restart_handler_list, list) {
> >  		if (name) {
> > -			if ((tmp->name && strcmp(name, tmp->name)) &&
> > -			    (tmp->dev && strcmp(name, dev_name(tmp->dev))))
> > +			bool found = false;
> > +
> > +			if (tmp->name && !strcmp(name, tmp->name))
> > +				found = true;
> > +			if (tmp->dev && !strcmp(name, dev_name(tmp->dev)))
> > +				found = true;
> > +			if (!found)
> >  				continue;
> >  		}
> >  
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


