Delivery-date: Thu, 21 Sep 2023 15:05:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJNU-005tew-SY
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 15:05:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJNS-00048Y-En
	for lore@pengutronix.de; Thu, 21 Sep 2023 15:05:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vGgYz998k1yMVfl9+7a+fwlqKJFjE0nXqCNp1x5a+oY=; b=z0Sm2oYHbxY+nQuOUR5YhocmaC
	sfBDH64Z/Fn5M6BcdrKM3qteFwS+ACH/jdW7LBxWRbtwNZ9/YmtNnuTHS/MxaptZWlBMXg9oX1t9B
	nI85AjcHSL1s2d1fqs2lV6VD2VuOJU0isTdy+AnFj2a6C+Qnx1NPDr7apWw51420gDDmY4nRZyrar
	WTYxhXoQbE4UxMHud54yE1gHABdZxidQTit6fyTBYU2HP1dtNZNmLVCHLpbMznJxlG6rig39s7nPz
	TJiY7WrXwoKhsgQc3dZE7VFLLM+lTHLMnMZuY7nKaXPRdt9JzpA8VMBg+Ni+ScIVIUc710HQ+ZC7p
	Blf/hHvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJMR-0065Va-0A;
	Thu, 21 Sep 2023 13:04:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJMP-0065VC-1U
	for barebox@bombadil.infradead.org;
	Thu, 21 Sep 2023 13:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vGgYz998k1yMVfl9+7a+fwlqKJFjE0nXqCNp1x5a+oY=; b=T9ydXtXcfIWRVX1XFV81GObeDO
	lVPSv4oLNr9GVXZr0LUkBsq5020wIA/SbzS+NqsFw9uXI4SRRGtYX6jTK9pURzGqYvjNwim/DfT+D
	eC0F+vrn3jWev+V9dkrYxr/sHf+LnqyXmrnGC5Ygbqltdro/mUExuipS6NajK8sNqByydCsh31JIQ
	N9QjGTMCeWjOBywYN6OrDmJ/bL58extS9Xo+HFLAcPX2E4DH39UFJs8rkCftsk4R092C2DUzYicAm
	VJwuxGVsFxRfoGMgXK2FWIhba3vrUEdUror43/ZriiyTqmZkAnW33PD3LQnKWolXgS3AsoB5fVKnG
	LGjNZQIQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJMJ-00FNxi-2J
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 13:04:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qjJMK-0003iS-5q; Thu, 21 Sep 2023 15:04:44 +0200
Message-ID: <2ec608e6-245e-61f7-c3bb-3d04c79cca0d@pengutronix.de>
Date: Thu, 21 Sep 2023 15:04:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230921102426.1109289-1-a.fatoum@pengutronix.de>
 <20230921102426.1109289-4-a.fatoum@pengutronix.de>
 <20230921130316.GQ637806@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230921130316.GQ637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_140445_383079_40E0B434 
X-CRM114-Status: GOOD (  19.69  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] lib: rename json_strcpy to json_strdup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.09.23 15:03, Sascha Hauer wrote:
> On Thu, Sep 21, 2023 at 12:24:26PM +0200, Ahmad Fatoum wrote:
>> json_strcpy is an unfortunate name for a function that allocates
>> memory. Rename it to json_strdup instead.
> 
> s/json_strcpy/jsmn_strcpy/
> s/json_strdup/jsmn_strdup/

Right. Should I resend?

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/jsmn.h   | 2 +-
>>  lib/jsmn.c       | 2 +-
>>  test/self/json.c | 2 +-
>>  3 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/include/jsmn.h b/include/jsmn.h
>> index 64b3b535ab6e..156ae2086439 100644
>> --- a/include/jsmn.h
>> +++ b/include/jsmn.h
>> @@ -153,7 +153,7 @@ JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
>>   * value does not exist or is not a string. The caller takes ownership of the
>>   * pointer returned.
>>   */
>> -JSMN_API char *jsmn_strcpy(const char *path[], const char *json, const jsmntok_t *tokens);
>> +JSMN_API char *jsmn_strdup(const char *path[], const char *json, const jsmntok_t *tokens);
>>  
>>  #ifdef __cplusplus
>>  }
>> diff --git a/lib/jsmn.c b/lib/jsmn.c
>> index 9e624f7518ad..10a77886a8bd 100644
>> --- a/lib/jsmn.c
>> +++ b/lib/jsmn.c
>> @@ -483,7 +483,7 @@ JSMN_API const jsmntok_t *jsmn_locate(const char *path[], const char *json,
>>  	return tokens;
>>  }
>>  
>> -JSMN_API char *jsmn_strcpy(const char *path[], const char *json,
>> +JSMN_API char *jsmn_strdup(const char *path[], const char *json,
>>  			   const jsmntok_t *tokens)
>>  {
>>  	const jsmntok_t *node;
>> diff --git a/test/self/json.c b/test/self/json.c
>> index d3088f1b7542..489671768923 100644
>> --- a/test/self/json.c
>> +++ b/test/self/json.c
>> @@ -104,7 +104,7 @@ static void test_json(void)
>>  	token = jsmn_skip_value(token);
>>  	__json_expect(json, token, JP("boolean"), JSMN_PRIMITIVE, "true");
>>  
>> -	string = jsmn_strcpy(JP("string"), json, tokens);
>> +	string = jsmn_strdup(JP("string"), json, tokens);
>>  	if (WARN_ON(!string))
>>  		goto out;
>>  
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



