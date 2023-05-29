Delivery-date: Mon, 29 May 2023 02:16:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3QYp-000dJz-He
	for lore@lore.pengutronix.de; Mon, 29 May 2023 02:16:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3QYn-0002Yj-7n
	for lore@pengutronix.de; Mon, 29 May 2023 02:16:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hyNnLLHFHUVZVkMI56wiRx3Z5ixf7+Xbp1KCt1kULV8=; b=HLY+1IqqeU//S5XpA114NnAY8Y
	MRizfsneR4QiHd0zdq5b8Ik5ht9QWj3BSCoDX0m/t9j972940Db/NGhkN6VT88WoGTkgp4Nfx7XGJ
	L8XYuJ566XUVr4G/oX2Sis7r7umhhzs0BhuqG6KZz9Z8hGdmJEE9MWwvv7ffOUJuwFo4JtC2txZem
	9B9nA9/hnzthWqUN/DCzH5U2QghM1k1wMiUmeLrgqUiOMU/qB0959iy1fGV0SSI1IQPf1J1ygISjz
	zrZm4GFBbHt0ZrOJnfFrrGoggtx0o+6P/7PqeXCxpRRor8DPe8G9kIWM+sZGuY9I67ktLvTKTU1AK
	icyRCH0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3QXX-008iOR-2P;
	Mon, 29 May 2023 00:15:11 +0000
Received: from vmse02.mailcluster.com.au ([2401:fc00:0:14::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3QXU-008iIC-0X
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 00:15:09 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse02.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3QWb-0008HH-0w
	for barebox@lists.infradead.org; Mon, 29 May 2023 10:14:18 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hyNnLLHFHUVZVkMI56wiRx3Z5ixf7+Xbp1KCt1kULV8=; b=UFPNgJeICr9+3ToTwndPzRzNqe
	1lc7fu/VzDr9dNPDmzk/s4l9Oq371ARxX3tWRl3F4glb9/NqRLp5yZjyGA0VaLB1D+G3TiQ4/rM4f
	E9ZIGdVLbhIWXX4qq1lLyeQVSfSuZ0aPYwuigqLahwQGHt2QaELOeWpyGlzxcbY5f9NUwbHG4J79I
	gIYQ677/lPAZuY3yIBhJbRzAabpAljOK8OfXkyyJ5gC/KS9AhGafhFrvTOZQY9apDEJRlu6T8ENb1
	SynWOn9ylRynH2R3frk+qEkpWoAQShgL7SFF9g69HNIeAqcwthJj+Lfmh7ehWOFWukMLYaSKuetaW
	rLE0fuFQ==;
Received: from 14-201-15-102.tpgi.com.au ([14.201.15.102]:49070 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3QVo-00Fcv9-2h
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 10:13:24 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 29 May 2023 10:13:15 +1000
Message-Id: <20230529001318.12309-1-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.56)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT++9uF3CZPzQdGsRXWKo2nAPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liL2jbL8K/yR9UOYdOzCz9xOswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWygY2ntMpEWJ1klssHd1TrvsDcLC0U2KR6OWH3DJPpNnfHIyDd63hvc9BSikO
 ZtkKKGttJgl9H4tm1kO600kA8bObK052/jLuewOcI5amMxstChAJ8MhPXbXvhZAyklffRAwX31WV
 Y5lWjWxuGSRuxT2a2wZCwuaAu5hdjJz7VO1KJ4vHG0kzveR638cQVTxIvvE/X9f4ikS6v/cnqp1T
 bBmSvC6qJad8oDRDO7zv2HwGGZ5Ge+RA9FALAHZE1W8AWEwQPAv2fxf3s0iIhEk0C1Yeyb2lnKLU
 /aEDKQpxEuLDeo2F/515C8kJ0QodJwfrmFGs5lmow6gOzU/CbOds0gEiRQv+PVjjwa+Z5RFCOMSe
 nzy/mFbhhTC9J9Cq3vAygneYl2CbmQ1c/RYOiDQqnkbhhDwM/R2K/ufp9sDuZDAmjJZz2suxPjs+
 JSf4FCuulPrkWzQpB+2nlMt1sh3ncv0jveDf9khBB+5Yp6+dn8M0Nql6cVUPEm06bzdFvUZpNidR
 5jp3O3YsvRXBwVDa6LK2P/7yy/O7H8soQ20zO1RcvAoKxBIUpGlgMNhC/M+bGgM14BfFnIGvYP6u
 7JxzwsA/9xGgj7taJxWtHZ97uYoEpCTQa6V/jMTqK0u58CkQ647lNwN4qOsSZg+fYhVZG4j2yiiZ
 CbK5+L6VSWnQvru9m5tuYCNoBFfUJLAUQD/23jR5NeVaJQBh0uawl0Cg8l6JK72pEjgF2m/lEh1W
 w1FkLK0MbW+4ROsLYznzcU6K6t9pQ4yg9R2dXM88DJapoBhLhzr4yzs1nVEez/LlbXYZ6IA+WZ05
 cGOfUPeeYymShVNY0O9g9/EIrd2sakv7mw==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_171508_240347_B73738A5 
X-CRM114-Status: UNSURE (   2.01  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Adding PWM Commands 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Thanks all for comments so far.

Changes in v2:
- remove '-n' option to specify device by number
- fix freeing resources on all return paths
- add pwm_get command

Cheers
Marc




