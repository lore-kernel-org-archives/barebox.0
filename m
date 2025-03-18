Delivery-date: Tue, 18 Mar 2025 15:52:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYIj-0014oy-2g
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:52:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYIi-0000Pr-OK
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:52:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lOZQcqrX3pNoJ+GKhK+VpHoFniBgR/fSgHAD5C38xug=; b=rop4Kr20/HZSR/5S3PNEHjLZQu
	56n+WoAPz7VifXbeTkGEvgzRpv3v+2bDqDF6wmWW5xa0+jteGAE8lNObOcbX/ut2dgRqticJThAdf
	YO+icnkKpscuXH1MGyXJZtRjcqPH1HblhQ5jO1YHLMa28KebqZGKFME4LEfKQc7x/UwdR+mGUjz8r
	ce1FnmCsNkEk1yWSlrig3OhdpkWKVqG0qyoJHvHvr4ECgyQSm0aqsBHh1C+wIssoanS3448eESmTx
	DQmxa2r7m8T1ObVdr1D129evqvfzPtcQ5FPZuWFCpgePcTKwS+n9FD5JdVh5pgxBLv10R8Nl4VEPJ
	Kj6xDRZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYIG-00000006FIw-3sME;
	Tue, 18 Mar 2025 14:51:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYIE-00000006FIF-0nGQ
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:51:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuYIC-0000K5-Vw; Tue, 18 Mar 2025 15:51:45 +0100
Message-ID: <f7975f67-d659-48c3-bf1b-498331fc5401@pengutronix.de>
Date: Tue, 18 Mar 2025 15:51:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
 <20250318-filetype-size-reduction-v1-2-4f463ffae7d0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-2-4f463ffae7d0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_075146_227093_0DB3F0E9 
X-CRM114-Status: UNSURE (   5.99  )
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
Subject: Re: [PATCH 2/7] filetype: add file_detect_fs_type()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/18/25 15:41, Sascha Hauer wrote:
> add file_detect_fs_type() which only tests if the buffer contains one of
> the supported filesystems without testing for other binary formats.


> +enum filetype file_detect_fs_type(const void *_buf, size_t bufsize)

[snip]

>  enum filetype file_detect_type(const void *_buf, size_t bufsize)
> -	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
> -		return filetype_ext;
> -
>  	if (strncmp(buf8 + CH_TOC_section_name, "CHSETTINGS", 10) == 0)
>  		return filetype_ch_image

Shouldn't file_detec_type() still call file_detect_fs_type()?

Thanks,
Ahmad


