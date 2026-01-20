Delivery-date: Tue, 20 Jan 2026 10:43:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vi8GL-003LGS-0R
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 10:43:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vi8GK-0000EL-51
	for lore@pengutronix.de; Tue, 20 Jan 2026 10:43:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F23inra1WT/NFriXex0Mq+HHyfffcd6nnpygR8z8+p8=; b=u3LGNZ/KC/rdbGqqpHnczS/+ZD
	ub6a+UI4wFg2J5757o8nolBRsi2SzGkNlIGG250PZhT56e4oDyBU6FMjlMXGcvvDDynunr9HLmyy4
	l210G/d9/KtWeWEVMKMG1bvS8l823PvwfPdkJoYZ7Ok7ocBZbStek4wvdnT+CNVDT5UzdLm4lmiYS
	RB6M5iVstqmNcOMOzYXXop4/ElEqltIFXjcx+BGlag+DhSrUafJqbcehHRht7AQzK8zwYRK5lF7KW
	l0gvceCMBUejweWpF7KmRjOsv6JEmKJG/D4JahjFd/qm67ZfF12MVA3Cemsxb94V11uE/ikheYwJj
	z7hoSiXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Fg-00000003Y0D-1orE;
	Tue, 20 Jan 2026 09:42:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Ff-00000003Y00-2YH4
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 09:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=F23inra1WT/NFriXex0Mq+HHyfffcd6nnpygR8z8+p8=; b=OC7oEqdmAllYz7hYyyBub+v7W/
	4/K45jly49cWudz8dOVSFfqlyjwvxCeaDo2j/7zZHQ6mYGpNvV+WjvkACjwZNTFQmE6h5Ew+WiJCs
	ycnn3DxygbtgLIFRd8D5aUUMvdbbzuoy1y8iiaXGHtDg1f7YiB4j4FsU+Y8Y0iiCG+zdre2auVQtW
	BYfRx5+9DHNu+0RufT1nXNSwU83EOnFDy7eWjg9w4ngrf8e1iSV5Zay2MTQ3HElSlcAqq4bimIBXF
	Ce2/TpzHNEyEprfG+B/aTyGveMULU25wmn34MSvQg5Y3Df6c7pLuIfbasUz1jDktEDc8Y/zwkSlRg
	eV5+26tQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Fc-0000000DjAo-2ieo
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 09:42:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vi8FZ-00007E-N7; Tue, 20 Jan 2026 10:42:13 +0100
Message-ID: <d3f6a49e-f029-4612-bc46-a801eee762f6@pengutronix.de>
Date: Tue, 20 Jan 2026 10:42:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20251218151807.691382-1-a.fatoum@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20251218151807.691382-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_094216_743123_3064661C 
X-CRM114-Status: UNSURE (   9.45  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] scripts: add helper for generating Origin-URL
 references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2025-12-18 16:18, Ahmad Fatoum wrote:
> To improve tracking where code originated from, e.g. when porting from
> Linux or U-Boot, some recent commits have started using Origin-URL
> comments. Add a script that can generate them with the assumption that
> the origin project is checked out at exactly the version the code was
> copied from.
> 
> Examples in Vim:
> 
>    # add into highlight URL pointing at specified file
>    V:!git origin-url ../linux/lib/ucs2_string.c
> 
>    # as above, but consult buffer extension for comment style
>    V:!git origin-url ../linux/lib/ucs2_string.c %
> 
>    # generate in snippet syntax
>    V:!git origin-url -s ../linux/lib/ucs2_string.c
> 
> This is mostly useful for new code that's being ported. It does have no
> support to find out similarity between the files specified.
> 
> Cc: Jonas Rebmann <jre@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Jonas Rebmann <jre@pengutronix.de>



