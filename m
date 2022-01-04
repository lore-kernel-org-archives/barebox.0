Delivery-date: Tue, 04 Jan 2022 09:51:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4fXQ-00AcS6-Ad
	for lore@lore.pengutronix.de; Tue, 04 Jan 2022 09:51:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4fXO-0006B8-2d
	for lore@pengutronix.de; Tue, 04 Jan 2022 09:51:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:Message-ID:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IMQit4VK4YUQqCiJSZzxxJA+QAgGqjc7hP1YN/10dJ0=; b=tCY
	dcYJ46DL1SiiGdXU/MNxA7WuevidXKidCWDXDvA/k31IQBccLDmnMBADWVgCo81kgim4kA/0NTb9k
	r4bSK93JUZ5YZjruM7LFfOGXMzrHEsfqa/LMh6d+gx5pxAufOtHKUdkEKxc4lqamT6/Z15HNYw4SS
	TnWQdpt1q0FC1eDuJEh0WZHHWOCR2HepwnUsem1RGsJ2uUxnlJ5vTV+E0oxMJtZ/xtnrfMV2yHJ98
	FqfnqrXMLRm9kpYbOMx3XK8JVw1cVBsFawcBWAPVF4pJMzrrsM1jjNnJQEj0i81tILguzaVZHwfZF
	dSsmOJ5YWDWY9kOGIcKcZ4bDfa5yXFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4fVQ-00Ao5l-00; Tue, 04 Jan 2022 08:49:20 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4fLa-00AlUs-6I
 for barebox@lists.infradead.org; Tue, 04 Jan 2022 08:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641285545;
 bh=UKJ65sJ8NKDUnuD0HTm6EfBTr0yZKao9LiqM4Dmq8mI=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=larFY2jLF75z4xlr981ZcLesXW0q0KhynaFzCsqrYsE2uJFkHsqEhNpNZ+USYmNGh
 JeJwHZZcjDFLNOypnhrbidaSIQVllUgqepqBX6bRvgzkQQdRvf4WDGPhIGGoMbeq1A
 iYloIWmDD1EZwF+2EP/bw2kjBb4LxV2kmH97nzx4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.147.98] ([217.61.147.98]) by web-mail.gmx.net
 (3c-app-gmx-bap27.server.lan [172.19.172.97]) (via HTTP); Tue, 4 Jan 2022
 09:39:05 +0100
MIME-Version: 1.0
Message-ID: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
From: Frank Wunderlich <frank-w@public-files.de>
To: barebox@lists.infradead.org
Date: Tue, 4 Jan 2022 09:39:05 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:RoUxXV7O8r9eEwqSnl4AFi0FiVym4d6VmPsgjjCPZShzY3wrvsTRRyxEBqb2RrgE1ZeT9
 fnRuF0c7xM43R7A61UTmUDgk9WomU5l38K62CFvwOOVAdiLeq0j6LIh2Z2J2aTANxyCs9gmoPUdo
 pEQHHwGzV0topn1pZpqt+MvKlwCgCutId+ZEHiiQU9/bIW0Q6AvCUDhubPD4NajLT0NjBQKS+qIx
 gAsHdVkG3M5u95qGrewL8hx1kXthc8axkUQjeKWduXL/rVm+OUmFLAxEhPcUmA75o0skSL8XPFeh
 Iw=
X-UI-Out-Filterresults: notjunk:1;V03:K0:+Uhc1nOsmHk=:K8ZKN2DjAdnqQGJz0TFr2S
 R4UD4TUi1AF1BvD5xGTEhPivNzRNguE1KA+vpIaFWF1f2nDFo/DDkZ1Zrt4u/zZfFVzlqsFTM
 rffotRD9b0rf5lmxoCW8G0yVzM4+sQt36v1+huqLsdObsWHqGPGu96JwD8LwGVCd5hMy/EHnt
 Sm38JsVXj7cpxfWnN0LTDW76ojpqu7GuRXsgO9HrEBwDN5/E32vp29CYgsPBNBA6KMtXz+wqU
 FWn030/FpONcTaWI9c+dtgEr/yRjLKVAQGRdQAbzalFDjZCcxli7EnKAocqcT6W3yKlBQXRLf
 4d5ZmhuVE89NWny9kvBYZ5FWgLXaySHWe6qZeDKOgPB0uij4UPDQRMOz9mT1AvinhaEBkiPb6
 /KTvYqdIhEBckds53ZQkxxcbCcNxhHuLFM7Idg7D8pIVLdjh3vxL3p1pveXB7EEYK0u0oqGOf
 EeY3TRTxZWtv8Egy+cvuEtQLVJU2VZkHkwEKyLurz7RAquZoD+YyQtbmf7uc75wQhV+70SDz7
 2gP0iI9IFIih2oZsoWaL4rllGlEn9Gr3gPwrY4zVdb2oky+Gh79AILAMMpeHnA8Skx4yVlRYz
 irmsUuVrDhPelNpyD26qpZyc0i7LrSG2MC3SXKaCe/OfZoGNTHNUG6TKJjwowarraEEaQqC5K
 Y0V4d32q0eKG4J16nP2mzAfMouPtyBHL55Kg96NjIwmzNMyz0V1Bt3Ts6/vlGo7Y/fMXRW1bP
 61xcRMKuLfosVgji7onvlV28DG4bQS8W7ygjbZMiUD3BPMHnVEpj6HdkdtheRUvWXagfH5yX2
 HM8BVP1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220104_003910_607342_2A0DA545 
X-CRM114-Status: UNSURE (   4.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	LOCALPART_IN_SUBJECT,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: barebox - rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

i have a prototype rk3568 board (bpi-r2-pro).

is it possible to flash only barebox instead of uboot? in documentation i found only "creating SD-card", but i dont want to break existing partitions.

https://www.barebox.org/doc/latest/boards/rockchip.html#rockchip-rk3568

says it starts from sector 32, my first block for uboot (idblock.bin=spl+raminit) starts at 64, full uboot in partition at 8M.

As it differs a bit from evb can i add new dts like in uboot?

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

