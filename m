Delivery-date: Fri, 17 Jun 2022 11:34:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o28NH-0053q8-CZ
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 11:34:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o28NG-0002ZF-Vo
	for lore@pengutronix.de; Fri, 17 Jun 2022 11:34:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zIc/1t+i24PXbXdf2Sq886BEg0fZM0pJ0zfesUJDffw=; b=RsV0F9HHX4AvEErP5+KDGHzihw
	sVn5yj8rrNUXD9JNSEZs74MyH147DXVUfLJxrleiGnVHMRCLtPH8FNM+u9tTsveJDBrqCejyYBPBB
	pEIQ15BMYl1qaKY/pTDyEgDN5pqPHKkBBA1mD8ORuKub0QLxoOlaR1dYCLH6Rvw/7+T7oKDcCAafF
	/GGHs7Y/otQA6Ux3Lmd0zv1LPjuKMjjFn5JKphu22IQsSSeDwToLkkRfZV8BLsbMBtNeVaE+XoGQH
	ZX3yR92zaiJAFk3QW30gUn5AyJw+zqu7xzrGS/pvjE4/G9BHqRGUkZKsO/ntDM/H1WO/km0XN7pAw
	AGQI0nvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o28Lr-006hUw-S9; Fri, 17 Jun 2022 09:33:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o28Lm-006hTO-Od
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 09:33:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o28Ll-0002IZ-0e; Fri, 17 Jun 2022 11:33:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o28Lk-0003um-Nr; Fri, 17 Jun 2022 11:33:08 +0200
Date: Fri, 17 Jun 2022 11:33:08 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>,
	barebox@lists.infradead.org
Message-ID: <20220617093308.GL1615@pengutronix.de>
References: <20220615184147.365-1-danek.brat@gmail.com>
 <f5eb7b28-fa80-99bd-f75d-3cd48391e38f@pengutronix.de>
 <bf7af9b5-51f7-0c9a-4c51-47ce042e1585@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf7af9b5-51f7-0c9a-4c51-47ce042e1585@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_023310_838129_ADDD7996 
X-CRM114-Status: GOOD (  14.46  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] ARM: rpi: parse useful data from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 17, 2022 at 10:55:25AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 17.06.22 09:08, Ahmad Fatoum wrote:
> >> +		pnum = xmalloc(sizeof(u32));
> >> +		*pnum = num;
> >> +		globalvar_add_simple_int("vc.boot_partition", pnum, "%u");
> 
> You could use setenv() with a format string instead, see Sascha's change to
> the mailing list, this would simplify this chunk here.

You can't create a globalvar with setenv().

Anyway, when I see this hunk I want to suggest to just use a global
static variable instead of allocating memory dynamically for it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


