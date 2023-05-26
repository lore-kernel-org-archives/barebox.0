Delivery-date: Fri, 26 May 2023 10:24:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Skf-00EoPs-Ve
	for lore@lore.pengutronix.de; Fri, 26 May 2023 10:24:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Skd-0005sK-EZ
	for lore@pengutronix.de; Fri, 26 May 2023 10:24:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SvCkwQFq7O7eQiHm7vgvZT6eoVYI8juN1dra8nbXg54=; b=A/yO5oJKolzD9WOGm84ncPh3M/
	FHVMIDJQxtbfzslYt8f7F9S06vB0dPTqUXWCBdZYI/A+YdNwsQYsk1G6f7eAPg4+4ONx0EW8s2l1f
	jzJP4Hb1uS+DDXPi5q8KnWGRbtTLso8TPEWC4lHViMcArlub33awgiv2WEdHLsbDRV2bRgcAloC7O
	j4HHEQ/Y4JqxUC1/UxLM5FTdUITMAXxD0Wn1xiOFPdoIok+rEBek1E3CArOd+WaY0kOw4Jk1U/pXW
	HRVKpuHtDoMbxMlXaCuQ64gafaQewTcgNh8U/b1YxftAsixbgLoSH1vK5/G5aP5qP4OxyJ0uC8Q5c
	u7QmSRWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2SjX-001aql-19;
	Fri, 26 May 2023 08:23:35 +0000
Received: from vmse02.mailcluster.com.au ([2401:fc00:0:14::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2SjU-001apD-2r
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 08:23:33 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse02.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2SjJ-0003bt-Hw
	for barebox@lists.infradead.org; Fri, 26 May 2023 18:23:30 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SvCkwQFq7O7eQiHm7vgvZT6eoVYI8juN1dra8nbXg54=; b=XWLJUnkHCWTDXw+0qav0/tLA+U
	9g8nZISHS/PPbhy1pXXJWvn9eufQe/RE1BplN5UEZna60oUZXWzMxddaahgAb5+zV0ElbE1SUn/+T
	g6tZaf4tG5ZEMhkbArHrtx1x2Omi2sLUUCiE7sgCbbFLwIPMg2GfBA6tvkTCD9JiriayGJMWieL9I
	Jdz5RC1cUy0r1Yb/Wfsxifgr0sS9Gqc8GqBar8P+E54oZc0RtdpKBGr9mZBWrRzdd2zTtPzp/5n87
	nZioOQ3wiQwPraYLJAoByosTIbQbZ2HEdAPFtePQUpeGySKxUVT3dw1xQMpihHsXJCtdrdvZffRRV
	wwlcP3sw==;
Received: from [125.254.26.114] (port=39848 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2SjJ-00FfWN-0S
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 18:23:21 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Fri, 26 May 2023 18:23:12 +1000
Message-Id: <20230526082313.29694-1-marc@cpdesign.com.au>
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
 k7Vp2UXVHEQMIct0liLfliz8HNRUql3+px3n0xf6swKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWygY2ntMpEWJ1klssHd1TrvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATUHn+gnmsNLchHhymY5JU
 63hy/sIYQHSrltYx0aSLXraWI9Hfbk2V6Si1LAtE8G+At7lfBxMo7ZYPIM8LGtwRU7//0qljMckk
 ipEhs0fF+lrm+ifPs2yIXVaS7j1CpD4sbMC/K6klzbRMjzrXH/SDfWiH1Wgh6RAenBR+licROGYr
 RGW77/m/7TT1ljPLYAlHo93GrHkTZDpX3JXzvqAnRew17iecYLzfCZgTP36HoykSpE1sG6Z94/Ge
 Q0UKItQafpoooFY4M7RjQ1QYeOer6qdM2kmVq603aW6BgyLXzkUCzsKWYWuwCKXNznpmdv1dr1sQ
 za9mle7ev8IXG78l81nBVGLnTSkhP+UMfpx5k0ffTXYoJY2jEBn4pbVVMOj92BjYfUDpWkiq2B3R
 K8on+FFfEoXm0/FPF8PR0w363lk4pUScEZHFruLkqAqUpQ92YnNGFdRN3CtPPBjSHkIxZRCWOxjY
 AJtzLXrvWkpeAoeqbx9cPcGR31mI6M1Ucaz2oSyaA1TzQpMNBxbB7RLiYIrYRweYGhtvVN66c5GC
 nah0CDG0r+34QtTJiEdfiY7uePQ44lqMDpyryPGheI8wLqPdSBUkH1KMRs8VVbvpdorZT2Gmbldn
 DEeqRkf38YRFrK8flN6a4n79d1I47GmMvA==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_012332_924411_10AD76A3 
X-CRM114-Status: UNSURE (   4.86  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Adding a pwm command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all, 

I've been playing around with adding a new board to barebox, and its
been a while so I didn't realise that properties could be set on a
driver instance directly (eg 'pwm0.enable=1' or 'pwm0.period_ns=10000')

I started this pwm_set command, if it's useful (ability to set frequency
is helpful) I can submit it properly. It looks like most other commands
have doc duplicated in the Kconfig, any other requests?

Cheers
Marc




