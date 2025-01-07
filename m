Delivery-date: Tue, 07 Jan 2025 08:15:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV3oE-000DnA-2e
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 08:15:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV3oB-0003Ag-6n
	for lore@pengutronix.de; Tue, 07 Jan 2025 08:15:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ajWdk7PgLdaxdE9iuYEEkFViMsA50YAseKKRDHTMXqU=; b=muXta1H0LCIo3XO3SWWFJE73XV
	2EK8urvBn/qqPwvt5uxrezgRELygShdgrJ7I3bJCVh5ESWc3v2xdYlynjWGz3a2Om2K5xSWzqO3gJ
	S4RepSql8F//WpTSoRKtFXigwQlHz1lNupHT6lLcU74+CIsohAxlH6LI5VLvZH2yMaAnLeC0pgS5c
	PSlRZS55scGSI413KLPPA59aq5Opqw3UZAQZSdqWRu4qxRMgw7lm0/yEHP6NnGPixfa4CK0gf0JtX
	OkVCp5pkAcP9CW9+grDeEkKlaHqnGvlSbfWcXnnSdbxpZWp+LAICW+6VJI4hGa7z3E7FsweXS6y6P
	HXrWjaVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV3nV-00000003jnZ-1P8W;
	Tue, 07 Jan 2025 07:14:41 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV3nQ-00000003jn7-19Xt
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:14:40 +0000
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id AB0E95F89A
	for <barebox@lists.infradead.org>; Tue,  7 Jan 2025 08:14:31 +0100 (CET)
Message-ID: <92d4dd39-529d-4e4c-b231-76c3ba1790a7@emlix.com>
Date: Tue, 7 Jan 2025 08:14:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Content-Language: en-US
From: =?UTF-8?Q?Sebastian_Gro=C3=9F?= <sebastian.gross@emlix.com>
Autocrypt: addr=sebastian.gross@emlix.com; keydata=
 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
 ZlrLrSHrCdYwzhLk7OyivQ==
Cc: mainlining@emlix.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_231436_467897_A79302F4 
X-CRM114-Status: UNSURE (   7.98  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: bootm: fit-image: hash node name too strict
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello and a happy new year 2025 dear all,

I happened to have a fit-image which worked fine with u-boot and wanted 
to give it a try with barebox.
Sadly I got yelled at for not having hashes for the kernel-1 `Image` 
provided in the fit-image.

Grepping the source code for the error message pointed to 
`fit_verify_hash` and `of_get_child_by_name` with `hash@1` or `hash-1`.
Neither is required by u-boot as it looks only for `FIT_HASH_NODENAME` 
which is defined as `hash`.

Since the image is build by uboot's mkimage I would expect the itb's to 
be compatible. Or am I missing something?

Changing the following line in the `its`, ie. its build script
```
- hash { algo = "${FIT_HASH_ALG}"; };
+ hash@1 { algo = "${FIT_HASH_ALG}"; };
```
made the fit-image work.

Perhaps another if-clause is required. Or some error message that states 
which property/string was searched for,
since there were hashes in the image, but not where barebox expected them.

Regards

Sebastian Groß

--
Sebastian Groß, B.Sc.

emlix GmbH
Headquarters: Berliner Str. 12, 37073 Goettingen, Germany
Phone +49 (0)551 30664-0, e-mail info@emlix.com
District Court of Goettingen, Registry Number HR B 3160
Managing Directors: Heike Jordan, Dr. Uwe Kracke
VAT ID No. DE 205 198 055
Office Berlin: Panoramastr. 1, 10178 Berlin, Germany
Office Bonn: Bachstr. 6, 53115 Bonn, Germany
http://www.emlix.com

emlix - your embedded Linux partner



