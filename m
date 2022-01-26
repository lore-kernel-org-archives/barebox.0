Delivery-date: Wed, 26 Jan 2022 10:04:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCeE1-00DffT-T4
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 10:04:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCeE0-0000oV-Ei
	for lore@pengutronix.de; Wed, 26 Jan 2022 10:04:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uGWMiXZpGMRdscykS2j6VKU30+IblVFXPkmkFG0ZQc4=; b=fedM0dBthj0t2CQdqT3nOK+W0q
	NKh4lsUHgDRZoQR9wbmoeY79pzCeNbRi9i4BKCuaUPw5ujB1NwnxtHhYULwgg4pPs0X2dbUl1aWGC
	4zOGWxuMwAVbQw5LKjW8ptlHSvCliAVTSWBmFyikrhzmXOIVAfm8Ny/cHizz8mkWdMeMDqLy/cr6x
	eux7cGVsu0b8N3hEsUf8Fpby4EvuBRwljS3prwUuCu1MYNf7+rFVtpEPCZ1wFE7Y+FE5MenmOBn2V
	Okj2Wog9cl6Rx106YJZ6W4Y/89JfXRGW2PauO4+E9Vvu05I5lqx5NFDhi07xtxfXtLbVmwX197ck7
	eR7wywug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCeCN-00Aq09-Bh; Wed, 26 Jan 2022 09:02:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCeCI-00Apz0-10
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 09:02:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCeCG-0000Zz-7t; Wed, 26 Jan 2022 10:02:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCeCE-0001JK-Ua; Wed, 26 Jan 2022 10:02:30 +0100
Date: Wed, 26 Jan 2022 10:02:30 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "Schneider, Johannes" <JSchneider@jetter.de>
Message-ID: <20220126090230.GF23490@pengutronix.de>
References: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
 <20220124151827.3313412-2-a.fatoum@pengutronix.de>
 <c7a12071-176b-a5c0-be94-a7f670c2a430@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7a12071-176b-a5c0-be94-a7f670c2a430@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:01:52 up 46 days, 17:47, 80 users,  load average: 0.50, 0.31, 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_010234_094155_7F95BDA7 
X-CRM114-Status: GOOD (  14.54  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/6] Documentation: add chapter on Talks about barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 24, 2022 at 04:21:00PM +0100, Ahmad Fatoum wrote:
> On 24.01.22 16:18, Ahmad Fatoum wrote:
> 
> Argh, botched authorship on rebase. @Sascha, could you fix up
> Johannes as git author on apply if there's no v2? Thanks.

Did that while applying, thanks

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

