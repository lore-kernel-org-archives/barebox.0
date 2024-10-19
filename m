Delivery-date: Mon, 21 Oct 2024 08:35:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2m18-006y4h-1Q
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 08:35:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2m17-0001Qj-Uh
	for lore@pengutronix.de; Mon, 21 Oct 2024 08:35:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Message-ID:Sender:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date
	:From:To:Subject:Content-Description:Content-Transfer-Encoding:MIME-Version:
	Content-Type:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=t48qz/EXFuD6pgn61r7HwC9B8u
	gagZ6tH87dPiydSZmTsw6KhDe4df8NjWlNpTH7SENl0n8atTw9cfwyZ9TyqFDK1cD2dTe1AJJIDpl
	USq1ghL5nLqMcqMMTGJTWc8x7Ipcm78oTExhYaKEQEwVJK9Thmsq5bRySROGIVhC6aYZkDKyqtg1T
	L7typA5kn2vTRG07Kp69DNFBZBQa0vOUbNYjIna5Ky0jyhJQT3uiy6ltd87cvbH3yzOZkgvEkTUIe
	C0txQ9YAwackaWc5dtq5aLi1kSh5+NJntcFKIuoJj22GB2oPeWsH5OMwvuPfIO6eYm2A/rFRpLTQT
	iLv2m6ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2m0d-00000006Dnh-0Zwi;
	Mon, 21 Oct 2024 06:35:19 +0000
Received: from server.capmar.com ([138.128.186.82])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2m0Z-00000006DdM-1mG7
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 06:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cmgsupport.com; s=default; h=Reply-To:Date:From:To:Subject:
	Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
	Sender:Message-ID:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=JDnme+AmplvLSC4+73a9RK8GPJ
	Ipqn/eciYF4w6tixWQL1m0rmDkzl6IiTHJIK2QqXQfL8Kz6d5k72mhS8nkGlwwUhKa5nzg0CwJEhy
	Pjr5chN7WGOF0WFV5ZEZlxyVOiglaWvTTg2Z4oOJDzuMTmfzBhp7EG1aZWKRc4khDd+XXm9zL3VJa
	6MbD+o4pKxdz7LMsvYPEdv3X5Ze8UcMDc+u/xuw1Lx0LNKC5gSrLOgKO/plYgt3Km+lsOHEgqmadR
	aWeq1WW8esINmerxViayoLe1XL4hhqVwjs4BOp0MAUn5g7X3cV9te5zMMc24e1aCjZ+b/024lCMkP
	r/CT+6iw==;
Received: from [197.184.180.6] (port=40402 helo=[192.168.8.106])
	by server.capmar.com with esmtpsa  (TLS1) tls TLS_DHE_RSA_WITH_AES_256_CBC_SHA
	(Exim 4.97.1)
	(envelope-from <caseofficer0092@cmgsupport.com>)
	id 1t22cV-00000006XYs-11A2
	for barebox@lists.infradead.org;
	Sat, 19 Oct 2024 02:07:20 -0400
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
To: barebox@lists.infradead.org
From: caseofficer0092@cmgsupport.com
Date: Sat, 19 Oct 2024 08:07:02 +0200
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.capmar.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cmgsupport.com
X-Get-Message-Sender-Via: server.capmar.com: authenticated_id: caseofficer0092@cmgsupport.com
X-Authenticated-Sender: server.capmar.com: caseofficer0092@cmgsupport.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_233515_716491_645290DD 
X-CRM114-Status: UNSURE (  -4.88  )
X-CRM114-Notice: Please train this message.
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
Reply-To: caso2900122@foundation32.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Message-ID: <E1t2m0d-00000006Dnh-0Zwi@bombadil.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJ_ALL_CAPS autolearn=unavailable autolearn_force=no version=3.4.2
Subject: WE TRIED TO CALL YOUR PHONE ALL WEEK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



