Delivery-date: Thu, 15 Oct 2026 11:53:59 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHI9v-00DrvP-0U
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:53:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9B188200467
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:53:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tTwLrN6f;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Dh33vUUT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792058038; a=rsa-sha256;
	cv=pass;
	b=NjwtWPDNLTZXEXVNaDTPlpgbBGeLbqRqT2N4SgNJmiQr9Uh9K1sakty5CiEm9eGLroMFXe
	81ALaVteOC+Z0jcu1LS1h7PXmxTny1MsicIHepGApZaPfXocM2pZYghT42sDgqtbua16eC
	5NnPmyosghYe9+nAIg12zPNCykgd3oNAaufhq2IGT/L3LltM72DyE1yhkP3vhyfagLecex
	Zjhp1VIly+6sJZ4ZKB7AvDqaVBI/IppqfdKvIY4kR+Wlr9TnilO+8lyE8lqKVG1aSV0Sj1
	oyDIYX3IGUjObx4sec2YB62+rX9KyYrS8yApxjfnI3Zeto+H9eKwpHGkF1k15w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tTwLrN6f;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Dh33vUUT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058038;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=P4zyLLq5E/hTnB1u0QM2Ug+pOs1R5lA66YTTpjMCOAQ=;
	b=WR2gDYYq5mukFSRt4ldskoa1NNKPKcYgZPx4H9hEzG4GApmFXg1nR1FtBE2WnyX+L8LWJK
	Nr/m5VW/P7pPjhdDftftclddUVjYZa+ui+tGIkxpThyk7JP0InbtucGDDxpjy1PELEP6xM
	NxZimp2LyhYROPA/TiTLG8UXUn2J5Mw//JvUrdmAa24AMmVrqX0IGte+GysIKP/JKpgmzG
	w8fNN44NS+i2VEnzd6Ufc47nyxQLqYn63YdId90tYn8AS8bWG7/gmJhHd0YM0yRxa6Gln8
	xRLDPUYjejFmmBRqMi8t+aQAWpeWAvADSXxjb0zcYL6QOgd2GuN5LCIK0PrTGw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P4zyLLq5E/hTnB1u0QM2Ug+pOs1R5lA66YTTpjMCOAQ=; b=tTwLrN6f18wr3Biu8nRqbpwTKF
	NfcbXRtuUyWFDAbeREqXjQBMklGlVIn98TVJM1xaoWgwdzZP/oXwYosvu3C+QZqktfxrDDCAPHIhg
	Ofs9DY0T/J4g7beKovOlGHVFLwgPgFiMJN1Yd+Xxjngr2hll0bi6NmFajWeuzzLLp7S2XigKSyviY
	8KXDJHuVzXVMGioiJl+1CNH0VeEvKr2rWqwJSenGnFyrudKn1Fc8/GjnJU3/Y+C0BPmFZSmPgk1xu
	3pdkaxTytOmHBUhlgixvgqLRLAPG2NSUVbYJGndhVqkQQ/WiGGGTDrN6QOQe1yr7oW7a2Z+FiT6nB
	i1LgTPUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI8m-0000000HLbI-4C2G;
	Thu, 15 Oct 2026 09:52:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI8j-0000000HLaL-1faf
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:52:47 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 808B2201ADE;
	Thu, 15 Oct 2026 11:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P4zyLLq5E/hTnB1u0QM2Ug+pOs1R5lA66YTTpjMCOAQ=;
	b=Dh33vUUTHrgcxs7Ny0uTmG+VsjN3RWNrwlzjCLhraxblcg6dE2zfvs/UE5mBm6jsFfj84p
	2rE05HF0un1bEz0L7Y+LVFCFWLfWlrXWfVWmcv1DKQgID+YHGOkdJrisXwtpCsBiGZ+Jjm
	G7HeCemLYI8zESV068bqzk3qZmCcyY91bYxG7eSV1PYIJ5xbJszSaHTVPbY1o4TH4zfy7U
	Dli980tUNX+rm+YiX6oheabZ8kF0g9CSOQ9rcLiwh140Kb+AdNQMVb1WyGnrpjCjiHNvku
	ikKh/spm+Ce7diDqAb/6NMRASKgtyelHT/9kiKovrkDB9iSukErjYR/BsuJ+7w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792057963; a=rsa-sha256;
	cv=none;
	b=bPzZC0IUPKYRQghefN5lnAyNr55+DYHHieELOosTMcXOz9zHjW4LYWBvplpgwH1MvLGyVo
	5fA9pXoQ+pHait+NPJgJuzyErzBucyl1hUCl9EoGX8xOd+ToKk9geT5ChG/Mwu203LD+EZ
	wIMDRg0QI6GDIaZt6XKDtx6oF4GdcC7j1oCumPjg4BWImiVU4eS5FzMyyNbvdPCdvCubjR
	KfEKIl8RUy9CMfQTttijmFkxydY1vGsdrRpZ7PaUREKVMl3BfIdgA5SqpdaF3HkFTl04xT
	UONuN4lUe0qbRke6lLMebOp+T1c9WhcYtj+H8z+3WDPC86R8IfBMiMaDudyREg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P4zyLLq5E/hTnB1u0QM2Ug+pOs1R5lA66YTTpjMCOAQ=;
	b=Fy4Z1DVXoBicmUyvyNTChOIkVYoKpY2CaJdS6TiA+7T6mzZZDY+t1hkoDKRgFoz4z/wNEU
	Ll+CZQyLhcPJrMF+HbT7Hc1ZQzi5yQcDF7OcnRjsMXvVMyzw06W+Fx8kLLzvAewSH8E/l9
	aX1qitM+vLc7ZyrzZw3qyarfY/UVwFY6Ukl6Lb7lsZUEFAg5hrp4S2IhyRAynV1zDkHJFd
	Zl0xB+zPrxqsRJ/1v13bBs1SdxNfcBk+sMh7Qsdmq6zF36orl+ECk3i5sLckLJuHnbPRn3
	fxAUeOp1Mq8oRlMl+X1GOg8RtXtlt1JB1NZgzuQn8v1eamb0jIYVUfo49bVYhw==
