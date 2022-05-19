Delivery-date: Thu, 19 May 2022 13:01:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrduh-001yUn-Sq
	for lore@lore.pengutronix.de; Thu, 19 May 2022 13:01:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrdug-00018T-NZ
	for lore@pengutronix.de; Thu, 19 May 2022 13:01:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:Date:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ddG10s3EF7I14VyCj6ivwTOasx/DAyjoFuZoXRrs7Bg=; b=WLVOVZJM+Mpg+o
	zbvUw8qvagLj/uU8+OBMNt89zPM/NEhbv5veKPPZfEDEP5JtZZw4eEllovhbt6l+I6YeLDRglhW2X
	Pn8HunLQeHG9ac8b6CWyrIm0uU9oRglVAjstty2xIOiFQbiDv2ALbhneR7HBCJI/odwr/bMVqbL+b
	lOB3EyT9tze3QDGLzk1cZ3dYg+ddSZ9KxzriiqCCyzMeHsIY0KsboPbDcUNKa5Rl5KmID6KBySHfU
	7Pp6f1BSZN8ffQTPTE4gOe7pk36s/SQy6GLnG3/80eUj7M+s0ixUxyfZNJwLfdmJaWvanZKCqh3J9
	w3IolP5nQxBbBBX8a8vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrdsk-006NTs-Rs; Thu, 19 May 2022 10:59:50 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrdsf-006NQm-8D
 for barebox@lists.infradead.org; Thu, 19 May 2022 10:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652957978;
 bh=YWwzBNrJnvS4QnxpSMG4UdRyDqmYBAjRpdnGYVAHU8E=;
 h=X-UI-Sender-Class:Date:Subject:Reply-to:To:From;
 b=F28DehlLPReyJDBUJlaTKcFkuxr0Woy8X4J8aELUli006HXkbH5Di2KGmgU/lfPsq
 e3hWw7rbPncGmRhHTBp2Y5Iqw7MnDuUjEpLyFk4Rf33m+wdofqKhqVA+CtxN3vbjtw
 KpsZiTkym7i5EYjNTNYVsUoaBk7QrDEcPW1/fc2s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([217.61.151.76]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MN5iZ-1o8ULE41UT-00Izcc; Thu, 19
 May 2022 12:59:38 +0200
Date: Thu, 19 May 2022 12:59:35 +0200
User-Agent: K-9 Mail for Android
MIME-Version: 1.0
To: barebox@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
X-Provags-ID: V03:K1:9qyngrAIFIAYXb9m6oh42SEncYs6UV/tdN3Z988Q2oVzmPi9KJc
 bNkthibImXjqn/0n2hpt/H5w+kXFKLVT36iXHWi/I+zq0dmeKnKgqB6ecCU4w8XytXK+F3P
 8mLE18tzNO9T0A9UNPhnejohOOwQr/AJBkVaSlYKcqGD7o5yS5piwlv7EeWpIjlaYTl9x/u
 sVOV5SJD5PIIpgqnCogOQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:xNbSN/75iAk=:5ZSkb9an7rcC1nJ5WTDJDz
 sc9TS7q5KPkdYkZARf8r8Vr9VhNT+hCLYgXFtXmV9NJZQXrKAqi3et7Ec5R1GA6pSHHtJWXkt
 wBUZyCU764bdc4Cyu9iy8jUr8uZwkRzXJJ7TGTh6E9gf8Ec58XcfMGXes7CbhOyJNigisFGxk
 xlTNf+6gUT3LA8389PP+mKnueba2QllkOtiVceWFY+k7CaJDYfidqFTWyNeILQtEtIwaJDSa6
 oeinO1YGQyg/lfovZNfPG0W9TeGxEll6+zKw/eYzA+mhaH9XXwncXdOiN0ZdhWD60VtlI/vdY
 B76uQSwpugQVta1fUeWXDdMtZv+s6TuXahg2HqJf5rmHNhmj4Vk+3szPPwrSCCtzaWqZDdaN6
 g5Vv1kOWtnoc5ky0VbhcBQpEWhoP+2+lMfrKGriH/TGX4mUG4Lm7sxkXR+eLiqq3wJ1gOPQVg
 +tVlGccqcVLbBi3yY1hJzfY9kOrMnetJ3y3j0Dqa2amzo/M7NFLdhqr8d7wwD0NaSHCdMkUd0
 wXm+zDAM7+Vh4VsjO8WYXv0XdUwZbVbLfK8/dXht0Jt3FJtey1ls9XOf1vbAeeQSoPyJwzpnk
 4pWxxF6OjpyTx1s8vKLN+tQxj685S5Y15kFJ/qJe5xT5OdGXjQEfXjEPv1D1iyIwRjR1OFRXQ
 u9OKTWGilLCOtY1PQzpNVd9Yng8iNEiXtwe3WelyiBjPtPv+PxZk4Gy0G+MZUJXf1JEhPEA5n
 ctguTBkhwfkIz8jDMQbH4SjIYIAk/ZIirQor/A5bvem6J7W0JvxW12j15021PxpB8HI5IvhWS
 KBxtcZTMGFn1ofBwVaJbqvogculPMYYz9uxLNDVSYtm6KJv0xqsf7DLRVUlJyoWfAdVATD5g2
 rFvUFQN3yjLIYLboaItN2WcETeJU6xSsaiEiKK7/sY2g6Xrk0CbFMkWBSoRann+sHphAHn70R
 WnFGeOg87lQJWT1mzMVk0/xthnDZMMPYUTKTJ+/7SLUsd6OJmRrZQgNm+dIrCtfbhUD1gfvWN
 xI4h0mgos8ogrIQpBZKHZ0915VHUj++k++zmmUKQSfQuiOngihQMGTSJpJXlEtgnAqkx3D1IM
 cC8J1z8FQY7qTwEpnUrW9TZq5uxlcXfY/yXycRxJitXCUI4sIFrWB9soA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_035945_616857_D1F10E28 
X-CRM114-Status: UNSURE (   5.66  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I try to create a basic driver for rk808 pmic/iodomains. I've noticed that first the iodomain driver is probed and then the rk808 on,but i need it reversed as rk808 registers regulators linked in iodomain via devicetree.

How can i defer iodomain probing till rk808 is ready (regulators available defined as phandles in iodomain dt node)? Currently i get always ENODEV (property does not exist or regulator is not ready yet)....

This is my current (dirty) source:
https://github.com/frank-w/barebox-r2pro/commits/r2pro-iodomain
regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

