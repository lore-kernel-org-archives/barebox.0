Delivery-date: Tue, 30 Mar 2021 03:18:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR322-0006Yn-6y
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 03:18:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR320-00076V-6o
	for lore@pengutronix.de; Tue, 30 Mar 2021 03:18:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HTY95s+1OGHJrZYFPRQmKLM5q+fh16L6njfCRMgZUbU=; b=Dwa/hLSjy0K/KU3CIrEJoS/1p
	2vV87XreFmKzJEVvqFGsePXpF3q7QLFSxKi33VEm6m7bil+76zd9pLeOoH4rhPX0INSIAqAVnjhXC
	M/9b1HFhyWsNmBWsNRTnDaLCSJxpQlzEhSeVo0nFV61S3cgudsgEyP9sp7CbF595Tq+rtRz3s3uO8
	1nMOc/c58cpZhhqA4F2S4W3jS7W0OOpyKIcUzdHcUXsEdry9OGs5HHuy1/OR7LXchFO3vOKOH3yN5
	663nMCtipKU7GOTWMz6hB0WYLrUdyFtotPJtBU2NAdkGowFqJgOJ+snYEzBcXCY84mCECT4WLOm3o
	S7vU0xVdA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR30D-002KGB-Aq; Tue, 30 Mar 2021 01:17:05 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR0Pt-001gMf-JM
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 22:31:27 +0000
Received: by mail-lj1-x22b.google.com with SMTP id a1so17707332ljp.2
 for <barebox@lists.infradead.org>; Mon, 29 Mar 2021 15:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N84uOStz4xMH1r0t4zfXwFPUOomemByG5N3AONSAxrw=;
 b=fbnjkQFU6Cbwik2whG/FUxr6I/qc4Jq7MpTnzm9ooqdpaUXf35viOTUYbzV4agjpti
 mmDHq8E7ChjUtrlsbXoxfbHiThNrRpb5C47nY9wbsnKxTGBerM/P4J8AMV1K7ALBfQJ0
 mxOWvQE1B1NAMEgVsuAC+UnMoK8NOSGsZhn2IPKeSYSuzCE6voR8cbpeGcoepwtaKLlJ
 QcaNh34Jr+AZR0c7OXu7+TU+/8UIYdd/GJs96CgKscTSQNKGcPQ8Ucexr48WcaLX2FRu
 89MsokBydwb4woIvlRvTfndvI/Fs1JjqIlkozkkYb1RKK9AR+yNreGCUEc/zC04Y4L4Z
 2Vpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N84uOStz4xMH1r0t4zfXwFPUOomemByG5N3AONSAxrw=;
 b=YC7Rbfn9h4xvDcgn1Q8eq9/MrziKeTTkHxxM1XJ7BMlJVZAl3YSW5Wn+8S225iLt5Y
 7jf1XD4F84NoaKPslp/5SBc6hn0j6Q9Vu1vsz/hna1OUKEYlFoshb4vktbzUnJrLOgvH
 VEhvsqZlNStS5UR3mIJlz17N/60b23WkUNQBoumJbsfLPpkDs2xZkXM26NAWAXp9qc3f
 UhHIsz6EebSb6mrRbbawreu8A1krmwgAPOZQ7XrLWFbqnchAqTS7Y5vLLFpUJJEC6Uf5
 S8gd6viaH3nEyJd2BSy8ks7x4TvwD4raTYDlBoS/VLZI8fQErNMQDNlUEuvLwDm4ijtF
 wsmw==
X-Gm-Message-State: AOAM533erzP8nNMWtcLxlarx1EL37lhJtpAgdr7XA2k8B4W8xn1Xj9yq
 eqbsP6HBUS3RgXqfW3n09GWXqzDP9nw=
X-Google-Smtp-Source: ABdhPJzJjVGJnSo1FQJN5PITcLYJMibYQsUnI73s9hwV/gSHp8EaZJBN18Jsw5AWEiXScvGupnG1wA==
X-Received: by 2002:a2e:9f45:: with SMTP id v5mr18889967ljk.183.1617057084699; 
 Mon, 29 Mar 2021 15:31:24 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id r9sm691710lfn.247.2021.03.29.15.31.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 15:31:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 01:31:18 +0300
