Delivery-date: Fri, 17 Dec 2021 14:30:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myDK5-009Ui9-AT
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 14:30:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myDK3-0002SS-Uy
	for lore@pengutronix.de; Fri, 17 Dec 2021 14:30:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpJWxC10aJCpc9Bt7DWtTfcN2wlImRiLTQkEBKKIBM4=; b=zNbBucFvws0E6i
	pfBCgBNKrNSvkc/5WLJQc+gGgh+PEiqlLcIamPvo0umpfOE0jwznnswEAaHPTOr16y551PGbzS3A0
	5Lz5s+SamegGqxpI4Q+JyMbHYv/K6kIRuVtiZKvmkC0g0kZ+DVnsizTvX9PzigJfPeamyWfBkxqQo
	n2RClVXsQaaPYeALuCzFgVvT+i+nsfVwddoM4N5IbRt9AFuDwHGti8G70ogT+nvesUNcxsJS0wYPc
	pPBL1iIg+0CmOj3RuxcXom1wsBaNWhg6jFJ4MVxOQKC1t6x8xtz9zyDb7mUpnN48nHLsvDy3vzQ+L
	BZuumcwt2+kZhtpM/jeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myDIp-00AORK-UX; Fri, 17 Dec 2021 13:29:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myDIl-00AOQm-6T
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 13:29:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myDIj-0001rp-Kt; Fri, 17 Dec 2021 14:29:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myDIj-0001XF-AQ; Fri, 17 Dec 2021 14:29:33 +0100
Date: Fri, 17 Dec 2021 14:29:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211217132933.GS6003@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <20211213210905.3399551-22-s.hauer@pengutronix.de>
 <20211216124134.GG3394@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216124134.GG3394@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:23:40 up 6 days, 22:09, 64 users, load average: 1.17, 1.13, 1.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_052935_261274_EF74CBC6 
X-CRM114-Status: GOOD (  27.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 21/25] edit: Improve behaviour on efi-stdio console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 16, 2021 at 01:41:34PM +0100, Jules Maselbas wrote:
> Hi,
> 
> On Mon, Dec 13, 2021 at 10:09:01PM +0100, Sascha Hauer wrote:
> > Our console driver for the EFI simple text protocol does not support
> > the "\e[1S" escape sequence to scroll the window which means sedit
> > doesn't work properly. Disable smartscroll when the efi-stdio console
> > is active. While at it put the screen height reduction into the same
> > dynamic test.
> 
> FYI
> 
> From the terminfo manpage:
> In order to scroll text up, a program will go to the bottom left corner
> of the screen and send the ind (index) string. [...] Parameterized
> versions of the scrolling sequences are indn and rin which have the same
> semantics as ind and ri except that they take one parameter, and scroll
> that many lines. [...]
> 
> From infocmp on my system: ind=\n and indn=\e[%p1$pS
> 
> So the smart scroll could be replaced by a move to the last line plus \n

The efi-stdio code itself implements a terminal and translates the
escape sequences into things the EFI simple text protocol can
understand.

With the EFI simple text protocol the screen content indeed scrolls one
line up when the cursor is moved out of the screen. The problem comes
with the status line in the editor. This would be scrolled out of the
screen. The editor uses escape sequences to limit the window of what is
scrolled in a way that the first line is not part of the window. That
cannot be implemented with the EFI simple text protocol, at least not
without redrawing the whole screen. This is why it's simpler to just
not use this in the editor.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

