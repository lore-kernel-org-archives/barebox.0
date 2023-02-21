Delivery-date: Tue, 21 Feb 2023 16:47:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUUrq-00E6oZ-RV
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 16:47:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUUrp-0001YP-Hk
	for lore@pengutronix.de; Tue, 21 Feb 2023 16:47:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FyVIynlvqUU06icrjpRTFf6ukFCWdvoQGZpJT3Ig39k=; b=xGm0mnuEo8pWa/dqSRYq5xDIfs
	Xyn/MthhyYxabIgoymZSed0TtHBZUwNg/DxuCtmHJ0OUgj4Cb7J10+tAXEYXjbGfcp5NBz65rYU6e
	Mc4Hl+BTfvK3IIJMdv8dBSqEabGiBhAibCSpHul6/CRezkO21KU1dNn55gC3LMflTnLafNwq5QrZS
	kIXvtyRHnaIHNiXaJcY1mSUdp+q2p/C8MXZrBL4XoOHX1GtyJLHAvsgj8UbXzgN1ai3QzCZz8B8iE
	K8CIJWNFLuKb+UyowzWMNthYZHwI9EELdymXjAyinhdOfyslxtFBZ4MPjFVK9MSGT4+NELuDR1JrK
	UqwgxYGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUUqO-008mwL-4e; Tue, 21 Feb 2023 15:46:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUUqB-008mu8-1E
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 15:46:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUUq9-0001DS-DW; Tue, 21 Feb 2023 16:46:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUUq9-0008MJ-5B; Tue, 21 Feb 2023 16:46:01 +0100
Date: Tue, 21 Feb 2023 16:46:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230221154601.GK10447@pengutronix.de>
References: <20230221152425.2916278-1-s.hauer@pengutronix.de>
 <d5492217-50c4-e25d-99f2-fe24740ac397@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d5492217-50c4-e25d-99f2-fe24740ac397@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_074603_106960_4DB7EBE0 
X-CRM114-Status: GOOD (  23.03  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: Fix fixing linker warnings with newer ld
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 21, 2023 at 04:27:37PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 21.02.23 16:24, Sascha Hauer wrote:
> > There must be a comma between the words passed in the -Wl option,
> > otherwise gcc responds with:
> > 
> > gcc: error: noexecstack: No such file or directory
> > 
> > Also cc-option only compiles but doesn't link, so can't detect if the
> > linker accepts flags or not. Use ld-option instead.
> > 
> > Fixes: 4e8713dd6e ("sandbox: fix linker warnings with newer ld")
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/sandbox/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> > index 0f59e79e13..9d5a5d8c6a 100644
> > --- a/arch/sandbox/Makefile
> > +++ b/arch/sandbox/Makefile
> > @@ -69,7 +69,7 @@ BAREBOX_LDFLAGS += \
> >  	-Wl,-T,$(BAREBOX_LDS) \
> >  	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
> >  	-lrt -pthread $(SDL_LIBS) $(FTDI1_LIBS) \
> > -	-Wl,-z noexecstack $(call cc-option,-Wl$(comma)--no-warn-rwx-segments) \
> > +	-Wl,-z,noexecstack $(call ld-option,--no-warn-rwx-segments) \
> 
> At least gcc version 11.3.0 wouldn't like this:
> 
> $ gcc --no-warn-rwx-segments
> gcc: error: unrecognized command-line option ‘--no-warn-rwx-segments’

Makes sense, as we are calling $(CC) for linking.

For now I'll revert the original patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


