Delivery-date: Wed, 01 Feb 2023 19:14:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHdH-00AQOx-Tx
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 19:14:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHdF-0001ls-G5
	for lore@pengutronix.de; Wed, 01 Feb 2023 19:14:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lv0dyi0CXuild+bYIw7nqjYgB0zmUimfetQiXlSHVzs=; b=gZS2zmwjcRRBPKBOPKYk2GyDho
	l3HWr3Dk1v4dN3xjh9X1hdoZ9nT+RDK31hP5KAI8XyNdBBEh0UeHEkqLIIG2XoZcLlU0VMxtqwG/k
	tkdalx44Qmns5hgX2D+T3CIzb3I0ESpQJ6qmfStnWYouiFGDXqX/Z66iEDrfBd1pizyUojw+NtLBv
	U2giuCyrzQbxLmwcnjzrPIK2hhx7k5sKsM5KeAkrB1ROtEEOzJDBdNeqYfxJ3PfzQ6uZ03z6OfAzE
	t4YsDPKeCoT9LcYilf75wSR1NlzPhBhxT7GlQGCWTdPWbDquXjhLTPg8/BIENexcjoLY/ovZbHmSg
	QcQdB2gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHbz-00D9DE-3O; Wed, 01 Feb 2023 18:13:35 +0000
Received: from out-107.mta1.migadu.com ([95.215.58.107])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHbt-00D9BA-Qm
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 18:13:31 +0000
Date: Thu, 2 Feb 2023 05:12:58 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675275203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lv0dyi0CXuild+bYIw7nqjYgB0zmUimfetQiXlSHVzs=;
	b=kqQM+k2kNZezXbFq6YJnNJVKc0sqXj6ME3e8M749gKU5cCunFNjskJJdhZPv2nk7aWIIOc
	u7DDP1tOzz4d2ShJG0Mu3jJetPclsv2wnU2/pJQsadeEkcAWsbcbmqdsd2F09F+Gka4c++
	tCKm2p75QCgbQDAw53RArjwU6kYvhdT/lpsWwRW3fzYwRf4e8/YnkzV+Tj2+PQspILOlTf
	mkdzMOvkcZSofdeGztsdGX2Z2TrhtEFLB9+d6UmprD23VrTdr5AHXdLwoI0f85wdFVT8hC
	aIQMhEttrGlBXV7orqnGtpxDfTCvpL9pf9EP+LRYI5/zXjeqpIcWxkT8CTYusA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Y9qrqiyisq6gjMQx@novena-choice-citizen>
References: <20230126185643.104049-1-contact@jookia.org>
 <CAP1tNvRo98Xoo2z3GmacoYZ-vR6FTnKcJYxrop3HJZi-QnFt6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRo98Xoo2z3GmacoYZ-vR6FTnKcJYxrop3HJZi-QnFt6Q@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_101330_601691_34B98933 
X-CRM114-Status: UNSURE (   8.94  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 01, 2023 at 08:50:50PM +0300, Alexander Shiyan wrote:
> Hello!
> 
> Just a nitpick, udelay means milliseconds (udelay_(us)),
> which isn't quite right in this case,
> so I think we should use the "loops" value here (delay_loops() or so)).
> 
> Thanks!

Hi Alexander,

Thanks for the review!

Are you sure? us means microseconds from what I understand.
I've also posted an updated version of this patch just last night.

John.


