Delivery-date: Fri, 10 Apr 2026 16:03:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBCSR-00AfEk-1v
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 16:03:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBCSR-0005CJ-2r
	for lore@pengutronix.de; Fri, 10 Apr 2026 16:03:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zOl+RCDt1ekQqfKy0oZgD9ZumqyHgLtdWsfSI170MZs=; b=hNkrzau8ydKR9bnNR+9j3OWLDc
	/MoW4y8x3iyhn12EByEyifwaGkvuzmeQOO2zJdtj1U+ALTRTuIRG1vLAhQt7/r7o3I0SX8vfWTzRU
	EZVQae5ShXZvm6V06TfxOGpXSDZF4aD0brHTZPLUlnMYW3KmIY/aTs9bWrRaDtnzmvt6wMI1AljyX
	BAOUuu2pHzmaem/LptjJa668O1Hgh7KlQ1viCD9n4gnUcHGqKWf36ptZRc4etJa2LB0X7utRNeC4G
	is+Ldo9AGMrQO120+sOuTglGtYq40yrJsSt3vUJ4PrGs6QiRXBgaASLM7ez5qX9HjQYRcOe82gnvv
	xy0KGVzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBCRt-0000000CM1M-2L1k;
	Fri, 10 Apr 2026 14:03:05 +0000
Received: from mail-dl1-x1234.google.com ([2607:f8b0:4864:20::1234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBCRr-0000000CM0M-3Owy
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 14:03:04 +0000
Received: by mail-dl1-x1234.google.com with SMTP id a92af1059eb24-1279eced0b9so3083895c88.0
        for <barebox@lists.infradead.org>; Fri, 10 Apr 2026 07:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775829782; cv=none;
        d=google.com; s=arc-20240605;
        b=EGPQHdlfUQVPeApW2EXh58ZNqAWzn0Vvsi2jyYYFCrXsUwod4OJkW5HrXvzuCyUqRQ
         3k5uoPik3de0FNh+cX/uSYJOukvs7GgCaZdL5ST1w72TGYRFVilPy2E+oQNMYI+ThZQ1
         RZMiwoaBLEFjM/Qx65ShCKMh2HlT8cOEmfM7hecaXuZzLrGZWpBlTOKJeWaWM94i9PSY
         o6seVp2suefX7hAAhFQwi7psL63ye4lj9ZYWOILlwdaepMoc7Tp4KLWk6ae7H5ddn5zc
         dr+EGdew0Ljdu4dIZ6Qn0tlZc+cWJInZcH0ouNScNDi38qr/3Fq3ZenK2UzYUhqK1BuA
         m8nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=zOl+RCDt1ekQqfKy0oZgD9ZumqyHgLtdWsfSI170MZs=;
        fh=nDWr/NGBxypLRpXDDzp3G+TPW5FTTeYIsyMzIh7BKA8=;
        b=k/3uk/oo8d181fGGmHthPeBIx/x7rGpiwja0qovPkX3vL1kqPeR1Q7Kf3BTJuwahbI
         /HlYHHUBMmwUvrGA7RUZfIViG8fJvevyLHvtf5FqHSRN7nz1G4NTcHIZNxx0kogvfXeA
         u7AAv3NQRaasX4xWWjUvEHaBRzCjljeEgNtsax1BCbySoDSaK10+c228Hx61w7zrvbD3
         hyod4kB0pZUs2jw1zINKAwk6f/1WKgOjuR16TZDLxZNELCAEZ+/A/bvx1iNSelmVKVFi
         K98+Hr+SagPGIE83b131h2Z+Nt3+BeM6VAyg0b0W4wsGhnX1XXXtkKpM2kA0d1Iebk/A
         0MUg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775829782; x=1776434582; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zOl+RCDt1ekQqfKy0oZgD9ZumqyHgLtdWsfSI170MZs=;
        b=TZJLsH4bqL2A2512fK9gVC5xRrgbNgjXYMbvjHXchXWKpW64MD+bjgP9gtcUNXgfZW
         N/PVfVubCUIBp0YEcopj9J9Rb3a6K2lTP/Us5vpFy9OeU8rHRt22xaOrQYxA2Yj/fofY
         Ol2iC6p0RhmjqziZlclDi8A9dC14RPCsK1zneAbg8yqEBD0qS41fd6ge7UzZfmMBg4V+
         ajz/40SXBXKQZGUnyAsaDTUcJfJsMVITUULRRG7MXSOfkmyTKUHhSNCIJCkO931AbOZ8
         YtyArn5l3qv5wm8GMJZqmK9Y6IF8nZma9SbLwyFt2rb5+bu6S6M7yCRf/SlXtldh3Qkt
         MikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775829782; x=1776434582;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zOl+RCDt1ekQqfKy0oZgD9ZumqyHgLtdWsfSI170MZs=;
        b=H+t7ZTdk/5ucXdHhshWWDOMBjXUcYM1PWE8SiSI52BhA73W8N0+y9VRlPRyB4x2r7Q
         m05ZXmqP4HqB57IY40l0H02hsr68GTzjdFyK4z036HvIrO4ZMe/AGk/xL+2kFcU+6C+y
         q/7hSrWcAZvLLzZ4ZEbNz2joVHsbfGgX5oHH1GPy2cCjvmsQ9SsHCApLGnSnxcKOOzWv
         rlII6gTVdKy8QsLaEO43kfEmOydb5GEqbWf1xlTIPAGyu1pVd8D9bwUzq6HbwxdJP4vJ
         m8+Rr0cDU3ob/04zoQzo3MyQALKbVG2PZGENw4Qu0Zci/uZuisqYkNuynXLnaGdPTP6R
         QgHg==
X-Gm-Message-State: AOJu0YyANIZ+u/aYxYYRbGDJCdraiYIYtYSQdOfTrhw9ymny0FB/u6h6
	h0Mmo8ZYhFDTsfmVmx1ZlqU2jxA5SMTSpqD+rI/D214U9byB8OoP/+RqK/jxDNToQZ/PF2az510
	pOLpOVKijlAabXxVrqGyFuMu32N9kXiZHgTUwo4U=
X-Gm-Gg: AeBDievTqMBf2gD8Tg6uQi+b1ugBKUgpXZQJxcaxYVF1WVJgSTV30fz14qiPUXm0AEO
	rziHB11HKTYyD5hu3+wJHpxV6atYrOpbPym7BDkc/vHWJJveb/PhqIWp4bxo1lAHLSqIVGJkBfj
	/n/cmtPo+aaiwPmdydMgJYNui1oYMCHRGBGPYTltjlHi8UzJNvAJISdZmEJTite2JiUuG0nPrFK
	wkSVUBpy9tiloMxwS0Zr/FmcpzAGv++HF/5Hbs7oewkRMZwc3zZ9TDibrWITNX2yXOaxHKE+61b
	NN/w4EL8
X-Received: by 2002:a05:7022:389:b0:128:c77a:6c8e with SMTP id
 a92af1059eb24-12c34eec373mr1713879c88.28.1775829782102; Fri, 10 Apr 2026
 07:03:02 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Apr 2026 17:02:50 +0300
X-Gm-Features: AQROBzB4jHUMMn_TV9O_4v9fni38t1XaTTj-0GittYeSSZ-qjgY_ynF4NZgGCVw
Message-ID: <CAP1tNvRbUpQdGCx6CeyAB6Q6N991oBr5V6mw2+5UHwW1NtYJLA@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_070303_881312_3003029A 
X-CRM114-Status: UNSURE (   3.76  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: blspec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

Can anyone explain how to use the built-in blspec support?
I would like to try setting up booting via exlinux.conf...

Thanks!


