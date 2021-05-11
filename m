Delivery-date: Tue, 11 May 2021 13:57:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgR0q-0004la-Ai
	for lore@lore.pengutronix.de; Tue, 11 May 2021 13:57:20 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgR0p-0007RY-Ck
	for lore@pengutronix.de; Tue, 11 May 2021 13:57:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sgYHbDfEiwIdHpphSwp1f8wPbJqNsqMnC1eLKAiQmKk=; b=YFVYMuCJZ5mpQoiyi0pBodfFR
	vOe4EEzofZwmlfbN3JhRGuFcVOEbexYUBDjvtSxqdGeuDTSXPEEiOTkmc6nRQLC1GO93kabnpMJNB
	1Q1j/1KnUmPMI3FUFE9ZJ5cu85OudDaDFNgVGjnOTZwGb1bfhmQPnxSNdJJAI3kfZOfoTSEWI8MdL
	SmrkViJDuqnEZ2TD/tkpJWwr6/r/ughVKzGW6X7C6k54QoVtxy0T/IGw2AwPHgco8rZ1Y2zwvHiOy
	Qcbhb9YQQGhAWqbeXsQyGriG7q+vvFDnL4+7rfmPsfn/HFapHnr6ky75KJoF9DNGD84TvxTJ0E/5F
	fCCE1tOfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQzj-00HFHf-Po; Tue, 11 May 2021 11:56:11 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgNBc-00GXwk-PD
 for barebox@desiato.infradead.org; Tue, 11 May 2021 07:52:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=h5vtwquAmTK9WGAYYEl6xrd3ORJcLD15tpiyauAPCtg=; b=BMcV7E/qf+fZXPIJWalLhyn6hS
 58b51XyhQwaSwduAGOlwMIl7ljtNZql3nPGjZf9ChbJMyCe5rPwMuEIf+3OgLgnvGJ3EaNrS+luqL
 2ruCC7+/IwZpQtR8hHWdYAOs3vlj5zAtXN/KEaro/AjkmXYx72Xfb9tm54WBHXZkvLo+nzDQLmaJR
 zPm/2ZZmmYhf8rPIbJDbusRkAiEKMZMquraQ1Fxwqm6n3s+McOIqkqDEWyAgdYjLrJudQ3KH5jbkm
 lDy20ovC63tPffDO55vVmODbi2L9DHHsoBKAy3QOuRrKk1sfkOkNcY7IItJbkDV4YxrVumcDPTR3h
 8gwlOKjQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgNBY-009NHO-MA
 for barebox@lists.infradead.org; Tue, 11 May 2021 07:52:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgNBU-0007tu-Th; Tue, 11 May 2021 09:52:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgNBU-0000RQ-8o; Tue, 11 May 2021 09:52:04 +0200
Date: Tue, 11 May 2021 09:52:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210511075204.GE19819@pengutronix.de>
References: <20210426143025.149717-1-antonynpavlov@gmail.com>
 <20210503111643.GY19819@pengutronix.de>
 <20210511095826.c13f0a0843013f040ac70c49@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511095826.c13f0a0843013f040ac70c49@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:02 up 82 days, 11:14, 104 users,  load average: 0.09, 0.11,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_005208_751820_E17E3B28 
X-CRM114-Status: GOOD (  28.93  )
/bin/ln: failed to access
 'reaver_cache/texts/20210511_005208_751820_E17E3B28': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_005208_751820_E17E3B28 
X-CRM114-Status: GOOD (  26.09  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: introduce global.endianness variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 11, 2021 at 09:58:26AM +0300, Antony Pavlov wrote:
> On Mon, 3 May 2021 13:16:43 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> Hi Sascha!
> 
> > On Mon, Apr 26, 2021 at 05:30:25PM +0300, Antony Pavlov wrote:
> > > The global.endianness variable makes it possible
> > > to determine current endian mode from command
> > > line or from script on bi-endian capable system.
> > > 
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  common/globalvar.c | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > > 
> > > diff --git a/common/globalvar.c b/common/globalvar.c
> > > index a55b38b00f..75ce6331b7 100644
> > > --- a/common/globalvar.c
> > > +++ b/common/globalvar.c
> > > @@ -641,6 +641,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
> > >  
> > >  static int globalvar_init(void)
> > >  {
> > > +	const char *endianness;
> > > +
> > >  	register_device(&global_device);
> > >  
> > >  	if (IS_ENABLED(CONFIG_NVVAR))
> > > @@ -651,6 +653,13 @@ static int globalvar_init(void)
> > >  	if (strlen(buildsystem_version_string) > 0)
> > >  		globalvar_add_simple("buildsystem.version", buildsystem_version_string);
> > >  
> > > +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
> > > +		endianness = "big";
> > > +	else
> > > +		endianness = "little";
> > 
> > PowerPC is for sure big endian, but doesn't set CONFIG_CPU_BIG_ENDIAN,
> > so will be erroneously be identified as little endian with this patch.
> > Either you fix that or depend on something like #if __BYTE_ORDER ==
> > __LITTLE_ENDIAN
> 
> Barebox don't use "__BYTE_ORDER == __*_ENDIAN" solution. 
> 
> Please see include/envfs.h:

Right, then #ifdef __LITTLE_ENDIAN would be correct.

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