Message-Id: <20210329223120.442256-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210329223120.442256-1-antonynpavlov@gmail.com>
References: <20210329223120.442256-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_233125_730705_E0B2BFD5 
X-CRM114-Status: GOOD (  12.14  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] clocksource: timer-riscv: adapt
 riscv_timer_get_count_rdcycle() for RV32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gUlY2NCByZGN5Y2xlIGluc3RydWN0aW9uIHJlYWRzIDY0LWJpdCBjb3VudGVyIHdoaWNoIGhv
bGRzCmEgY291bnQgb2YgdGhlIG51bWJlciBvZiBjbG9jayBjeWNsZXMgZXhlY3V0ZWQgYnkgdGhl
IHByb2Nlc3Nvcgpjb3JlLgpPbiBSVjMyIHJkY3ljbGUgaW5zdHJ1Y3Rpb24gcmVhZHMgb25seSBi
aXRzIDMxLTAgb2YgdGhlIHNhbWUKY291bnRlcjsgUkRDWUNMRUggc2hvdWxkIGJlIHVzZWQgdG8g
cmVhZCBiaXRzIDYz4oCTMzIuCgpUaGUgY29kZSBvZiB0aGlzIHBhdGNoIGlzIGJhc2VkIG9uIEZp
Z3VyZSAyLjU6ICdTYW1wbGUgY29kZQpmb3IgcmVhZGluZyB0aGUgNjQtYml0IGN5Y2xlIGNvdW50
ZXIgaW4gUlYzMicgWzFdOgoKICAgIGFnYWluOgogICAgICByZGN5Y2xlaCAgICAgeDMKICAgICAg
cmRjeWNsZSAgICAgIHgyCiAgICAgIHJkY3ljbGVoICAgICB4NAogICAgICBibmUgICAgICAgICAg
eDMsIHg0LCBhZ2FpbgoKICBbMV0gVGhlIFJJU0MtViBJbnN0cnVjdGlvbiBTZXQgTWFudWFsLiBW
b2x1bWUgSToKICAgICAgICBVc2VyLUxldmVsIElTQSwgRG9jdW1lbnQgVmVyc2lvbiAyLjIKClNp
Z25lZC1vZmYtYnk6IEFudG9ueSBQYXZsb3YgPGFudG9ueW5wYXZsb3ZAZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcmlzY3YuYyB8IDEzICsrKysrKysrKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcmlzY3YuYyBiL2RyaXZlcnMvY2xvY2tzb3Vy
Y2UvdGltZXItcmlzY3YuYwppbmRleCBlYjViYTJkOGMyLi5lZjY3Y2ZmNDc1IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLXJpc2N2LmMKKysrIGIvZHJpdmVycy9jbG9ja3Nv
dXJjZS90aW1lci1yaXNjdi5jCkBAIC0zMCwxMCArMzAsMTcgQEAgc3RhdGljIHU2NCBub3RyYWNl
IHJpc2N2X3RpbWVyX2dldF9jb3VudF9zYmkodm9pZCkKIAogc3RhdGljIHU2NCBub3RyYWNlIHJp
c2N2X3RpbWVyX2dldF9jb3VudF9yZGN5Y2xlKHZvaWQpCiB7Ci0JdTY0IHRpY2tzOwotCWFzbSB2
b2xhdGlsZSgicmRjeWNsZSAlMCIgOiAiPXIiICh0aWNrcykpOworCV9fbWF5YmVfdW51c2VkIHUz
MiBoaSwgbG87CiAKLQlyZXR1cm4gdGlja3M7CisJaWYgKElTX0VOQUJMRUQoQ09ORklHXzY0QklU
KSkKKwkJcmV0dXJuIGNzcl9yZWFkKENTUl9DWUNMRSk7CisKKwlkbyB7CisJCWhpID0gY3NyX3Jl
YWQoQ1NSX0NZQ0xFSCk7CisJCWxvID0gY3NyX3JlYWQoQ1NSX0NZQ0xFKTsKKwl9IHdoaWxlICho
aSAhPSBjc3JfcmVhZChDU1JfQ1lDTEVIKSk7CisKKwlyZXR1cm4gKCh1NjQpaGkgPDwgMzIpIHwg
bG87CiB9CiAKIHN0YXRpYyB1NjQgbm90cmFjZSByaXNjdl90aW1lcl9nZXRfY291bnQodm9pZCkK
LS0gCjIuMzAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

