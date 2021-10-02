Delivery-date: Sat, 02 Oct 2021 11:32:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbNG-0003iB-1p
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 11:32:06 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbNF-00031E-5N
	for lore@pengutronix.de; Sat, 02 Oct 2021 11:32:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mUaLSRSy3z8JdEXwJNzVtgrBpLpqFoFJttdHIAyxqP0=; b=GrnJt9uwbTePWbS41ldt1F6QNY
	8wGRQOyetCbJXF6tCM9hCZ5fUI+EIRcjxfvGZ2CS+CPmS4/b5j1ices5BixG8ERAMJYQwN+lcpxli
	cz+hfQ6xFKgcH19HHqvYnonpbyc7XnjY/rgCzjsxeZp0GsHsTDeZ+gIi/NISL54u61TQHCHBW23gK
	2YD/UFzXDjkSufj/LUvBy8uh95iM2a+c9g7mANhd1b8FBxpWnaqShhpm21Yb4tUEe2ciwkqpgGCIs
	UjJEkUFbQuhuKwN2vZWVC4d6el8YBeSauJHzFFUsYMmjQLR/+2KBLDBHMUoaLxd37JAY53n8id/85
	azm9YxIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWbLt-0020DA-3B; Sat, 02 Oct 2021 09:30:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWbLo-0020Cj-13
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 09:30:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWbLm-0002mv-QR; Sat, 02 Oct 2021 11:30:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWbLm-0001vA-HF; Sat, 02 Oct 2021 11:30:34 +0200
Date: Sat, 2 Oct 2021 11:30:34 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211002093034.GI28453@pengutronix.de>
References: <20210914063001.2803749-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210914063001.2803749-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:30:20 up 226 days, 12:54, 94 users,  load average: 0.46, 0.14,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_023036_096539_B022879B 
X-CRM114-Status: GOOD (  18.48  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] net: dhcp: send current hostname as part of the DHCP
 request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 14, 2021 at 08:30:01AM +0200, Oleksij Rempel wrote:
> To be able to use more advanced DHCP server configurations, for example
> host name pattern matching, barebox should send some name.
> 
> With this patch, barebox will send barebox_hostname, if dhcp.hostname is
> not configured.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  net/dhcp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Applied, thanks

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

