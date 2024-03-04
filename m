Delivery-date: Mon, 04 Mar 2024 18:26:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhC5Q-008Xis-2e
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 18:26:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhC5Q-00026A-6Q
	for lore@pengutronix.de; Mon, 04 Mar 2024 18:26:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kP3coDxtE9yAkonVMX3b2z/mOVC/gESk6vdaFH655d8=; b=KMNrpVq887SsRxqQpMHtWJRAqm
	1nQwhUjhHskl+xyLdNvanbdQ8lO0StG9+/t299EfdLuBD4K40eTanmLo0lFplTr8mIZUrMJoJCZ9K
	Qks/oh6yzfEcHQX5OZisBjUB1995OjhbDTlme5RF7U92AiEjwT/8L6+qrOIE6PLFUVuAUPkI3MY2z
	iGz3Q+HOhtRRcpmVafiTkcrsvZghYVTXZnD9YNAfr3Eiap/b9EVcVp5oZVobsY4Hu1bwWa98gCy3+
	1uW/y6plF/xHIzuz5JB4CXylYHunycQVVJvQKi5tUI/XCc42H92vEitPzNOsWtwuEYGZGvXxT8A3Z
	3Vaps8Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhC4v-0000000A00r-1z2A;
	Mon, 04 Mar 2024 17:26:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhC4r-00000009zzt-20JP
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 17:26:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhC4p-0001xE-Oj; Mon, 04 Mar 2024 18:26:11 +0100
Message-ID: <3f97da6e-be03-4b46-8652-8ff82a700d47@pengutronix.de>
Date: Mon, 4 Mar 2024 18:26:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-91-a.fatoum@pengutronix.de>
 <20240108090154.GC1318922@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240108090154.GC1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_092613_617462_8AF1A953 
X-CRM114-Status: GOOD (  22.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 090/112] vsprintf: add %pD for printing EFI device path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 08.01.24 10:01, Sascha Hauer wrote:
> On Wed, Jan 03, 2024 at 07:12:50PM +0100, Ahmad Fatoum wrote:
>> We already have a few users that will want to print EFI device paths and
>> will gain quite a few more with incoming loader support, so let's allow
>> printing them directly with printf with the %pD format specifier.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  lib/vsprintf.c | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>>
>> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
>> index ea092c06d3d6..e41a1abee652 100644
>> --- a/lib/vsprintf.c
>> +++ b/lib/vsprintf.c
>> @@ -20,6 +20,7 @@
>>  #include <kallsyms.h>
>>  #include <wchar.h>
>>  #include <of.h>
>> +#include <efi.h>
>>  
>>  #include <common.h>
>>  #include <pbl.h>
>> @@ -348,6 +349,15 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
>>  	return string(buf, end, uuid, field_width, precision, flags);
>>  }
>>  
>> +static char *device_path_string(char *buf, const char *end, const struct efi_device_path *dp,
>> +				int field_width, int precision, int flags)
>> +{
>> +	if (!dp)
>> +		return string(buf, end, NULL, field_width, precision, flags);
>> +
>> +	return buf + device_path_to_str_buf(dp, buf, end - buf);
>> +}
>> +
>>  static noinline_for_stack
>>  char *hex_string(char *buf, const char *end, const u8 *addr, int field_width,
>>  		 int precision, int flags, const char *fmt)
>> @@ -519,6 +529,10 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
>>  	case 'J':
>>  		if (fmt[1] == 'P' && IS_ENABLED(CONFIG_JSMN))
>>  			return jsonpath_string(buf, end, ptr, field_width, precision, flags, fmt);
>> +	case 'D':
>> +		if (IS_ENABLED(CONFIG_EFI_DEVICEPATH))
>> +			return device_path_string(buf, end, ptr, field_width, precision, flags);
>> +		break;
> 
> Linux uses 'D' to print a filename from a struct file. This might become
> useful for barebox as well, so we might better choose a different letter
> here.

We can use 'd' along with f->f_path.dentry for that when we need to.
Another letter may conflict in future with something else that we want.
I would prefer to use 'D' as that's what U-Boot does and it avoids needless
churn for the UEFI code.

> Otherwise I think it's ok to introduce barebox specific pointer types in
> our printf implementation, even when they conflict with ones from the
> kernel, but we should update the comment above this function accordingly
> and clearly state when a letter is barebox specific.

I can do that.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



