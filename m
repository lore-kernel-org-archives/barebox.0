Delivery-date: Mon, 29 May 2023 13:07:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3aj9-001Fiz-Nd
	for lore@lore.pengutronix.de; Mon, 29 May 2023 13:07:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3aj7-0006mt-HB
	for lore@pengutronix.de; Mon, 29 May 2023 13:07:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YCSki9WnqwjKOE5B2UfHu5uDDUacjpogM6e4dIp9kso=; b=JdZ1fHpS+db02SUsTSeKaGKW3f
	8oQfz9QveJQESMMbFuGRQniR9e4BZSUY3VeqzWrmDLswVOkjLQ+0T5U4loCtGWpZJlPcnTGI9ISkX
	8EddptsVQ9rStx3TmsoKUwjn4LrnDSS38n+fONz/XTt1GrU9kxSBSDk9BXBYUx8hmASU2yI6cxsYu
	VlO4P+bgD9hC0UyE+wWZQp4zyDSF3aSQ1Bxz7ImDvjgy4FUkNd+TYNwT+U1bvHu/ZmNeHhn8FxYfA
	seZORTNdcSdciBYXGgj/A7UgtybokKp/Wa114IQZWugn/BSdWFPCph75hPcTU/LHiJGj+WmkqH5Me
	QrTu24MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3aiB-00AEaG-0I;
	Mon, 29 May 2023 11:06:51 +0000
Received: from vmse04.mailcluster.com.au ([2401:fc00:4:1::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3ai7-00AEYG-38
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 11:06:49 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse04.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3ahw-0002wZ-Bf
	for barebox@lists.infradead.org; Mon, 29 May 2023 21:06:41 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YCSki9WnqwjKOE5B2UfHu5uDDUacjpogM6e4dIp9kso=; b=LD1RUdzrrbOmlAha5gu1BxSIfS
	KuXKZprWgasdCR9Kt0pqv2BWk76Jcf9NbZsbB7odnNy9amSy4rHvwid/L0+LbK/dZxqh5SO/Yp3lj
	WojmWY8Rut08sYz8fH4n2GB7ZCPS0SpxZ+NvqgDLdcoiGn5/zpUyDufVoCxwtzmY6ROBsvcekx2Gj
	RuoakVnFyYyH6NZ7VXRiumM1bagdHJOZ7yiTHrOXKAWB/Ku0wZEzOv8yubXjpkKeh1MVXW4mMq2sp
	0qOy+KLTEFf/bLtXcD5EpPKTjtE/2swXprKIU3/ga/4xn8XTgq5ATqxPGAFQ9TjzB9dlwLw5M+1xn
	cLrvMWpQ==;
Received: from 180-150-33-184.b49621.mel.static.aussiebb.net ([180.150.33.184]:27893 helo=dev8.office.cpdesign.com.au)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3ahu-001BAm-1X
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 21:06:34 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 29 May 2023 21:06:24 +1000
Message-Id: <20230529110627.31257-1-marc@cpdesign.com.au>
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
 k7Vp2UXVHEQMIct0liIbUfEILpSyJiunu00qy/twswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWP6j2wfkRtOTZOVnmAjcy5vsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATUHn+gnmsNLchHhymY5JU
 63hy/sIYQHSrltYx0aSLXraWI9Hfbk2V6Si1LAtE8G+At7lfBxMo7ZYPIM8LGtwRU7//0qljMckk
 ipEhs0fF+lrm+ifPs2yIXVaS7j1CpD4sbMC/K6klzbRMjzrXH/SDfWiH1Wgh6RAenBR+licROGYo
 22M3ydWZpZeA4xI2sfoePUzRpPRJrs8BhJ+Y+YhDgfPZJQoJGtRiPLkwYCOl3wfOkiJndpiwJTzR
 GfNDPVuupyd4zYO0UvqXKfdJ1ZjZWMen5bW2mj7gpl+Nel82aV6t85jdQ1W7xM52M4KvSDibEVbo
 E0v8s007B0zH59piikd0JQMrSXAq0tOqTF/C6A0bLBQslprzGk2DFOUa2MIU+VrehiWcWMZh1Ywz
 SgInaGbjO41FyBEqIaDudcVplPGS2EcEF37UUa2sd+ZEuvWYDcBF1XkBl/qpe6hqeI8Epr8rs9GI
 f03e42pR4uRP0f9gC82uU08NxGNR3KHi/bccUAH1+xauOSEL79WTA8PrU7fwzcbkWclKzhCVo4fz
 XHnQzE4pWsN9DMOCoUO6aPH3j3JiOSC6vtxuYy/MBLIoEczfGLzBckhR/xj3tBPFGuBF8FPJqj6B
 JGfcHgLRYsZk97gsnYzIjqUumh4x0w47xg==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_040648_034070_44D0D743 
X-CRM114-Status: UNSURE (   3.13  )
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
Subject: Adding PWM commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Thanks again all for comments so far.

Changes in v3:
- fix minor typos
- remove unused 'error' var in pwm_get

Changes in v2:
- remove '-n' option to specify device by number
- fix freeing resources on all return paths
- add pwm_get command




