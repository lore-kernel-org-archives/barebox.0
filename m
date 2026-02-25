Delivery-date: Wed, 25 Feb 2026 08:54:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9jP-005SIc-2C
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 08:54:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9jP-0003mF-VS
	for lore@pengutronix.de; Wed, 25 Feb 2026 08:54:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EXsgtftK7sSTJa4pYMuis8gV1tPC0wYhSGH0UHog31Y=; b=FiDm5XvmXqiQDqyCcBjjneaPmT
	VU7NAJltSWW+pWrwazAtMyI+oUGB6uxtmrh5qUlXWB/wOK+GluKxeGGT75eTJBvCmZlaJ6ByKtU7m
	CdIdApZf06c/qqb0D9ETHRVU8eak55MmuINfsh17l6oulE6moAWuHUfiK2+Jvk6uaP0o84AFGmTVY
	kvBHJZzf4xNM3GIn8n+00Cei5D0M6ykYQg5NGPdg3fkxvTPQl7OgJqVJre8CVeEK1XQFZ1rgrwXev
	RiAmc4TxteokUmJElZI4m05KRpqlm4p/p4hRxp6X+xjFeUa7IT0E1b2OH6giJSodXSPFdd6+F/lUc
	l7IHDd5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9j1-00000003SGf-2y3k;
	Wed, 25 Feb 2026 07:54:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9iz-00000003SFW-2hja
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 07:54:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vv9iy-0003en-2H; Wed, 25 Feb 2026 08:54:24 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vv9iw-002WqX-1j;
	Wed, 25 Feb 2026 08:54:23 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vv9ix-00000004sdT-3JBB;
	Wed, 25 Feb 2026 08:54:23 +0100
Date: Wed, 25 Feb 2026 08:54:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aZ6qrxsMDv9FU-P2@pengutronix.de>
References: <20260223153908.1867811-1-s.hauer@pengutronix.de>
 <9da6e1a2-0753-47dc-9193-dc349e866b11@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9da6e1a2-0753-47dc-9193-dc349e866b11@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_235425_680899_D89B99E9 
X-CRM114-Status: GOOD (  29.62  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Debug: add Kconfig option to abort autoboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 24, 2026 at 04:59:00PM +0100, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2026-02-23 16:39, Sascha Hauer wrote:
> > For debugging purposes it's sometimes useful when barebox doesn't boot
> > through, but stops at the prompt.
> 
> Isn't this already compile-time configurable by setting the defaultenv
> autoboot to "abort"?

Yes, it is. It's just easier sometimes to just change a config, at least
for Claude.

Sascha

> 
> Regards,
> Jonas
> 
> > This allows for automated debugging
> > without having to catch the autoboot timeout first. This normally works
> > thanks to labgrid, but at the cost that messages are eaten up by the
> > barebox strategy.
> > 
> > This adds a Kconfig option to just stop at the prompt.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >   common/Kconfig.debug | 6 ++++++
> >   common/startup.c     | 4 +++-
> >   2 files changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/common/Kconfig.debug b/common/Kconfig.debug
> > index b307b84202..13a686d0ad 100644
> > --- a/common/Kconfig.debug
> > +++ b/common/Kconfig.debug
> > @@ -56,6 +56,12 @@ config DEBUG_INITCALLS
> >   	help
> >   	  If enabled this will print initcall traces.
> > +config DEBUG_AUTOBOOT_ABORT
> > +	bool "Abort autoboot"
> > +	help
> > +	  If enabled barebox will not automatically boot but start a shell
> > +	  instead.
> > +
> >   config DEBUG_PBL
> >   	bool "Print PBL debugging information"
> >   	depends on PBL_CONSOLE
> > diff --git a/common/startup.c b/common/startup.c
> > index 055d94fe6a..7551813a50 100644
> > --- a/common/startup.c
> > +++ b/common/startup.c
> > @@ -189,7 +189,9 @@ void set_autoboot_state(enum autoboot_state autoboot)
> >    */
> >   enum autoboot_state do_autoboot_countdown(void)
> >   {
> > -	static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
> > +	static enum autoboot_state autoboot_state =
> > +		IS_ENABLED(CONFIG_DEBUG_AUTOBOOT_ABORT) ?
> > +			AUTOBOOT_ABORT : AUTOBOOT_UNKNOWN;
> >   	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
> >   	int ret;
> >   	struct stat s;
> 
> -- 
> Pengutronix e.K.                           | Jonas Rebmann               |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