Message-ID: <13a8465d-7cd2-4252-a2a0-0fd24b1dc0e1@pengutronix.de>
Date: Thu, 15 Oct 2026 11:52:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/10] commands: devlookup: honour
 global.bootm.root_param for -k
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de,
 Ahmad Fatoum <a.fatoum@barebox.org>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-2-a.fatoum@pengutronix.de>
 <er7tpu7joyb6vtfw2vleyvhzzws6yslwbkrsvqx36zpp5ybv3y@g23qmstyfzbb>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <er7tpu7joyb6vtfw2vleyvhzzws6yslwbkrsvqx36zpp5ybv3y@g23qmstyfzbb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_025245_591608_321BBDDA 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Marco, On 10/15/26 11:46 AM, Marco Felsch wrote: > On
    26-10-15 11:18, Ahmad Fatoum wrote: >> From: Ahmad Fatoum <a.fatoum@barebox.org>
    >> if (kernelopt) >> - val = buf = cdev_get_linux_rootarg(cdev); >> + va
   [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9B188200467
X-Stat-Signature: 151zb71qjm4buakoqqi7hyifrs4mhkws

Hello Marco,

On 10/15/26 11:46 AM, Marco Felsch wrote:
> On 26-10-15 11:18, Ahmad Fatoum wrote:
>> From: Ahmad Fatoum <a.fatoum@barebox.org>
>>  	if (kernelopt)
>> -		val = buf = cdev_get_linux_rootarg(cdev);
>> +		val = buf = cdev_get_linux_rootarg(cdev,
>> +			getenv_nonempty("global.bootm.root_param") ?: "root");
> 				^
> Wouldn't it make more sense if cdev_get_linux_rootarg() returns the
> correct <key>= so it's fixed for all possible cdev_get_linux_rootarg()
> users?
> In other words put this logic into cdev_get_linux_rootarg() and keep the
> API.

There are no other users of this API. I can imagine other users (e.g. a
board's custom boot entry provider) wanting to tightly control whether
global.bootm.root_param is used or not.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>  	else if (paramname)
>>  		val = dev_get_param(cdev->dev, paramname);
>>  	else
>> @@ -109,7 +110,7 @@ BAREBOX_CMD_HELP_TEXT("parameter with that name is looked up.")
>>  BAREBOX_CMD_HELP_TEXT("")
>>  BAREBOX_CMD_HELP_TEXT("Options:")
>>  BAREBOX_CMD_HELP_OPT ("-v",  "write output to VARIABLE instead of printing it")
>> -BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line")
>> +BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line (see global.bootm.root_param)")
>>  BAREBOX_CMD_HELP_OPT ("-a",  "output resolution of cdev alias")
>>  BAREBOX_CMD_HELP_END
>>  
>> diff --git a/common/block.c b/common/block.c
>> index 5441c7ca1848..16075bb146ec 100644
>> --- a/common/block.c
>> +++ b/common/block.c
>> @@ -665,7 +665,8 @@ int cdev_get_linux_root_and_opts(const struct cdev *partcdev, const char **root,
>>  	return 0;
>>  }
>>  
>> -char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>> +char *cdev_get_linux_rootarg(const struct cdev *partcdev,
>> +			     const char *root_param)
>>  {
>>  	int err;
>>  	const char *root = NULL;
>> @@ -675,5 +676,5 @@ char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>>  	if (err)
>>  		return NULL;
>>  
>> -	return format_root_bootarg("root", root, rootopts);
>> +	return format_root_bootarg(root_param, root, rootopts);
>>  }
>> diff --git a/include/block.h b/include/block.h
>> index 065ae81358b4..91ab91f9109b 100644
>> --- a/include/block.h
>> +++ b/include/block.h
>> @@ -109,7 +109,8 @@ static inline int block_flush(struct block_device *blk)
>>  
>>  #ifdef CONFIG_BLOCK
>>  unsigned file_list_add_blockdevs(struct file_list *files);
>> -char *cdev_get_linux_rootarg(const struct cdev *partcdev);
>> +char *cdev_get_linux_rootarg(const struct cdev *partcdev,
>> +			     const char *root_param);
>>  int cdev_get_linux_root_and_opts(const struct cdev *partcdev, const char **root,
>>  				 const char **rootopts);
>>  #else
>> @@ -117,7 +118,8 @@ static inline unsigned file_list_add_blockdevs(struct file_list *files)
>>  {
>>  	return 0;
>>  }
>> -static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>> +static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev,
>> +					   const char *root_param)
>>  {
>>  	return NULL;
>>  }
>> -- 
>> 2.47.3
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



