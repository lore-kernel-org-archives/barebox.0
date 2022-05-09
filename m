Delivery-date: Mon, 09 May 2022 09:19:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nnxfu-006tge-Nk
	for lore@lore.pengutronix.de; Mon, 09 May 2022 09:19:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nnxft-0003HZ-AL
	for lore@pengutronix.de; Mon, 09 May 2022 09:19:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3vEeUSnCMt5Sor7xvUjzVo61BwcPVMO2G97gnObZfZw=; b=C17vAIpUTowNEndv9NRkIElaVw
	jyGvL4mpq+UPIPIdBa75duJ+4zzQQTzhuwRMymlH2db57ZflZWrk+BVEK/ZNrEf5lAd+5zx2AMQK6
	YbR0zpfLHrDtGaeRWgf2UItdhTjoOZTfIOq6G/ZGYgTpuq7fT0fm3rzVtV29/sTmJZHwEl6r0e7Mt
	OZb3LnurE3Gbm1moivNxsyEbbVq0j69MnOiC/wjpLIFnAyiG1jW6ZL0+L/sm8EdZWlnNhyTPSqluV
	GLOh1XvGOSztMdkhUDPiK70sSgbwTHJZoufK3kS3qMK2jQiq9SCO9rCewHWoOg6faAnnwPFKvS3Qi
	9qAmNsbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnxe7-00Co4G-8s; Mon, 09 May 2022 07:17:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnxe1-00Co3n-De
 for barebox@lists.infradead.org; Mon, 09 May 2022 07:17:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nnxdu-00034h-Tl; Mon, 09 May 2022 09:17:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nnxdu-0004Rp-DO; Mon, 09 May 2022 09:17:18 +0200
Date: Mon, 9 May 2022 09:17:18 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20220509071718.GY4012@pengutronix.de>
References: <20220505100805.5144-1-jmaselbas@kalray.eu>
 <20220506150405.GF10082@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506150405.GF10082@tellis.lin.mbt.kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:54:51 up 39 days, 19:24, 77 users,  load average: 0.02, 0.14, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_001725_497493_F071F137 
X-CRM114-Status: GOOD (  33.02  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 06, 2022 at 05:04:05PM +0200, Jules Maselbas wrote:
> Hi,
> 
> I would like some feedback on how to select a dns_req_id.
> Although ths is likely not very critical to barebox, I think using both
> dns_timer_start plus random32 is a bit overkill. Maybe simply using
> random is sufficient.
> 
> On Thu, May 05, 2022 at 12:08:05PM +0200, Jules Maselbas wrote:
> > The transaction ID wasn't verified on received DNS responses, plus the
> > ID needs to be difficult to predict in order to avoid MitM (man in the
> > middle) being able to easily forge responses.
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  net/dns.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/net/dns.c b/net/dns.c
> > index 78588b96f..9ad316e33 100644
> > --- a/net/dns.c
> > +++ b/net/dns.c
> > @@ -58,6 +58,7 @@ struct header {
> >  
> >  static struct net_connection *dns_con;
> >  static uint64_t dns_timer_start;
> > +static uin32_t dns_req_id;
> >  static int dns_state;
> >  static IPaddr_t dns_ip;
> >  
> > @@ -70,9 +71,12 @@ static int dns_send(const char *name)
> >  	unsigned char *p, *s, *fullname, *dotptr;
> >  	const unsigned char *domain;
> >  
> > +	/* generate a random transaction id */
> > +	dns_req_id = dns_timer_start + random32();
> I am wondering if using only one of dns_timer_start or randome32 is
> sufficient on its own. For the record musl uses clock_gettime without
> random at all.

random32() is a pseudo random generator, it will be initialized with the
same seed every reboot and thus doesn't add any value here. Using the
timer to generate an id should be better and sufficient.
The worst that can happen is that barebox sends DNS requests right after
startup, and I think the different times needed to get the link up
should introduce a certain jitter in the timer values used for the id.

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

