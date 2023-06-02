Delivery-date: Fri, 02 Jun 2023 06:56:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4wpw-006nfc-JH
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 06:56:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4wpu-0001hD-6w
	for lore@pengutronix.de; Fri, 02 Jun 2023 06:56:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qbumLwqOwMFu7Dt177w7W1xrYuSyzcmN0fIGIMcx8VA=; b=cat2r6IF9aKH6x18kybeZ4/SW2
	JjXzGcwQjWXmqHOD56IMjlLnvfCjcctpwU1L3Dp8MTCyYK7K9PvSJdPJcInNfiIwKdCCEwVxktiNs
	FlgLFDKe6T7xUdgeZ1hKgpjpbDJtJH7GuBq4Myqun5l7yhUBbQKM90JCZ5V03Cj0QciBnJNngKcyA
	RT49nZararMAGddIwm86mhkeoO2na4DPiUvCFHcxQEQrPq7T9WJxKQc+6VV+QDSyc4Z/Npv0xZhNE
	6f8m0ktpS45JQHBnguwh5npoEU5L18slEkmK039RmBO7EEj3JCrLxfuHBCSzsU1Y6KtN5nE5g3zir
	RGOsuQkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4woV-005j6A-1O;
	Fri, 02 Jun 2023 04:54:59 +0000
Received: from vmse02.mailcluster.com.au ([2401:fc00:0:14::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4woR-005j1s-0c
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 04:54:57 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse02.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q4wnY-0008Or-TI
	for barebox@lists.infradead.org; Fri, 02 Jun 2023 14:54:05 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qbumLwqOwMFu7Dt177w7W1xrYuSyzcmN0fIGIMcx8VA=; b=SCg++mtZRU9iLKmOPfrFDzqEJO
	TcctUTRaQJwRtWulfBoS/JxT+JIjgb/ZWZOpXHS0Y0fiEYbileWNqy5Lsw7K8yLKI6cKH0OStUW18
	RxoJ0r/1aZAup91YoiPZilvrtBq6o/xC/iAV81TuQbsDQv9+TaI0J/MgogmoHa5tDN4oAlEw3cp4P
	qaAr5bYpYU9F9qtqSPdVajYEpYUgL52ORvYeRb377Fo+GEKwyq3tF1883a8rzmI0kqScNDLwCjiPz
	fLs096PptwgcZ/mj0DxUJVQpxWgpUoOj4N4nPD6I+6bHcceabUlUh4hTf5aq5He4XOzaITx8TwfGR
	8oK97V7A==;
Received: from [203.220.86.121] (port=58250 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q4wmo-009uBj-0y
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 14:53:14 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Fri,  2 Jun 2023 14:53:04 +1000
Message-Id: <20230602045306.31258-1-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT9WLQux0N3HQm8ltz8rnu+BPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liLTvUhTqeoilUycttS2pFtrswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkShi9puKPROsBQB1AwgBJBOGKpfT
 IF8fSxNC0LttVkKWygY2ntMpEWJ1klssHd1TrvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATUHn+gnmsNLchHhymY5JU
 63hy/sIYQHSrltYx0aSLXraWI9Hfbk2V6Si1LAtE8G+At7lfBxMo7ZYPIM8LGtwRU7//0qljMckk
 ipEhs0fF+lrm+ifPs2yIXVaS7j1CpD4sbMC/K6klzbRMjzrXH/SDfWiH1Wgh6RAenBR+licROGYr
 RGW77/m/7TT1ljPLYAlHo93GrHkTZDpX3JXzvqAnRQqltjtrhmMkTucIl7N9AcwSpE1sG6Z94/Ge
 Q0UKItQafpoooFY4M7RjQ1QYeOer6qdM2kmVq603aW6BgyLXzkUCzsKWYWuwCKXNznpmdv1dr1sQ
 za9mle7ev8IXG78l81nBVGLnTSkhP+UMfpx5k0cx7VE6dKyLBsPT7aSty8yKMZvxHij+TQ3D8MKc
 zk5ZS1FfEoXm0/FPF8PR0w363lk4pUScEZHFruLkqAqUpQ92YnNGFdRN3CtPPBjSHkIxZRCWOxjY
 AJtzLXrvWkpeAoeqbx9cPcGR31mI6M1Ucaz2oSyaA1TzQpMNBxbB7RLiYIrYRweYGhtvVN66c5GC
 nah0CDG0r+34QtTJiEdfiY7uePQ44lqMDpyryPGheI8wLqPdSBUkH1KMRs8VVbvpdorZT2Gmbldn
 DEeqRkf38YRFrK8flN6a4n79d1I47GmMvA==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_215455_233264_B214ED33 
X-CRM114-Status: UNSURE (   3.16  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Adding PWM Commands (v4)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Thanks again all for comments so far.

Changes in v4:
- rework set/get into single command
- add more cmd arg checking

Changes in v3:
- fix minor typos
- remove unused 'error' var in pwm_get

Changes in v2:
- remove '-n' option to specify device by number
- fix freeing resources on all return paths
- add pwm_get command





