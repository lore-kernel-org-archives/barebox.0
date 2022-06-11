Delivery-date: Sat, 11 Jun 2022 20:31:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o05tJ-00B80G-L5
	for lore@lore.pengutronix.de; Sat, 11 Jun 2022 20:31:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o05tH-00024q-Ra
	for lore@pengutronix.de; Sat, 11 Jun 2022 20:31:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cNijBAb4w2Uj9ISemNqrkgsvZ/0K/D7lNZLkbLJSRCs=; b=AGcUR3dEXuxdRp
	Km20BV7RLgV3pg7lftGTD9zYtu280BjPWHquJELGNO6V5l1ePZRGEx9QC8dmLyN9yfuX1xVOLaZ8b
	nVmG0lkW45yIY0o0DB5mZnQxcBu4/1pRqv914xcm1P6ShMj1qyNe3/BlCSDOKZrqJ/xKomHDWj7d8
	tgeDjW2qQXeUDyGvC1vZ26EMT9m5AYTE1Dfd4m20eNRThWVsgQ2Ic4PV2FrO8gzeYILIlc468rGgd
	AFXMXkzpylc6w58UcflD69NaldR9eUmtZQSkMcTJAb7VXq9tN3I3e3p3iTgvAPRCKPlH+ugMem/Go
	oI9GRdMBXeu+J0yc2ShA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o05rL-00E8rs-Gi; Sat, 11 Jun 2022 18:29:19 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o05rG-00E8r8-Rf
	for barebox@lists.infradead.org; Sat, 11 Jun 2022 18:29:16 +0000
Received: by mail-ed1-x529.google.com with SMTP id w27so2582672edl.7
        for <barebox@lists.infradead.org>; Sat, 11 Jun 2022 11:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qNKCLdysUG8u5bfydbmwSagNfDrATsF2ipcndWnzxtk=;
        b=SobuTVmLZJkoLewJOTs8XfMbJ/UI6wFDklsbDoIrYDEFMPb3XpO/uGCt/d+LixkI0n
         +dBYwv04a028kQHgCM8HKnbJsvWD4TIqTRJ3CpRPVStMTjVPznPg5uOc318hG+/DB/F7
         Oz2fBmfmXJSCNWUN5zMaY1f0ouvz7qMyVjpQhS2BKWDy1Tcqns9C6cOrOio2QA6ZyyMo
         2PmAxFl0eOEzAjHxF+DHtwKWtKJ4NpPsTbHGUjkfB6SBDooyw6o9z2rpcP7NJ1uAO6AB
         WpQbUMNXv2xj+qId2zu/rVhGqYJhV3GgDRkD1a9cWxR5XZIcTSA+s55Ztp7AIWuIGqle
         pHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qNKCLdysUG8u5bfydbmwSagNfDrATsF2ipcndWnzxtk=;
        b=x7AKUkYPojmShSeCAwJRWrP6ENpnPcICM3eEZ7a58/RoitvUuRiixq7bTukzjVmuaK
         X1iHxyzpNkKgnyyDsLByorMVGPRltUPF7WS4xLaGncg2yLtx7Epdzb97eo7xn7Ex7dX0
         EGgEmJAN0m3NoRcw9U+xmzX9YsL3CHd6JEFHjfIlJ+9bnfWyPKzJCvVz/Qd3FOy75mvz
         0r7ALSnpglR56l57gBoX7P8PfnqYTOfZs2XMZoEFs7NTazf34etVMIrWBHB0ekt2J8UM
         SZnt+0wYR6eO7bqiu9vC0K/aBsphynm4373258HJgcbGhmw68mVYCNO6Q1WzUsVutjkN
         3LrQ==
X-Gm-Message-State: AOAM531crbu3lFL/CqETBKkawMkk5WMgXscW1LYhPpwPnTjtFHHPCNlD
	utsWnToOzm7F6FbxvQPWuyji/ecgLVEgvA==
X-Google-Smtp-Source: ABdhPJyhEkU6MTOJ0K6PG6/cIfnwNKXKCdKnuNEZ47ClqxVIVQRyjQa1JOsUgsBbBtt4wRa35HkXeA==
X-Received: by 2002:a05:6402:3592:b0:42d:fb03:319c with SMTP id y18-20020a056402359200b0042dfb03319cmr55967695edc.137.1654972151557;
        Sat, 11 Jun 2022 11:29:11 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.net.upcbroadband.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id r11-20020a170906c28b00b00708a2ae7620sm1346545ejz.67.2022.06.11.11.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jun 2022 11:29:11 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Sat, 11 Jun 2022 20:28:28 +0200
