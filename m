Delivery-date: Wed, 16 Jun 2021 10:00:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQTT-0001LK-8n
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 10:00:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQTS-0002Xb-EG
	for lore@pengutronix.de; Wed, 16 Jun 2021 10:00:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nOwHj13ybkLgEoNi7v9SOgxLebg4sbcbqkCfW62b0qc=; b=svbX2n2Wf8CrE6Xktyx8bLNf1c
	YXFqtYMN0r7E0/x0WuPUrRtP2q5KBIU6QWL3C6ueHkqu6FrIJibCwpP/gbjkP8IQMpjSkKo9TkIFk
	JeNwhFc4zJz4NFGmmwbrVt86m/d69TpreIdvSrhWiEApB7ICtvnJqBX2cAiaHH+gnGcov2vgfMTgj
	BcX3K5DzYzRIVyyhR2UdPXlAhm7ca0g/v6DxBAhsaYC4OU1lZeGWeIftJB5gyHl1mVgN1LZxYqCuf
	r7auItOuZLMyzIKTTn+rWx+u8KWH6iIXCh/j/YYKfn7iZtXg85mHq0XfBx/gDWgMkOSeZVwzH21nx
	hJLmLUiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQS6-005IHg-7o; Wed, 16 Jun 2021 07:59:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQS1-005IGn-0y
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:59:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQRz-0002Cq-DP; Wed, 16 Jun 2021 09:59:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQRz-0001aS-1y; Wed, 16 Jun 2021 09:59:03 +0200
Date: Wed, 16 Jun 2021 09:59:03 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210616075903.GO9782@pengutronix.de>
References: <20210606122400.22418-1-o.rempel@pengutronix.de>
 <20210606122400.22418-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210606122400.22418-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:54:37 up 118 days, 11:18, 114 users,  load average: 0.05, 0.08,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_005905_110834_1D69C24E 
X-CRM114-Status: GOOD (  16.08  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] devinfo: print only devices with errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Oleksij,

On Sun, Jun 06, 2021 at 02:24:00PM +0200, Oleksij Rempel wrote:
> Make use of device state flags and print only devices with errors.
> The result will look like this:
> barebox@RIoTboard i.MX6S:/ devinfo -e
> `-- 2188000.ethernet@2188000.of <-- (error!)
>    `-- miibus0
>       `-- mdio0-phy04
>          `-- 0x00000000-0x0000003f (  64 Bytes): /dev/mdio0-phy04
>    `-- eth0

What advantages brings that over doing a dmesg and looking at the
output?

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

