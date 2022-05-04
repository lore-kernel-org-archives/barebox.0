Delivery-date: Wed, 04 May 2022 05:05:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nm5K1-001BN9-Ug
	for lore@lore.pengutronix.de; Wed, 04 May 2022 05:05:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nm5K0-0006wW-IJ
	for lore@pengutronix.de; Wed, 04 May 2022 05:05:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	MIME-Version:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oTapaG59jc0+BhYCjWeegtKmFjjIfFfPNopQJuaeFsk=; b=bc2mUTodvvqV+r
	l2atbLWy/5cgAfijtaBb9SydN1jLIwlAdmCN2XfntizFyNfMPreI4QtNnjHcz0CGrYjX8Y4d/uMud
	j0m1Ucaotjf+8JkIgjnb0eVxrRrNA8Tr0//fXtcX7HvWfy3dB1x8WzBGe3yI2wYhU5kZ/QJCxoMFP
	AA8RZnaPqW7c/9Dm8DIewW2m+o86MorzVJ/tKD78vj1rE3wzDsQlBO5VB/SQuNmBiL1a80p+bLAu4
	66TmbKH4aWSWfjVIL8aYk5//g2dPUe6ISlGOZJJU3f/dGr25cqyoc2Khy/OxPK6pC8pRHdVUjiMJ+
	0j7Eq5+KKdi9qZL1h1og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nm5IB-008VE1-Re; Wed, 04 May 2022 03:03:07 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nm5I5-008VCw-N9
 for barebox@lists.infradead.org; Wed, 04 May 2022 03:03:03 +0000
Received: by mail-oi1-x22f.google.com with SMTP id y63so37661oia.7
 for <barebox@lists.infradead.org>; Tue, 03 May 2022 20:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=trouver-un-candidat.com; s=google;
 h=from:reply-to:mime-version:date:message-id:subject:to
 :content-transfer-encoding;
 bh=cEabjIXZfZKKxLufYLPfHEXuaTzlOMzmGILCjfuJVnE=;
 b=mDwwm/wlFjZ8d8ysMQ5yc8Qqr4qN/JA1o1JnE4Ps+cHDmlKb7la4pQbGHyEGLjqVo9
 8z21moi9aa6JIOGNvkdpWfN57MOECX4IyrXWP1ndvkTApZoDEO/0PC52NO7SS+UcB7zQ
 FlBcemLuZLpPTHOKfWjXcdo7HWesMrSXqGt2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:reply-to:mime-version:date:message-id
 :subject:to:content-transfer-encoding;
 bh=cEabjIXZfZKKxLufYLPfHEXuaTzlOMzmGILCjfuJVnE=;
 b=admlFKdN5TMaVjd5d4LLRO5HimXTB9ORACe/1Eyqt6cNRXJUyX0893dLa38OKpn8fH
 ZmTopLTa7KF0b0pQ8OtsuBZQs4qKLWqSPeeGcKso1mH3WItO2SAhiwyoUJHU9bfrjocc
 An+q4FOvWuMnSlwER4xiAZ3fMDUtKHSDjrQbvNOgmTihukOsikc3HTyYn9BfWqbRKtf6
 ErU2G6I8QDWeygh7mkCp2dvwnFyQrF8YXDRXlx0tJkjsogu0W0e285oMaZgBs8LFLSA2
 MoMvQCSO0n88Viwd1AgAhJ4A++0ODwMK34NRDXt+hviELE1O5sMZ4vj57j/w8LlVDryI
 bfQA==
X-Gm-Message-State: AOAM530FISezYsmo7zFK9Y8hUEMkEahjOmv56W1lRqNkYQDnr4h5WMXr
 xin1NdY6SDA+k8VylQp2qtWSnzL6A0ObwraNkCl+hJKKFw1qMg==
X-Google-Smtp-Source: ABdhPJxS+OKkzDXhrLZ/glODnldnsMAmn+aQiqoodL6z0xfPOBVO0kYrIv3sI1osB+2+2uMc6cq4WrRXYLThLvIgk+k=
X-Received: by 2002:a05:6808:1488:b0:326:52b:f0b3 with SMTP id
 e8-20020a056808148800b00326052bf0b3mr3011635oiw.143.1651633379261; Tue, 03
 May 2022 20:02:59 -0700 (PDT)
