Delivery-date: Tue, 23 Jul 2024 14:10:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWELp-0028Kh-1G
	for lore@lore.pengutronix.de;
	Tue, 23 Jul 2024 14:10:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWELo-0007r8-Qh
	for lore@pengutronix.de; Tue, 23 Jul 2024 14:10:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7imBybUv4xvBzfM5US3rIFtY2It/wA2Tw3chLyoUZmU=; b=XL3vuFzqBVmF4sOjPt1QjRU690
	y0t/V+ouGSV5cmJIDRTMaLfFB27OVvLtOFPrjgOIR///1rKHpWx8xFNA+CUYujKFONANzrROiBAwg
	BCbi986TUuoQw8pFz0RvT0iZ21Te9shcnrkLX1sMXxwgx9bRfLUfjah5WB4B8R5SWVxagGpkho26g
	NjN8/vva4AjmKWGHAsg65cwi2c2qqFcEFjMINtm+X6vUdzrmIXLWb+/wN/f7q++3MVhpXGeo8hCfk
	J8CQY1N3Vs7LSqAgGyxDZ2sENvs08v28+cYCq4E+ezFSO1Qk0ZutEUe+kX0v8iIP+mC3rxtfEM8RR
	ZW1KDZzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWEL2-0000000CMFK-46cQ;
	Tue, 23 Jul 2024 12:09:52 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWEL0-0000000CMES-1aNV
	for barebox@lists.infradead.org;
	Tue, 23 Jul 2024 12:09:51 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-368663d7f80so2896926f8f.3
        for <barebox@lists.infradead.org>; Tue, 23 Jul 2024 05:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721736588; x=1722341388; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7imBybUv4xvBzfM5US3rIFtY2It/wA2Tw3chLyoUZmU=;
        b=SFvEeD1rCAtT49qW08zcRPVP44MN4Onh8UCxX658NdGXYfusgE7H7LM9AfbQE8vr3P
         gHdPIsQ94/5KY/qorjGo8+sE61pPJM47DrGHOLFeF6FTTwuuu/3q7LHuRUn+ZoFS3XSQ
         Q3wwrmp3LAmPOSK5Lxdzkh9o/lf3YqRish4o1b6nk4dhCDF8FVSJHCpjJ5WStiLNq5Xz
         NSi/GO/5QIOgMVaoKDYZjtgsfxy+JrGbk8foarXJmoRiXt1iMojrQiSE7+nI3ZNSdEpN
         8x2m9Hr6ENpP/UOUMewV87sCwBo4AWCn1lbdryor2xv2FOL6HMvGgoTxZ8j//h6l7y5I
         zNEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721736588; x=1722341388;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7imBybUv4xvBzfM5US3rIFtY2It/wA2Tw3chLyoUZmU=;
        b=oEmJwRPyXr0XScdcMR4g77P2zBsTnvD7CcSYrPq1ZQ4EHqNJyw7P3kEHPyBZ4fl5kE
         w2ePjdqfqn+q65v4shFRlNYMIbVCGWOq4ON6+cF4cMtaHF9RlB8OING1yH5+X7zh2Yt+
         ayyYRizaCwNja0MAuJ7hHG+ZIvVnsTJLoPsldMVcMrsYb/4IhtpDd477tgPQM+KWfNrH
         vLKRwuYlbFhEkThmCPS5o0R2dCMOIfIEHNTeXC8BeZIfE676LBj2cclJf2ZXuHza0qk6
         twdQ6OEN5Yfj2binSLfxgclKqp+RY44+YD6OLf+URqOYq2E3Jfuq6HY73xc/1kfrrYln
         SNEQ==
X-Gm-Message-State: AOJu0YwnPeUrapVH+juNgaBzZHq+xf7YIT0VEkwGc8aDfGisRtc7HeV1
	GtwTJp7XDH2zyndKBr2xi5FeQ4vtFbE/5QYBN3dFy9Ml2AUPER21eDuvrB6RK9cXd+oTRwIf+U+
	BnGNEqwQ0LKljFN4FXdlh9XmBl34hcPcC
X-Google-Smtp-Source: AGHT+IGWBZDrEokhm/pMIsErghVOBgz+umIEO56r9FR40Rc1KCrEjx2yafBTRgSr3Myz+JoyGZBjwuMfIGakYXO1+VE=
X-Received: by 2002:adf:e642:0:b0:368:4c51:4d68 with SMTP id
 ffacd0b85a97d-369bae3fe45mr6952455f8f.28.1721736587843; Tue, 23 Jul 2024
 05:09:47 -0700 (PDT)
MIME-Version: 1.0
From: Stefano Manni <stefano.manni@gmail.com>
Date: Tue, 23 Jul 2024 14:09:36 +0200
Message-ID: <CANn9nbgEYhJEPCZs4oQ-TBLM5OFz-076yiwRCYzewPJVfoiKMw@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_050950_435230_B03317F1 
X-CRM114-Status: UNSURE (   5.65  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: HAB warning on imx6sx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

on a board based on imx6sx I'm facing the following warning when HABv4
is enabled on barebox 2024.02:

ERROR: HABv4: -------- HAB Event 0 --------
ERROR: HABv4: event data:
ERROR: HABv4:  db 00 24 42  69 30 e1 1d
ERROR: HABv4:  00 08 00 02  40 00 36 06
ERROR: HABv4:  55 55 00 03  00 00 00 00
ERROR: HABv4:  00 00 00 00  00 00 00 00
ERROR: HABv4:  00 00 00 01
ERROR: HABv4: Status: Operation completed with warning (0x69)
ERROR: HABv4: Reason: Engine failure (0x30)
ERROR: HABv4: Context: Event logged in hab_rvt.entry() (0xe1)
ERROR: HABv4: Engine: CAAM (0x1d)

Have you ever experienced something like this? On another board based
on on imx6ul I've never seen it.

Should I ignore it? Maybe it disappears when I secure the device?

Best,
Stefano


