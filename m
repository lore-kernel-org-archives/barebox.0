Delivery-date: Mon, 17 Mar 2025 12:38:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8o7-000b5I-2K
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 12:38:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8o6-0005KA-KD
	for lore@pengutronix.de; Mon, 17 Mar 2025 12:38:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+iiURKe6RNrSOIoqmgyzBVR9L5u9x69zAxxygQHQGHI=; b=QzoKjFOqxEHBDHx6PXYT5aUS6i
	6/J5wz+yzZXd6samv29Xw0P9caU9L43pm6fvWa2ld74DDVZcylXgnmahsvn0oeuwDiiaKqiPpgooC
	9g0jNtTjYDf3gfzTeUP63Y26NFb2mx8fryCd28QMQkjQ3TdFWcr3hFuqUEqKGWsVhNFwc2qhPRtDT
	000qrNbacyTDhhCPMa76ol04zJNmXNtSVVphAeqTehRl8CswuGXHMKzzCtlOnx7E9WXhKATwDXdXp
	q3GWpykMPUr/cME3l54wLwcYmT38iRcCzQyyoRlTje1uKYxeH/+mjYHOW3YQp/2WVfl60mQZj3AxA
	CUYqGvvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8nd-00000002QnU-1E4p;
	Mon, 17 Mar 2025 11:38:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8m2-00000002QWV-1oWO
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 11:36:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8m1-0004qq-60; Mon, 17 Mar 2025 12:36:49 +0100
Message-ID: <710a2e83-3027-49dc-8035-a374075eb2e9@pengutronix.de>
Date: Mon, 17 Mar 2025 12:36:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Adrian Negreanu <adrian.negreanu@nxp.com>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
 <20250313101728.3546902-12-a.fatoum@pengutronix.de>
 <Z9fS5ZZzEDheZMJh@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <Z9fS5ZZzEDheZMJh@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_043650_490450_19BB3554 
X-CRM114-Status: GOOD (  16.36  )
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
Subject: Re: [PATCH 11/11] fs: qemu_fw_cfg: support populating environment via
 QEMU fw_cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 3/17/25 08:44, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Thu, Mar 13, 2025 at 11:17:28AM +0100, Ahmad Fatoum wrote:
>> diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
>> index 7f7350e67e64..ef2a1008ee5d 100644
>> --- a/fs/qemu_fw_cfg.c
>> +++ b/fs/qemu_fw_cfg.c
>> @@ -13,6 +13,7 @@
>>  #include <errno.h>
>>  #include <linux/stat.h>
>>  #include <xfuncs.h>
>> +#include <envfs.h>
>>  #include <fcntl.h>
>>  #include <linux/qemu_fw_cfg.h>
>>  #include <wchar.h>
>> @@ -363,7 +364,13 @@ static int fw_cfg_fs_probe(struct device *dev)
>>  	 */
>>  	fsdev->cdev = cdev_by_name(devpath_to_name(fsdev->backingstore));
>>  
>> -	return fw_cfg_fs_parse(sb);
>> +	ret = fw_cfg_fs_parse(sb);
>> +	if (ret)
>> +		goto free_data;
>> +
>> +	defaultenv_append_runtime_directory("/mnt/fw_cfg/by_name/opt/org.barebox.env");
> 
> I see the variables show up in /mnt/fw_cfg/by_name/opt/org.barebox.env/,
> but not in the environment.
> 
> I wonder how this is supposed to work. The fw_cfg fs is mounted when I
> first access /mnt/fw_cfg on the barebox command line, but at that time
> defaultenv_append_runtime_directory() has no effect anymore as
> defaultenv_load() is executed during startup.

I had the ramfb driver enabled and that mounted the FS for me...

> Should defaultenv_append_runtime_directory() be called in
> qemu_fw_cfg_fs_init() instead?

Possibly. I will check for v2.

Thanks for your feedback and testing,
Ahmad

> 
> Sascha
> 



