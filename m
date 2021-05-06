Delivery-date: Fri, 07 May 2021 00:11:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemD0-00038E-Dy
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:11:02 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCz-0005L3-BT
	for lore@pengutronix.de; Fri, 07 May 2021 00:11:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VqTwvUTnW+X9GhbUCCNvbRtntnP2wP3M5ltCwFyWjmE=; b=JZ5qVdntWvO6Au1IaR91zRyzg
	LFqDmhvB/n1sRDIZ/9dZUprWa02L0a0BZjLvBxeFXibE8zMBvohp9a1O4NJpuqNNpnuXNYEG6PhT/
	BLdZGp+n6h30wexFBeC2tvSfLu03pjF0HZoqn8bP9B6U7Fk+n9UU9/a5vj1xlAw2SMACmwLMpiluV
	ul9zSDbCtWs/+sZQCq1UQ+W6tK5IfkrHa0I8+dsuj2AdnOsA1zY6Ftdgy04mBoYS05JCU2AFTjyFg
	jXoMCS+m4NoD14vgI0BHO/mte9kU/I5fN1qdsi7AQLLZpk0t/a7U5O4iHkw8fCZYPLZ+Vj7WxNPB4
	gKH1UKn9A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemC2-005RgT-Hu; Thu, 06 May 2021 22:10:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemBB-005RPK-4V
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=S3zBDFBVhTrpmDjx+QpNUroAh/r24W5TN3s8R5iMfvc=; b=HlJ5Q7Nh2OHVyvuGtWrjUF3PlP
 XPj1F7LCjms8tAvULQtpGQX7wji5wvP9FIrZoIs3DMbd3iRWfYgZYWnJfuiWL7HtzJ7slGF/wH1yo
 8ma7Uwmws8/pPJOtAP1jwug0Ke+DUQt9fTbYZdvDzG5OFGuRzkVtDZaDyJ1hmRXtFqMp1j/F0yEJK
 1R1OXi3hHPYFt+u0b5LsSJs82AGXVp3++IE+w945+HCEoxvByp7/sjh4aTIlmFXGhTjwzThgtslzj
 8EIo2E15HiaBY+UfpE8+2x/NAzMjxmLWKWj9BBBgV2oo8nLtOs0TBlewmDrz0UwpoY1YtWvtiqjle
 qkKeLdMA==;
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB8-006QQT-4e
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:07 +0000
Received: by mail-lf1-x135.google.com with SMTP id c11so9963667lfi.9
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S3zBDFBVhTrpmDjx+QpNUroAh/r24W5TN3s8R5iMfvc=;
 b=sxc0/sHZs/ynYQPNKTX4dqq74khaMTdLbqgRmemQyhdlW1eMzJZZsTwebGnpY7C2ie
 g+iIMqxmBbnxSdKLa3n2Yvm7un8/J570xi7ppL/HFcskuZJ5DGol12AQ1hUrr7qHoyVz
 hNlr6qutcnB1DpONucuC9ANbcamdcqqCOIKxN0MutoYpgwTuGUFDrXg1ZvX35Pwb2weB
 OOYLy/F/dfwaFMdAR1tjeEGfLf7MFDYw4f9AB6hirSekVxz13GTBlR2xLMYgKxN5t9SD
 ViEi4+OPnwZ/JmPKtnZOylN6xtcLP0RiPwSqOcwssuY0BQFNu+audyBwmveLzg+MMMGL
 l3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S3zBDFBVhTrpmDjx+QpNUroAh/r24W5TN3s8R5iMfvc=;
 b=mOwsh6kD/WMKSabIxSq1gaL/m3h2RxPvnCm118lY0ImtUQ5Dr84/tW54W3zY0vX0Wy
 88M2fYLuX6pIW6Ks5TKN3SW/WONh1Fs7791sYEZQlZIY01qq7FRkYydhK7XJVDppHPth
 jibXeIRyBu+YerR/Fbe0RUzcd3pctg1mgz39Vf8HNINhm+VV7jeveagyGLdWmkOcCwxk
 lXMV5v4UxdT8mAUKKCYFVms9Nfs13Q1Fx6K9dFfxX/oh/onAx7CPwvZwmR8PmKMNDt7H
 Fun95nfZ2fSOQ8nT9aJ007YaVx1YzDKSsFqVZmZ6vbaRaPzRFAkOOg3jQ6PppG1QEn+3
 n+3g==