Message-Id: <20220611182828.16271-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_112914_937346_AB3E1B1C 
X-CRM114-Status: GOOD (  14.93  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: DTS: make rpi3/4 use pl011 uart as primary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

V2hlbiB0aGUgdmlkZW9jb3JlIGZpcnN0LXN0YWdlIGJvb3Rsb2FkZXIgZmluZHMgJ2R0b3Zlcmxh
eT1kaXNhYmxlLWJ0JyBpbiB0aGUKJ2NvbmZpZy50eHQnLCBhc2lkZXMgZnJvbSBhcHBseWluZyBz
YWlkIG92ZXJsYXksIGl0IGFsc28gZGlzYWJsZXMgZml4ZWQKY2xvY2sgZm9yIHRoZSB2cHUsIHdo
aWNoIG1pbml1YXJ0IHJlcXVpcmVzIHRvIGNhbGN1bGF0ZSBjb3JyZWN0IGJhdWRyYXRlLApyZW5k
ZXJpbmcgaXQgbm9uLWZ1bmN0aW9uYWwuIFRoaXMgY2FuIGJlIGZpeGVkIGJ5IGFkZGluZyAnY29y
ZV9mcmVxPTI1MCcKdG8gdGhlIGNvbmZpZywgYnV0IHNpbmNlIGJhcmVib3ggaGFzIGRyaXZlcnMg
Zm9yIHRoZSBwbDAxMSBmdWxsLWZsZWRnZWQgVUFSVCwKbGV0cyBqdXN0IG1ha2UgYmFyZWJveCB1
c2UgaXQgaW5zdGVhZC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBCcsOhdCA8ZGFuZWsuYnJhdEBn
bWFpbC5jb20+Ci0tLQogYXJjaC9hcm0vZHRzL2JjbTI3MTEtcnBpLTQuZHRzICAgICAgIHwgIDgg
Ky0tLS0tLS0KIGFyY2gvYXJtL2R0cy9iY20yODM3LXJwaS0zLmR0cyAgICAgICB8ICAyICsrCiBh
cmNoL2FybS9kdHMvcnBpLXVzZS1wbDAxMS11YXJ0LmR0c2kgfCAyNCArKysrKysrKysrKysrKysr
KysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9kdHMvcnBpLXVzZS1wbDAxMS11YXJ0LmR0
c2kKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvYmNtMjcxMS1ycGktNC5kdHMgYi9hcmNoL2Fy
bS9kdHMvYmNtMjcxMS1ycGktNC5kdHMKaW5kZXggM2MwY2FhNzNmLi5lMDgyYWQ4NjggMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtL2R0cy9iY20yNzExLXJwaS00LmR0cworKysgYi9hcmNoL2FybS9kdHMv
YmNtMjcxMS1ycGktNC5kdHMKQEAgLTksMTAgKzksNCBAQAogCXN0YXR1cyA9ICJkaXNhYmxlZCI7
CiB9OwogCi0mdWFydDEgewotCS8qIFZQVSBjb3JlIGNsb2NrIGlzIHJlcG9ydGVkIGF0IDIwME1I
eiwgYnV0IG5lZWRzIHRvIGJlIDUwME1oegotCSAqIGZvciBuczE2NTUwIGRyaXZlciB0byBzZXQg
Y29ycmVjdCBiYXVkcmF0ZS4gVW50aWwgdGhhdCdzCi0JICogZmlndXJlZCBvdXQsIGhhcmRjb2Rl
IGNsb2NrIGZyZXF1ZW5jeSB0byB0aGUgZXhwZWN0ZWQgdmFsdWUKLQkgKi8KLQljbG9jay1mcmVx
dWVuY3kgPSA8NTAwMDAwMDAwPjsKLX07CisjaW5jbHVkZSAicnBpLXVzZS1wbDAxMS11YXJ0LmR0
c2kiCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvYmNtMjgzNy1ycGktMy5kdHMgYi9hcmNoL2Fy
bS9kdHMvYmNtMjgzNy1ycGktMy5kdHMKaW5kZXggZTgyZDUxOGZhLi42YWY5ZTlkN2MgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtL2R0cy9iY20yODM3LXJwaS0zLmR0cworKysgYi9hcmNoL2FybS9kdHMv
YmNtMjgzNy1ycGktMy5kdHMKQEAgLTcsMyArNyw1IEBACiAmc2RoY2kgewogCXN0YXR1cyA9ICJk
aXNhYmxlZCI7CiB9OworCisjaW5jbHVkZSAicnBpLXVzZS1wbDAxMS11YXJ0LmR0c2kiCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9kdHMvcnBpLXVzZS1wbDAxMS11YXJ0LmR0c2kgYi9hcmNoL2FybS9k
dHMvcnBpLXVzZS1wbDAxMS11YXJ0LmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwLi43Yzc1YjA3ZjgKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9kdHMvcnBpLXVz
ZS1wbDAxMS11YXJ0LmR0c2kKQEAgLTAsMCArMSwyNCBAQAorLyogaHR0cHM6Ly93d3cucmFzcGJl
cnJ5cGkuY29tL2RvY3VtZW50YXRpb24vY29tcHV0ZXJzL2NvbmZpZ3VyYXRpb24uaHRtbCNwcmlt
YXJ5LWFuZC1zZWNvbmRhcnktdWFydCAqLworCisvKiBNYWtlcyBiYXJlYm94IHVzZSBwbDAxMSB1
YXJ0IGFzIHByaW1hcnkgKi8KKworJnVhcnQxIHsKKyAgICAgICAgc3RhdHVzID0gImRpc2FibGVk
IjsKK307CisKKyZ1YXJ0MCB7CisgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cisg
ICAgICAgIHBpbmN0cmwtMCA9IDwmdWFydDBfZ3BpbzE0PjsKKyAgICAgICAgc3RhdHVzID0gIm9r
YXkiOworfTsKKworL2RlbGV0ZS1ub2RlLyAmYnQ7CisKKyZ7L2FsaWFzZXN9IHsKKyAgICAgICAg
c2VyaWFsMCA9ICZ1YXJ0MDsKKyAgICAgICAgc2VyaWFsMSA9ICZ1YXJ0MTsKK307CisKKyZ7L2No
b3Nlbn0geworICAgICAgICBzdGRvdXQtcGF0aCA9ICIvc2VyaWFsMDoxMTUyMDBuOCI7Cit9Owot
LSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

