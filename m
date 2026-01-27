Delivery-date: Tue, 27 Jan 2026 08:13:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdG7-005oh7-0M
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:13:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdG6-0000gX-43
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:13:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=koCt6H5z73+pu/GNhuLZJ57WNHW89N19uqagsLGisPE=; b=h264FldPVvjGzeKHzknACM/QEV
	keVjwieJltjypXuZkhfWFc+DQXfDqii3jtAGxwVhVzLakmMjJwR2gZkfhqblx2wmucFCQ7/3FjKEb
	NihDK1Z9ZOe17Ugb7PvzEWmfZykGvkvsk2qvrQaumcO7/xpC7U/6JX7Vw87D92Np8171dd6uEAsP4
	Bo1xkbyMksNZJ2hmFMLOW0ev+ib68IcVit/2FsAUkJogcmSHLgzVSwS1u+ozQlS/7CzBxrYtmhmMY
	RgKJB5lhkNNVQjuOxDnua1amX39iCwy7KzaIRX1d0FqIFSaPcNartM/idT5b35KLxD1CoIrajivpp
	/SMtPRCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdFT-0000000Dkt4-2heV;
	Tue, 27 Jan 2026 07:12:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdFQ-0000000DksP-4BSU
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:12:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vkdFM-0000bh-KR; Tue, 27 Jan 2026 08:12:20 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vkdFN-002i8S-0N;
	Tue, 27 Jan 2026 08:12:20 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vkdFM-000lOk-0v;
	Tue, 27 Jan 2026 08:12:20 +0100
Date: Tue, 27 Jan 2026 08:12:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aXhlVIO0EW8LudEM@pengutronix.de>
References: <20260126130422.3897277-1-s.hauer@pengutronix.de>
 <20260126135336.ewilribmhw2xtsnb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126135336.ewilribmhw2xtsnb@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_231225_038077_920ABD19 
X-CRM114-Status: GOOD (  19.94  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: fastboot: increase max answer size to 256
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 26, 2026 at 02:53:36PM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 26-01-26, Sascha Hauer wrote:
> 
> ..
> > While at it use a define for the maximum answer length to avoid
> > repeating the hardcoded number. Also allow the answer to be exactly
> > the maximum length. Previous implementation used a 64 byte string
> > which included the '\0' string end and limited the usable size to
> > 63 bytes. Now we can use the full 256 bytes.
> 
> ...
> 
> > +#define FASTBOOT_MAX_RESPONSE_SIZE 256
> > +
> >  int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
> >  		      const char *fmt, ...)
> >  {
> >  	struct va_format vaf;
> > -	char buf[64];
> > +	char buf[FASTBOOT_MAX_RESPONSE_SIZE + 1];
> 
> So the new size of 256 bytes don't include the '\0' at the end?

We need the '\0' for printing the string with pr_info(), but it doesn't
go over the wire.

> 
> In that case feel free to add my:
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Thanks
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


