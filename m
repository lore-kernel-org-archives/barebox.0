Delivery-date: Thu, 31 Jul 2025 17:45:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhVTZ-005e6H-0T
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 17:45:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhVTY-00018r-Is
	for lore@pengutronix.de; Thu, 31 Jul 2025 17:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Cc:To:Subject:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bgg0Bqux+qvNat6GVB8TQbJGvTTeqLhDigQ3HmPzxLQ=; b=H5WCP4+vHB/sZBjJLCoZnmcb+d
	LAHEEjBWnYKcPL80v1E1e9g/XsWxQu2qK6zhOxQDp4H5lW74EMbe2GTxpS5B2ju5Upwrk/qUZMZ5l
	ADlMhXC975oBFJT565OUQ4I20GiWzYXf3oTrnRlNouQ7m9hDbmdQY6OLSsSfa6qFp5RxfmJr3nblT
	r6v6tTOa39r7fZWw1t7aj1K+neQvEzxihUGqJ/bzYZqJ0+ccSDwAbId3vaiGzrxJk621WjNqG4999
	QZPRxu4jy6sHXC42o/k+6R5ZYkDZGUQnSpbRqpNWk8YCi3e+EqLYhiB6aYxcS7GXDbVbtYFv+m2ty
	uo+9h6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhVSo-00000003za3-4AGR;
	Thu, 31 Jul 2025 15:45:02 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhVSn-00000003zYN-0pWW
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 15:45:02 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-615c8ca53efso96954a12.2
        for <barebox@lists.infradead.org>; Thu, 31 Jul 2025 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753976699; x=1754581499; darn=lists.infradead.org;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Bgg0Bqux+qvNat6GVB8TQbJGvTTeqLhDigQ3HmPzxLQ=;
        b=aNV3O/f+J9hH2ZN1SELCSwrwTUkTDXy9amTvumQvjPdfXDTQezB5TfRlLtnSR+LRvK
         EpuaGGDqHgiV1qLiVpL/Es/F6qMT4DNNS4zfh16+6tqv2sUnqEB9a8zbyDtgMqAEuAgE
         Gi+MENG8GZJJNWpAyaPcUvfvWWsSOVNxgCUa5LVtRmbzmg/NHxBauPCrC+pnrsIP7QOI
         3V6Z1kSotE8Ajd5XB+xRGvqE7ErcCd+Xl3g1SCNo9mdO+iS2Ahg/zmucsKeG3VZd2pP4
         pM2T9X/JVgCE5BzmQbnHC08CsmO1eXvE/CVJpFyjTWKXnLPawMx0TVoggD+Ev90TSneL
         jZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753976699; x=1754581499;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bgg0Bqux+qvNat6GVB8TQbJGvTTeqLhDigQ3HmPzxLQ=;
        b=gW3r1Bdm5b74ukbd+t3cC5Yn2H2RjpVLntamHOsb4QP3ODOHJaWsvBnz0h1a1DAzGz
         T6IovGsoDUv8JOES4X64ncofEepHILWNUlX4wawRic4W20PaBRGmOjcePJhAm5cw6JPI
         DClLJ9JJAjrkL0ZMqbb0+TCEXRHQqvcz6fXMgKuOM7pPjpWiQYCiU2DGrjLuvlNtq0wL
         LZq1t+Vh30JLOCqmDcLcnbBrZcsZUg+nogyKUJqjLr5pIVG5PjV8taA8zHx8dR20cblp
         pka39ycsJlWvreajd6tI/xSRHKnf5ZM3LrbxmFJON8txsQ2t2H8yNUIW+BN2y879MiSN
         L17Q==
X-Gm-Message-State: AOJu0Yz54fGn0Pskklxw5aCnIv0Ow2tm7aysp2MihNJd8m9zfJ1lfD6A
	f2WGpqX0fpuFN53DWsJmKvfPriN6sxRyXjD2KCeqVLSgeU9tF895A4O6GqVq+UPx
