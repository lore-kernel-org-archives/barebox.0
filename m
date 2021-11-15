Delivery-date: Mon, 15 Nov 2021 14:04:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeW-00009a-8K
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 14:04:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeV-00072q-Cy
	for lore@pengutronix.de; Mon, 15 Nov 2021 14:04:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBqvHyiJJdQtwBXP2X0RRYsljeYfDehfmWAyrfri0/Q=; b=ik1MnpJfvRqJhn
	3m3G4PIeZatSSR2LcpoR+2kCiSzY5lBah9fMVjPNXNydiyzJmLP9dhgBVKbXhVlpHu84qp6V9WHUB
	345kdXFXC6+1qB5K7dRBZ3Gs3XoaZ6L1JftM+mypoOWrAcRIPvaNvvPnhsaVa2eY9zEuZVKixw8iX
	nxDh7TRR5q7uOo0acav+j54JhFFS1+aMFWdLYqFVMthywFZxOZj9f5FqkIN/Wd6e+k0Qmjy0nA3Fu
	nHrgyn/qOeaKX1ziDiinLQCnNYCizC4vv9zjDWvi4U4knpl+WORg2Y44lQvDpcmuBwuGdclKDCYfl
	xgDWxyuN6auT3TbL1e2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmbcy-00FZCe-I5; Mon, 15 Nov 2021 13:02:28 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmbct-00FZA6-9K
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 13:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ej5DW2s/b5pAvYhHMZIqzDpBRvnEh3T9uC/4P0oikKs=; b=fp7I+rPKnTT3klDtirAlnVGExJ
 W1WFWLM5Xtd7CQTvXrRKiVVM8qEhHnDJIzX2BSEpwIccZ0UJGcb4VVhCTJgrtHRSk4LQYts6o9rRZ
 NYAUuYU7KEGN5lbwJDKLkBdySuS+LPcv3OwJ4D2QJpFlv5/8Sg5axJFEBNjVCbPhxhZGmX0EWK9ky
 otWRMD/E9lRxyUYomFDiAR0fahuvUVbxUQ36H3Jj5BvOtYYSp08k5ttT25bkGYM20Kksxc6ZBxJzj
 lGfI0ttsYlQnRB/yhbqwht0GNNBqxzJdh4RA6NG1xagptMCnFqIddAdYTZ1cU8XiXQgKQY8wiRCvA
 8PWuAKfA==;
Received: from [89.212.21.243] (port=42168 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mmbci-00B8Ey-J8; Mon, 15 Nov 2021 14:02:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: Y.Bas@phytec.de,
	s.riedmueller@phytec.de
Date: Mon, 15 Nov 2021 14:02:04 +0100
Message-Id: <20211115130208.619443-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211115130208.619443-1-andrej.picej@norik.com>
References: <20211115130208.619443-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_050223_729057_D093AE11 
X-CRM114-Status: UNSURE (   3.97  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] flash-header-phytec-pcl063: Set SOC voltage to 1.25 V
 during boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogU3RlZmFuIFJpZWRtdWVsbGVyIDxzLnJpZWRtdWVsbGVyQHBoeXRlYy5kZT4KClRvIGlu
Y3JlYXNlIHN0YWJpbGl0eSBkdXJpbmcgYm9vdCBpbiBjb2xkIGNvbmRpdGlvbnMgKDwgLTMwIMKw
QykgaW5jcmVhc2UKdGhlIFNPQyB2b2x0YWdlIGZyb20gMS4xNSBWIHRvIDEuMjUgViBpbiBEQ0Qu
IFRoZSBBUk0gdm9sdGFnZSBpcyBsZWZ0CnVuY2hhbmdlZCBhdCBpdHMgZGVmYXVsdCAxLjE1IFYu
CgpTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gUmllZG11ZWxsZXIgPHMucmllZG11ZWxsZXJAcGh5dGVj
LmRlPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWogUGljZWogPGFuZHJlai5waWNlakBub3Jpay5jb20+
Ci0tLQogYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20taW14Ni9mbGFzaC1oZWFkZXItcGh5dGVj
LXBjbDA2My5oIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWlteDYvZmxhc2gtaGVhZGVyLXBoeXRl
Yy1wY2wwNjMuaCBiL2FyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWlteDYvZmxhc2gtaGVhZGVy
LXBoeXRlYy1wY2wwNjMuaAppbmRleCA5YThmNWYxOGUuLjhlMGFiNmY1OCAxMDA2NDQKLS0tIGEv
YXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20taW14Ni9mbGFzaC1oZWFkZXItcGh5dGVjLXBjbDA2
My5oCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWlteDYvZmxhc2gtaGVhZGVyLXBo
eXRlYy1wY2wwNjMuaApAQCAtMyw2ICszLDggQEAgbG9hZGFkZHIgMHg4MDAwMDAwMAogc29jIGlt
eDYKIGl2dG9mcyAweDQwMAogCit3bSAzMiAweDAyMGM4MTQwIDB4MDA1ODAwMTIKKwogd20gMzIg
MHgwMjBjNDA2OCAweGZmZmZmZmZmCiB3bSAzMiAweDAyMGM0MDZjIDB4ZmZmZmZmZmYKIHdtIDMy
IDB4MDIwYzQwNzAgMHhmZmZmZmZmZgotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=

