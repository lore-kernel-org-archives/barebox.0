Delivery-date: Tue, 22 Mar 2022 18:24:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWiFQ-002mDQ-Fq
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 18:24:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWiFS-00086C-VN
	for lore@pengutronix.de; Tue, 22 Mar 2022 18:24:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:Date:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jvjmQwjKdDds0T5l5vOLi1LhZYcmUuhxRKbPVPjmAqQ=; b=PouYtbjD9MUxjT
	v4unLrPuHqha2WxwNchq8+LHbSskjID7RhwkEGsHasUNZbTx++yLeqET+ybjv9cmSpWdtpQbcoh0e
	/ClKUSA6yEk3jGjm1tyY6mgmEpmScZfWjEJYnuJPA3Ug2kOyXgWMyy7ArMlVimQjZr3Ms1bryx2GQ
	IuOGSpa27YqTbr+4W8ND/KzpqK1vqgNfhm7RTvw9PzKCH9lm1Yo0nWThxAtLlTQt3plIBjItdGCVO
	RK6k6KBYfREnOpdeAGIeth61tZQKxSeGJqXESeDRHb1nPlFvKzrg5dtZ/xWv1GM+4JpPTb74yhlsu
	9biEX923ySKetH+nZcGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWiDy-00BiQH-0l; Tue, 22 Mar 2022 17:23:14 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWiDs-00BiOV-LS
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 17:23:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1647969783;
 bh=BQMku66uHMlbyWsft0Tgq7753UkcRiD/ohnT2lfwF/0=;
 h=X-UI-Sender-Class:Date:Subject:Reply-to:To:From;
 b=GQ7UiR4WHA8Sdj/6p/nWkvd/Ikk8mG4HC56iD5mmk3zU/q2B4ni4RoVZZfZ1oVcLG
 b7Dw2tU889TlQGEB51x9Gl+7fxm1rx32eUE6fh2iMtbLg+AGUL2qsnf4AR4v2QdGed
 EUOyruhZWIyEMipIN4dQt90MCO6qJyKxvbgW5IL8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([80.245.78.113]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mdeb5-1o6JxG27hB-00Zdlx; Tue, 22
 Mar 2022 18:23:03 +0100
Date: Tue, 22 Mar 2022 18:23:01 +0100
User-Agent: K-9 Mail for Android
MIME-Version: 1.0
To: barebox@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
X-Provags-ID: V03:K1:hMrrYQRfFBi0Jfeo3h6FBptdxVnnJtiMfPhCLs5F3PNOJ84Z4EQ
 ccTct2BcCNj7HzuwJqgT8OG1FOIr7j6dUqW9uxGVv/xGqwuURQhPio4K/ZkpxfMcjm568Nw
 pnLSu1Do+w9ohcVIn/HgepObIUqkaSz0n6XwfQ11QZHEFkLWUMXvalEomKCQ7T7W8z+OB0S
 JD0Ic2U73ola4tZaxD7LA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:r6JL//79S5I=:1DJb/4il7d1dC3H2BcmlQw
 67/7xhlSq005at58red/IzEm0j/S9yZI+UE0kBSByGUljcYCM0DnZ12t+b4ksoEwJu3SSx2w6
 Whcm6Vc4fTXn0caMWg4Bkt4uoholDNJjffT+SvPOckIPG2jdL+P04gPz+0lCkkMHB4A4T5bfD
 HDXLxsxcZ4dz9R+0rO0AYuqJiChS8AJACnlKYk0oYxMSS3qxeZbsClqgvEV+nvnpbmsWm9Gao
 BkcXPjvMT8zaPAfAdJ1Vg6SnpQqv0QaDCcXUnezojxP4YzKpMd4RLxAclfSiRWvuMYU38ZJEr
 wtPrFecE2B0+L0DrErz4lMW8eeHGj3r9JeEZGuLZpXUKEP6h/g6bnbvFT4Kq9eiWZ2V8CFwq9
 qC3WtFjdckA9h4vZyHf+JQoK8tzMTmy//+hfqRfTXznotfwLzu26aFVWPhfnVwXGrNRsDfDi+
 KAGbx/GKO5w79OqJ5a1c0Ll+tlXMkYqnGgj0kSbdFp2NE9bGLTbMJiNs5SXmXHN/QcQFA4VJ9
 5wuuZOO6Lin/uvBhnv6g03Cj6Cem6TiHg7kFT5p+ImeGuCtSjO7EP5BX1ED2c1G61rT/ss3/8
 s2XD4ffe8M9iaA0oIFOmARczFIB4QETpqXWYoSwMwjbIgdm2L+dZlpgK6cIGEaFi3SQH7Wsmh
 1E8jtPsQRs7dZHmlv/+rJCOruT2UkwtGRfBSYv/HCiLATwlaeu43xmI1THEnrtOZKJMhMvU2S
 TYdbxD4GEMbU6zV8jtN4rauoJXdfKT9M1uOrH2RcX7yth+8xUUodzkQEOsvPRuu9wKgk/gqIr
 8RJ72R6tLsTC6bMO2dffpdA2n2DGBL/TrOvJO/gfAP9IjYx8/LvLIV+dcJFQhus7UM/xKPSsI
 dULMj0KNBwxCwdMB9DUmi2vVNjVnHPBhRfguLwEH3DUmDIfVQq6QIST4fLN9ay/40GEgMdnI1
 gIPqtevRoRAEeYgtC3GyrC1mb00l4IN+Cjv529B0hAMfGQx1rpkEVLAINYXw53HURfqCAfraF
 laYn8Io8Y/AYJIHwGQ2ytviqTu0J31eFE3FnaMDsyeKO96CbgEEdL0uLrTGAA6D2NvNfS2uHC
 3XQUC6dqVedy2U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_102309_081512_36CAF5EE 
X-CRM114-Status: UNSURE (   5.62  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Board code with 2 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I get information that new hardware revision of bpi-r2 pro has some differences to the version i upstreamed. Is it possible to add a new dts and use same board code?

How can i choose between the 2 dts on build (kconfig option)?

Afaik the name of dtb is hardcoded in lowlevel.c [1]

Differences are iodomains (not defined in barebox,but linux) and gmac-config (gmacs swapped and different settings).

Currently i have not yet the new board for testing,but then i want to send patches for linux and barebox.

[1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c#n24
regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

