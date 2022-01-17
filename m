Delivery-date: Mon, 17 Jan 2022 10:00:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Nsm-004Qv4-II
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 10:00:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Nsl-0003KD-2g
	for lore@pengutronix.de; Mon, 17 Jan 2022 10:00:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoHt4K+ILteRBaGMZyV6f+hooaxuic6Kk+0iW5sQ3tw=; b=mnKgELunrQlvU8
	AQlQNm8STwZn64nV+JzgPjq/WZZeB9UUpiuBSS8rVQmQDAQylkiFKXdYzfCRt7oQWtI/FP9dcNFEp
	Ah8WTJA7vNAIHrlGSVWTUCmPKoVdQEdNqEz5dpNIaWVfXy5oQ7i3jILRrKx3vt2hZbBD844Q1Yhfu
	pPfv90xo/GFNKL0j0dztZkN0Vu5+88z73WyEB0d77QhXeG9WpdHc05RLNWEX5Oh0VC8PI3KtlUCDX
	OotlWgDoZXotDMNo//mTH59TpJJwJj1ajNF6IPkHV9eyDb6mUfLDx6iNABRdsSv5LT7uE6M0vKQBp
	KHmdby7rCwJ6gr99GxGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9Nrc-00EBbH-48; Mon, 17 Jan 2022 08:59:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9NrX-00EBa5-GK
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 08:59:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9NrW-0002wv-8O; Mon, 17 Jan 2022 09:59:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9NrV-0000Qh-TV; Mon, 17 Jan 2022 09:59:37 +0100
Date: Mon, 17 Jan 2022 09:59:37 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220117085937.GC1121@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
 <trinity-7a53a76e-9836-482e-861e-31439f242e2d-1641472899713@3c-app-gmx-bs51>
 <20220107130751.GW6003@pengutronix.de>
 <trinity-f8991630-17eb-4ae0-9dfa-9a66bc41b02e-1641573741990@3c-app-gmx-bs48>
 <20220110094214.GG6003@pengutronix.de>
 <trinity-dcf71a1e-4856-486b-a9a5-74ed6a82fd34-1642254462656@3c-app-gmx-bap71>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-dcf71a1e-4856-486b-a9a5-74ed6a82fd34-1642254462656@3c-app-gmx-bap71>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:50:53 up 37 days, 17:36, 76 users,  load average: 0.33, 0.29, 0.37
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_005939_574211_259C0B6D 
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Re: Re: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jan 15, 2022 at 02:47:42PM +0100, Frank Wunderlich wrote:
> Hi,
> 
> i have now created a new barebox board as copy from evb. i can load it from tftp with
> 
> bootm /mnt/tftp/barebox-rk3568-r2pro.img
> 
> i can create a bootmenu with entries of loader/entries and boot it:
> 
> boot -m sd.1
> 
> my bootscripts are also there, but they are not listed in $global.boot.default
> 
> $ grep defaultenv arch/arm/boards/bananapi-r2-pro/Makefile
> bbenv-y += defaultenv-rk3568
> $ grep defaultenv arch/arm/boards/bananapi-r2-pro/board.c
> 	defaultenv_append_directory(defaultenv_rk3568);
> $ cat arch/arm/boards/bananapi-r2-pro/defaultenv-rk3568/nv/boot.default
> net list-images mmc-linux tftp-linux

So an "echo $global.boot.default" shows something different, right?

Could it be that you have overwritten this variable in your persistent
env? In that case try a "saveenv -z" which invalidates the persistent
env.

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

