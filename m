Delivery-date: Thu, 05 May 2022 10:03:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSX-002URA-A6
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:03:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSV-0007lS-Oy
	for lore@pengutronix.de; Thu, 05 May 2022 10:03:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZwZZfocPY7WGsj7GbJQXaShRiDwKsd48+5GVbdo2HA=; b=wfkFrnW+FIkOCl
	ocUgVSv8y3EKezLs0sIjqRi9QFtQQ/94kJQU2WlidXPGMNDrq3MzqaB87ibxPE/xjZOstKR2Np/VY
	YmBIFQ98yH4RZUwDiRaCZ4ran6ciVtVgHLKMSTLWm9gRV8aYmUE2VyWL2lN6+kOibgKzgP7QYh+17
	t1+q0kEQf9Y59HTd+KO1k4ZWNhFfjHZkOtYS3ySwhjECnx7BwUZgofUt9apqZG2EFDb3HdvSqdKnF
	dlHXxjxd+dZ1LBqtoFcKcG09td4hg+Ze6/u/qt66oeDO74cEigH6hWvjnJowFcBUQS9yLnCWCBP+T
	9V4+O35Ycd4MJzm9gKDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWQy-00EWa6-Ew; Thu, 05 May 2022 08:02:00 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWQt-00EWVV-9O
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:01:56 +0000
Received: by mail-pl1-x62a.google.com with SMTP id i17so3674968pla.10
 for <barebox@lists.infradead.org>; Thu, 05 May 2022 01:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=B8v+VPPmu1we5C0Ga4hzz56+YGfh30t67gpwb2oVEzQ=;
 b=FvJeQ20f2WcRBpaUs2lE+2QpGLniC0dDPSKPKDhhX/klSzae9tbCwxsbeP98FHgUps
 rcChnuSV1y1yfU1+iApmU6CFu1IbYC/WOsZ04t0rmB7UOj8tG311nBgjcMct8jjL1HNB
 W/UII0uYE1NgiE3/At5warAmbsm4PQXmQUtU3mokQPmTV7CDnfJZlnyKVY3BX446miXy
 ywm7IDe3T6HsuhtSygTgXIg9cfGSl0h7PmJFomvI12hpLLiFdIlhwVULoZx9sDAjYY95
 JyevMFDi1TN+jJGt7InVCpzweixFESchBcBJ21AXEW6nqQQla4GdsKMRctYkS/US2qKC
 XbVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=B8v+VPPmu1we5C0Ga4hzz56+YGfh30t67gpwb2oVEzQ=;
 b=Bc7/d0ZkN4Z4UPP0LjXUxIwBv6M1TDI86v411r/40SVeImYm7BQ/H/wKisANMlvQg1
 JVWA9G/xmPUQth6vSpN/Q0WV4P1rvkXz2R5HfjbxWv52NjPlUQLB0sHWcuYnIPSJB7vz
 sJrvuP83xwxm+0w3YJG3ScQ6Meo1T9Mhlo6zARFPgBwemCcNUpuT8eHUDJ/iYxW4AJCM
 EmixwCK20jicrbp/NE7ShcxDq4vnOGFGfyAJkeMvYzzZWAHtkJLLEixqBgYONxsHpp0i
 ST0jwuxasZ6jKZx83wY2oNwD2Q/3g+pTCEGC3qhd7Tci4c/1WakMSEzRZ9dCut4/wjQ5
 dcvw==
X-Gm-Message-State: AOAM531PtHgSkWrwMq4lBJnnluHFXNTmEYEUxkRt81Zeh8a/ZXJWxRmk
 rNbMcwt3fMFFNTSpiajR5PfYmN1oxpGtAgSXfrFGe3IwD4QU8g==
X-Google-Smtp-Source: ABdhPJx9nhkNNAecLVQqhtuiUASiaUBkb2KjPuI6RY2iJrK4I/2FDX4KCj3MF67REeX0J2bMQhuEzNVBnYL00+83AzU=
X-Received: by 2002:a17:90b:4c4d:b0:1dc:7c94:b821 with SMTP id
 np13-20020a17090b4c4d00b001dc7c94b821mr4497702pjb.84.1651737708751; Thu, 05
 May 2022 01:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220505073604.15065-1-eagle.alexander923@gmail.com>
 <bedf227d86c89860639018eab462773f1a7267de.camel@pengutronix.de>
In-Reply-To: <bedf227d86c89860639018eab462773f1a7267de.camel@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 5 May 2022 11:01:36 +0300
Message-ID: <CAP1tNvRryE7UTtD2ejCLB5zt-uYVnW4qp2to7qDf+88cGG2Y0g@mail.gmail.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010155_364525_2B8A83D5 
X-CRM114-Status: UNSURE (   8.40  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: debug_ll: Use Kconfig UART base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0YfRgiwgNSDQvNCw0Y8gMjAyMiDQsy4g0LIgMTA6NTUsIEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBl
bmd1dHJvbml4LmRlPjoKPiBBbSBEb25uZXJzdGFnLCBkZW0gMDUuMDUuMjAyMiB1bSAxMDozNiAr
MDMwMCBzY2hyaWViIEFsZXhhbmRlciBTaGl5YW46Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5k
ZXIgU2hpeWFuIDxlYWdsZS5hbGV4YW5kZXI5MjNAZ21haWwuY29tPgo+IElzIHRoaXMgcmVhbGx5
IGEgY2hhbmdlIGluIHRoZSByaWdodCBkaXJlY3Rpb24/IFRoZSB3YXkgaXQgaXMgY3VycmVudGx5
Cj4gZG9uZSBzZWVtcyB0byBtaXggd2VsbCB3aXRoIG92ZXJhbGwgbXVsdGktaW1hZ2UgdGhlbWUg
b2YgQmFyZWJveC4gQnkKPiB1c2luZyBhIEtjb25maWcgZm9yIHRoYXQsIHRoZSBzZXR0aW5nIHdp
bGwgbW9zdCBsaWtlbHkgYmUgd3JvbmcgZm9yIGEKPiBzdWJzZXQgb2YgYm9hcmRzIGluIGEgbXVs
dGktaW1hZ2UgYnVpbGQuCgpTYW1lIGFzIFBVVENfTEwsIHJpZ2h0PwoKQWN0dWFsbHkgdGhlIGRl
YnVnIGNvZGUgaXMgYWxyZWFkeSB3cm9uZyB3aGVuIHdlIGNyZWF0ZSBtdWx0aXBsZQppbWFnZXMg
d2l0aCBkaWZmZXJlbnQgVUFSVHMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==