Received: from 26003846064 named unknown by gmailapi.google.com with HTTPREST; 
 Tue, 3 May 2022 22:02:58 -0500
From: Trouver-un-candidat <contact@trouver-un-candidat.com>
X-Mailer: WPMailSMTP/Mailer/gmail 3.2.1
MIME-Version: 1.0
Date: Tue, 3 May 2022 22:02:58 -0500
Message-ID: <CAG+15uB64ySMb8ApUxEnsWrBjvZP+OFbHanjmv3u+gdjkv=AaQ@mail.gmail.com>
To: barebox@lists.infradead.org, contactvalerietherapeute@gmail.com, 
 contactceliatherapeute@gmail.com, act2011@hotmail.fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_200302_364880_E8240141 
X-CRM114-Status: UNSURE (  -1.57  )
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
Reply-To: barebox@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: =?UTF-8?Q?Trouver=2Dun=2Dcandidat_=22Me_faire_r=C3=A9f=C3=A9rencer_sur_le_si?=
 =?UTF-8?Q?te=22?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tm9tL1Byw6lub20gZHUgUHJvc3BlY3QgOiDwn5KdIFZhbmVzc2EgaXMgaW50ZXJlc3RlZCBpbiB5
b3VyIHByb2ZpbGUhCk1vcmUgaW5mbzogaHR0cDovL2lueC5sdi9HR3plP2Q4bDd1IPCfkp0g8J+S
nSBWYW5lc3NhIGlzIGludGVyZXN0ZWQgaW4KeW91ciBwcm9maWxlISBNb3JlIGluZm86IGh0dHA6
Ly9pbngubHYvR0d6ZT9kOGw3dSDwn5KdCgpFbWFpbCA6IDxiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmc+CgpUZWwgOiA1NjE1NjczODQ5MzIKClZpbGxlIDog8J+SnSBWYW5lc3NhIGlzIGludGVy
ZXN0ZWQgaW4geW91ciBwcm9maWxlISBNb3JlIGluZm86Cmh0dHA6Ly9pbngubHYvR0d6ZT9kOGw3
dSDwn5KdCgpDb2RlIFBvc3RhbCA6IPCfkp0gVmFuZXNzYSBpcyBpbnRlcmVzdGVkIGluIHlvdXIg
cHJvZmlsZSEgTW9yZSBpbmZvOgpodHRwOi8vaW54Lmx2L0dHemU/ZDhsN3Ug8J+SnQoKUsOpZ2lv
biA6ICDwn5KdIFZhbmVzc2EgaXMgaW50ZXJlc3RlZCBpbiB5b3VyIHByb2ZpbGUhIE1vcmUgaW5m
bzoKaHR0cDovL2lueC5sdi9HR3plP2Q4bDd1IPCfkp0KClByb2Zlc3Npb24gOiDwn5KdIFZhbmVz
c2EgaXMgaW50ZXJlc3RlZCBpbiB5b3VyIHByb2ZpbGUhIE1vcmUgaW5mbzoKaHR0cDovL2lueC5s
di9HR3plP2Q4bDd1IPCfkp0KCk1lc3NhZ2UgOiDwn5KdIFZhbmVzc2EgaXMgaW50ZXJlc3RlZCBp
biB5b3VyIHByb2ZpbGUhIE1vcmUgaW5mbzoKaHR0cDovL2lueC5sdi9HR3plP2Q4bDd1IPCfkp0K
CkNvbW1lbnQgdm91cyBub3VzIGF2ZWMgY29ubnUgOiDwn5KdIFZhbmVzc2EgaXMgaW50ZXJlc3Rl
ZCBpbiB5b3VyCnByb2ZpbGUhIE1vcmUgaW5mbzogaHR0cDovL2lueC5sdi9HR3plP2Q4bDd1IPCf
kp0KCi0tIApDZXQgZS1tYWlsIGEgw6l0w6kgZW52b3nDqSB2aWEgbGUgZm9ybXVsYWlyZSBkZSBj
b250YWN0IGRlClRyb3V2ZXItdW4tY2FuZGlkYXQgKGh0dHBzOi8vdHJvdXZlci11bi1jYW5kaWRh
dC5jb20pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

