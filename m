Delivery-date: Wed, 03 Apr 2024 06:29:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrsG4-005ARU-0J
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 06:29:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrsG3-0008Ir-J1
	for lore@pengutronix.de; Wed, 03 Apr 2024 06:29:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ipNoFakuFZNToLkJsjgm5wTioCqGTFPiJgPN/hMOIM=; b=CzolXjSuHe5lKAbCnf+QqoKgqe
	0D41XSQOU76cn+nylp8sySQidQO9TqwUVTve+Zyc7+/0PBYcExdDydYxxoPuC3di/xshfrXX81044
	RRkm/AtlnpAt89VB1GQFKf29CtXS8ZzsIg2i1kCtb3U+Ok22tYu4Zum0LWa3G1mcyjPCctqalqtFZ
	+MR0FD4u85zpUDdeXXQ8hK890oZcNYcNHoS8ZSDAONDNypGFrgIi7y7cI6HRRvZ38T7py+osIrgpN
	imRKC8Uk/BA2eaT/6IqBf2H1hOogqA24DXkdCPCydDocsfiWTfHS6zWq6t/xiJ9Z6NbQRHsSf0dxU
	P2Etb5XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrsFb-0000000Dx2w-1cge;
	Wed, 03 Apr 2024 04:29:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrsFV-0000000Dx1X-1aiH
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 04:29:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsFT-00086r-2f; Wed, 03 Apr 2024 06:29:19 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsFS-00A6qY-Kg; Wed, 03 Apr 2024 06:29:18 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rrsFS-00CKJA-1o;
	Wed, 03 Apr 2024 06:29:18 +0200
Date: Wed, 3 Apr 2024 06:29:18 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Thorsten Scherer <T.Scherer@eckelmann.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZgzbHqBPTD7xrf6H@pengutronix.de>
References: <20240402092654.94523-1-o.rempel@pengutronix.de>
 <raghvrf6akiqagwlod3s65ilcfawb43slshzljngl77rnaf27l@cvxmvo7iqokx>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <raghvrf6akiqagwlod3s65ilcfawb43slshzljngl77rnaf27l@cvxmvo7iqokx>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_212921_443361_BA0B7E72 
X-CRM114-Status: GOOD (  11.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: i.MX8MP: skov: add fallback for unsupported
 HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 03, 2024 at 06:00:56AM +0200, Thorsten Scherer wrote:
> Hi Oleksij,
> 
> I spotted some typos.

Thank you!

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