X-Gm-Gg: ASbGnctXTpTzmvT8+OFH7QhLRTtKLKsIhNFmUQSTabqj9fx+NmI+qIMpwv91+wgj8wd
	Wj+/lkHRE1oIFma46wjG70pxJzIkjkVrMih5ufC0eh8VE9RelEKInGfFB5CsL5N9LRcpqLSgv+w
	t/7ewy/GLWAtSw2+Hu9cXnap+d8EtPnTZnEKajX78SgoJajCHHH7fwLFsifhTKpws3SijwEl0dh
	S1j9Zq6hQAPxr8ZitVm31TmmJYiuXHQFr65Y7sJ+6nz7nAHdwFxzrrT92vxEDFgZ2tuy9n3psDw
	Ai+JVFNioYgyQT8YTET/96f5uIdBUrZoSeKwu2DonEnPjPREva7SV2h01WnNJGi7MTB4QWcf9LD
	2TM5rUiF1wVYyBAobqrDenKmCHqYtbz+1BSUadbbgSWh5aUzQh7YS3pN0Ohcc5hhBYQ3eQKm2MC
	G9Eg==
X-Google-Smtp-Source: AGHT+IFKrM9VJ2Ak05BHJt+ZAnDR54ogFK+tH2/IPvHk3veDIjHrofx8Xbwq2pqrSTihoBsLyh+2WQ==
X-Received: by 2002:a05:6402:2343:b0:612:a86b:ac79 with SMTP id 4fb4d7f45d1cf-61586ee28b3mr8295596a12.2.1753976698850;
        Thu, 31 Jul 2025 08:44:58 -0700 (PDT)
Received: from [192.168.1.186] (2-229-167-183.ip197.fastwebnet.it. [2.229.167.183])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f15a66sm1333441a12.16.2025.07.31.08.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 08:44:58 -0700 (PDT)
Date: Thu, 31 Jul 2025 19:43:29 +0200
From: Stefano Manni <stefano.manni@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>
Message-Id: <HKY90T.CZFW9DH4XY4I3@gmail.com>
In-Reply-To: <bbc6d12d-4c8a-463a-ae7e-8b2f36afebb9@pengutronix.de>
References: <8JK70T.9NOP3AIQTVWR@gmail.com>
	<bbc6d12d-4c8a-463a-ae7e-8b2f36afebb9@pengutronix.de>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_084501_260368_964B47D8 
X-CRM114-Status: GOOD (  11.54  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: fixed partitions issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi Ahmad,

On mer, lug 30 2025 at 14:40:20 +02:00:00, Ahmad Fatoum 
<a.fatoum@pengutronix.de> wrote:
>> 
>>      barebox_state: partition@200000 {
>>          label = "barebox-state";
>>          reg = <0x0100000 0x100000>;
> 
> The first cell is the start address, so this should be 0x200000, not
> 0x0100000.

you are right I was in the mid of a change to resize partitions. Now 
the dts looks like:

barebox: partition@0 {
    label = "barebox";
    reg = <0x0 0x0200000>;
};

barebox_env: partition@200000 {
    label = "barebox-env";
    reg = <0x0200000 0x040000>;
};

barebox_state: partition@240000 {
    label = "barebox-state";
    reg = <0x0240000 0x040000>;
};

> 
> Do you maybe have board code that calls devfs_add_partition()?

no

> 
> The output of devinfo in both versions would be useful as well to
> understand this.

unfortunately devinfo reports the same information on both v2025.01.0 
and v2025.07.0

`-- 2008000.spi@2008000.of
   `-- flash@00
	  `-- nor0
		 `-- 0x00000000-0x00ffffff (    16 MiB): /dev/nor0
		 `-- nor0.barebox
			`-- 0x00000000-0x001fffff (     2 MiB): /dev/nor0.barebox
		 `-- nor0.barebox-env
			`-- 0x00000000-0x0003ffff (   256 KiB): /dev/nor0.barebox-env
		 `-- nor0.barebox-state
			`-- 0x00000000-0x0003ffff (   256 KiB): /dev/nor0.barebox-state


On v2025.07.0 every time I write barebox-env part (e.g. with nv 
command) also barebox
part is written. This on v2025.01.0 does not happen.

I supposed the problem was in the fixed-partition bindings but maybe it 
is somewhere
else, for example in the spinor driver.

Is that something I may test to understand more?

Best,
Stefano









