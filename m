Delivery-date: Mon, 15 Mar 2021 09:05:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiEh-0000XR-5s
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:05:59 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiEg-0007Qn-Ci
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:05:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/txyJKvrGXBGkikTZp9bX0I7nMAuYo7ZtsMY/OLpHk0=; b=DDYsdTTfMMXImt8WVhbytKLsw
	ueC5PIqmW1Iiy46QYmwoHzgy+c4ewkrA1RTBsgSEv+B1VJol3QM32lIb0+mOzv3t3SM5G/29sCZiF
	jJgmIoc3HFKM7Lvft1C8lVAiY/d3PTjmiXTRcz/faYT2GB0A1fksOA46cgWHnZlaxxRSaPRlBIrhJ
	BpuhwLdrpebM3QgWSBckb53AiAV9YIcHjYJweXQ9GxQKiJsh8s4BTJxFRcCZEueYkxZGt1x+2qKut
	VeXy0jOt7YZW/i15IMHC6mmFsiPjvCy/gVhUBtyd9cfAYr9L/rqo4jsR1ad7EhvS8kmeH0BOAowj+
	vxjHhmO8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLiDX-00FBtb-OA; Mon, 15 Mar 2021 08:04:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLiDO-00FBt7-84
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:04:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiDN-0007G1-MZ; Mon, 15 Mar 2021 09:04:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLiDN-0004uI-Aa; Mon, 15 Mar 2021 09:04:37 +0100
Date: Mon, 15 Mar 2021 09:04:37 +0100
To: Denis Osterland-Heim <denis.osterland@diehl.com>
Cc: "r.czerwinski@pengutronix.de" <r.czerwinski@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210315080437.GF23724@pengutronix.de>
References: <20210311170403.22671-1-denis.osterland@diehl.com>
 <29418bb8fccd7967e6350e799067f4235a665fe2.camel@pengutronix.de>
 <fa380611cde3e4d68997128880ad1bb45918ef27.camel@diehl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa380611cde3e4d68997128880ad1bb45918ef27.camel@diehl.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:56:19 up 25 days, 11:20, 71 users,  load average: 0.06, 0.09, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_080438_542336_3EAB5BA9 
X-CRM114-Status: GOOD (  22.47  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: ocotp: add support to revoke keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Denis,

On Fri, Mar 12, 2021 at 02:39:40PM +0000, Denis Osterland-Heim wrote:
> Hi,
> 
> It would be no problem to do it in a script.
> I did it as a fist prove of concept.
> My opinion is, that this hard coded implementation give stronger
> guarantee that this code is really executed.

You could also create a C function which you call from your board code.

> 
> I would love to implement the HAB to check FIT signatures,
> but with MMU enabled it will not work AFAIK and code requiring MMU disabled is not welcome.

Are you sure it doesn't work? What I know is that the jump table for the
HAB function is placed in the zero page which is set to faulting
normally when the MMU is enabled. If that's the only problem we could
solve that.

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