X-Gm-Message-State: AOAM5319V8wmvNLzxSUnufnwLw+zpY/InPoKuSNKNakbRpEgE+7n5sM8
 9Idj7jEyCRoEwI4/DnV1frH/OLB8Z2dMpg==
X-Google-Smtp-Source: ABdhPJx30pWvxs3BMhganLTyzv/1hFTc7peDI7n0+D0frS48godiVBgFMJiTiUiArGQTCdyV6+XDhA==
X-Received: by 2002:a05:6512:b26:: with SMTP id
 w38mr4432160lfu.152.1620338944662; 
 Thu, 06 May 2021 15:09:04 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.09.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:09:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:34 +0300
Message-Id: <20210506220834.223350-12-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150906_199089_13820A6D 
X-CRM114-Status: UNSURE (   9.57  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/11] RISC-V: make it possible to build RV32I multi-image
 with DEBUG_LL=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QnVpbGRpbmcgbXVsdGktaW1hZ2Ugd2l0aCB0aGVzZSBvcHRpb25zOgoKQ09ORklHX0FSQ0hfUlYz
Mkk9eQpDT05GSUdfUklTQ1ZfTV9NT0RFPXkKQ09ORklHX1NPQ19FUklaTz15CkNPTkZJR19CT0FS
RF9FUklaT19HRU5FUklDPXkKQ09ORklHX1NPQ19MSVRFWD15CkNPTkZJR19CT0FSRF9MSVRFWF9M
SU5VWD15CkNPTkZJR19ERUJVR19MTD1uCgpsZWFkcyB0byB0aGUgYnVpbGQgZXJyb3I6CgphcmNo
L3Jpc2N2L2JvYXJkcy9lcml6by9sb3dsZXZlbC5jOiBJbiBmdW5jdGlvbiDigJhfX3N0YXJ0X2Vy
aXpvX2dlbmVyaWPigJk6CmFyY2gvcmlzY3YvYm9hcmRzL2VyaXpvL2xvd2xldmVsLmM6MTE6Mjog
ZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mCmZ1bmN0aW9uIOKAmGRlYnVnX2xsX25zMTY1
NTBfaW5pdOKAmSBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAgMTEg
fCAgZGVidWdfbGxfbnMxNjU1MF9pbml0KCk7CiAgICAgIHwgIF5+fn5+fn5+fn5+fn5+fn5+fn5+
fgoKVGhpcyBwYXRjaCBmaXhlcyB0aGUgcHJvYmxlbSBieSB1c2luZyBwcmVwcm9jZXNzb3IncyBk
aXJlY3RpdmUuCgpTaWduZWQtb2ZmLWJ5OiBBbnRvbnkgUGF2bG92IDxhbnRvbnlucGF2bG92QGdt
YWlsLmNvbT4KLS0tCiBhcmNoL3Jpc2N2L2JvYXJkcy9lcml6by9sb3dsZXZlbC5jIHwgMiArKwog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3Yv
Ym9hcmRzL2VyaXpvL2xvd2xldmVsLmMgYi9hcmNoL3Jpc2N2L2JvYXJkcy9lcml6by9sb3dsZXZl
bC5jCmluZGV4IGZkODk5Yzg2NzkuLmJhYjQ5ZDNjODcgMTAwNjQ0Ci0tLSBhL2FyY2gvcmlzY3Yv
Ym9hcmRzL2VyaXpvL2xvd2xldmVsLmMKKysrIGIvYXJjaC9yaXNjdi9ib2FyZHMvZXJpem8vbG93
bGV2ZWwuYwpAQCAtOSw3ICs5LDkgQEAgRU5UUllfRlVOQ1RJT04oc3RhcnRfZXJpem9fZ2VuZXJp
YywgYTAsIGExLCBhMikKIHsKIAlleHRlcm4gY2hhciBfX2R0Yl96X2VyaXpvX2dlbmVyaWNfc3Rh
cnRbXTsKIAorI2lmIGRlZmluZWQgQ09ORklHX0RFQlVHX0xMCiAJZGVidWdfbGxfbnMxNjU1MF9p
bml0KCk7CisjZW5kaWYKIAliYXJlYm94X25tb25fZW50cnkoKTsKIAogCXB1dGNfbGwoJz4nKTsK
LS0gCjIuMzEuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

