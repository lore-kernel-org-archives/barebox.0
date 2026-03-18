Delivery-date: Wed, 18 Mar 2026 10:17:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n2F-00284s-0i
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 10:17:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n2E-0003rs-4b
	for lore@pengutronix.de; Wed, 18 Mar 2026 10:17:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5k0Y7SYgw32pkLmwcjFgT3UDSc7GvA9+AJc3M3tL9rY=; b=09YqsT3VZzXr9jXhynD1AQQEVr
	gdZUtm6RW1XJwh++s4z8nexSMm86rqv1Jl7+jl26eLcwTba5z9EiV8L5GUox3djPcdtmFXCQ08VUl
	/ArXomMZTEV20DlyYdG5eZ/Bozv69rBAW4F2dp1C6/uQ0//yaAIxm7sis3L5mu1AEMtk0SuZafbLy
	5vwUcngiTcgWcDwuCuMyYmjayvv/G6LzUoqaTGRuzxX6hOqxhhfxj3qQ+XTfFWkKADU3fExd274Lg
	kle+bHh78e8UTIigD1/LsZbxjVeI7Dik3vbKeG5t1JTdYVXbKfCQPq7Wuea7s5YAX1Kt3d1lewqNE
	UD1j+acw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n1j-000000087HZ-1Tw9;
	Wed, 18 Mar 2026 09:17:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n1h-000000087Gx-0sRs
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 09:17:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2n1f-0003mg-Ej; Wed, 18 Mar 2026 10:17:15 +0100
Message-ID: <6f75198b-eb32-4780-85f7-30e0004a7c93@pengutronix.de>
Date: Wed, 18 Mar 2026 10:17:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, "Claude Opus 4.5" <noreply@anthropic.com>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
 <20260312144505.2159816-11-a.fatoum@pengutronix.de>
 <abpp-XThCk_UcyCC@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <abpp-XThCk_UcyCC@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_021717_411942_1C0B52CC 
X-CRM114-Status: GOOD (  33.85  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/16] bootm: implement plain and FIT bootm.image override
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/18/26 10:01, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Thu, Mar 12, 2026 at 03:44:54PM +0100, Ahmad Fatoum wrote:
>> Add support for overriding the boot image via bootm.image when using
>> either plain files or FIT images. The override behavior depends on the
>> file types involved:
>>
>> - If the override is not a FIT image, it replaces only the OS loadable,
>>   regardless of whether the original was a FIT image or not.
>>
>> - If the override is a FIT image, it replaces the current OS, whether
>>   it's a FIT or not.
> 
> What's the "current OS" here? Is it just the kernel or dtb/initrd as
> well?

Sorry, that's confusingly written, A FIT replaces everything in the
selected configuration. So if it has kernel + DT, it overrides those and
leaves only the original initramfs.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>> This allows developers to use devboot scripts to redirect FIT image
>> loading to alternate locations (e.g., network) while preserving the
>> configuration selection from the original boot entry.
>>
>> Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/boot.c           |   2 +-
>>  common/bootm-fit.c        |  11 +++-
>>  common/bootm-overrides.c  | 119 +++++++++++++++++++++++++++++++++++++-
>>  common/bootm.c            |   4 +-
>>  include/bootm-fit.h       |   4 +-
>>  include/bootm-overrides.h |   3 +
>>  include/bootm.h           |   2 +
>>  7 files changed, 134 insertions(+), 11 deletions(-)
>>
>> diff --git a/commands/boot.c b/commands/boot.c
>> index 555667ee098c..04bb9eb9186f 100644
>> --- a/commands/boot.c
>> +++ b/commands/boot.c
>> @@ -44,7 +44,7 @@ static int boot_add_override(struct bootm_overrides *overrides, char *var)
>>  	if (!strcmp(var, "bootm.image")) {
>>  		if (isempty(val))
>>  			return -EINVAL;
>> -		return -ENOSYS;
>> +		overrides->os_file = val;
>>  	} else if (!strcmp(var, "bootm.oftree")) {
>>  		overrides->oftree_file = val;
>>  	} else if (!strcmp(var, "bootm.initrd")) {
>> diff --git a/common/bootm-fit.c b/common/bootm-fit.c
>> index 5b110ad2f19e..995bd7181223 100644
>> --- a/common/bootm-fit.c
>> +++ b/common/bootm-fit.c
>> @@ -4,6 +4,7 @@
>>  #include <image-fit.h>
>>  #include <bootm-fit.h>
>>  #include <memory.h>
>> +#include <string.h>
>>  #include <zero_page.h>
>>  #include <filetype.h>
>>  #include <fs.h>
>> @@ -143,7 +144,7 @@ static enum filetype bootm_fit_update_os_header(struct image_data *data)
>>  	return os_type;
>>  }
>>  
>> -int bootm_open_fit(struct image_data *data)
>> +int bootm_open_fit(struct image_data *data, bool override)
>>  {
>>  	struct fit_handle *fit;
>>  	void *fit_config;
>> @@ -164,8 +165,12 @@ int bootm_open_fit(struct image_data *data)
>>  	}
>>  
>>  	loadable_from_fit_os(data, fit, fit_config);
>> -	loadable_from_fit_initrd(data, fit, fit_config);
>> -	loadable_from_fit_oftree(data, fit, fit_config);
>> +	if (override)
>> +		data->is_override.os = true;
>> +	if (loadable_from_fit_initrd(data, fit, fit_config) && override)
>> +		data->is_override.initrd = true;
>> +	if (loadable_from_fit_oftree(data, fit, fit_config) && override)
>> +		data->is_override.oftree = true;
>>  	loadable_from_fit_tee(data, fit, fit_config);
>>  
>>  	data->kernel_type = bootm_fit_update_os_header(data);
>> diff --git a/common/bootm-overrides.c b/common/bootm-overrides.c
>> index 59ca90a58684..8c71ceb5f80d 100644
>> --- a/common/bootm-overrides.c
>> +++ b/common/bootm-overrides.c
>> @@ -2,14 +2,118 @@
>>  
>>  #include <bootm.h>
>>  #include <bootm-overrides.h>
>> +#include <bootm-fit.h>
>> +#include <libfile.h>
>> +#include <linux/pagemap.h>
>> +
>> +/**
>> + * bootm_apply_image_override - apply bootm.image override
>> + * @data: image data context
>> + * @override: override path (may include @config suffix for FIT)
>> + *
>> + * Applies a bootm.image override according to these rules:
>> + * - If the override is not a FIT image, it replaces only data->os.
>> + * - If the override is a FIT image, it is re-opened via bootm_open_fit()
>> + *   using the default configuration or the @config suffix if given.
>> + *
>> + * Return: 0 on success, negative errno on failure
>> + */
>> +static int bootm_apply_image_override(struct image_data *data,
>> +				      const char *override)
>> +{
>> +	char *override_file, *override_part;
>> +	void *override_header = NULL;
>> +	int ret;
>> +
>> +	ret = bootm_image_name_and_part(override, &override_file, &override_part);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* Read header to detect file type */
>> +	ret = file_read_and_detect_boot_image_type(override_file, &override_header);
>> +	if (ret < 0) {
>> +		free(override_file);
>> +		return ret;
>> +	}
>> +
>> +	data->image_type = ret;
>> +
>> +	/*
>> +	 * bootm_image_name_and_part() returns os_part pointing inside the
>> +	 * os_file allocation, so we must NULLify os_part before freeing
>> +	 * os_file to avoid a use-after-free.
>> +	 */
>> +	data->os_part = NULL;
>> +	free(data->os_file);
>> +	data->os_file = override_file;
>> +	if (override_part)
>> +		data->os_part = override_part;
>> +
>> +	/* Update the detected type for the handler */
>> +	free(data->os_header);
>> +	data->os_header = override_header;
>> +
>> +	switch (data->image_type) {
>> +	case filetype_fit:
>> +		/* Restore, so bootm_open_fit looks for them in the new FIT */
>> +		data->os_address = data->os_address_hint;
>> +		data->os_entry = data->os_entry_hint;
>> +
>> +		/* Re-open configuration and collect loadables */
>> +		return bootm_open_fit(data, true);
>> +	default:
>> +		loadable_release(&data->os);
>> +		data->os = loadable_from_file(override_file, LOADABLE_KERNEL);
>> +		if (IS_ERR(data->os))
>> +			return PTR_ERR(data->os);
>> +
>> +		data->kernel_type = data->image_type;
>> +		data->is_override.os = true;
>> +
>> +		if (file_is_compressed_file(data->kernel_type))
>> +			return bootm_open_os_compressed(data);
>> +
>> +		return 0;
>> +	}
>> +}
>> +
>> +static void report_active_override(const char *type_str, struct loadable *l)
>> +{
>> +	struct loadable *lc;
>> +	char *buf = NULL;
>> +
>> +	if (!l) {
>> +		pr_notice("[bootm override active] removed %s\n", type_str);
>> +		return;
>> +	}
>> +
>> +	buf = xrasprintf(buf, "[bootm override active] replacement %s: %s",
>> +		      type_str, l->name);
>> +
>> +	list_for_each_entry(lc, &l->chained_loadables, list)
>> +		buf = xrasprintf(buf, ", %s", lc->name);
>> +
>> +	pr_notice("%s\n", buf);
>> +	free(buf);
>> +}
>> +
>> +static void report_active_overrides(const struct image_data *data)
>> +{
>> +	if (data->is_override.os)
>> +		report_active_override("OS", data->os);
>> +	if (data->is_override.initrd)
>> +		report_active_override("initrd", data->initrd);
>> +	if (data->is_override.oftree)
>> +		report_active_override("FDT", data->oftree);
>> +}
>>  
>>  /**
>>   * bootm_apply_overrides - apply overrides
>>   * @data: image data context
>>   * @overrides: overrides to apply
>>   *
>> - * Applies bootm.initrd and bootm.oftree overrides by translating
>> - * them into file-based loadables.
>> + * Applies bootm.image, bootm.initrd, and bootm.oftree overrides by translating
>> + * them into file-based loadables or FIT image replacements.
>>   *
>>   * Context: Called during boot preparation
>>   * Return: 0 on success, negative error code otherwise
>> @@ -17,9 +121,17 @@
>>  int bootm_apply_overrides(struct image_data *data,
>>  			  const struct bootm_overrides *overrides)
>>  {
>> +	int ret;
>> +
>>  	if (bootm_signed_images_are_forced())
>>  		return 0;
>>  
>> +	if (nonempty(overrides->os_file)) {
>> +		ret = bootm_apply_image_override(data, overrides->os_file);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>  	if (IS_ENABLED(CONFIG_BOOTM_INITRD) && overrides->initrd_file) {
>>  		/* loadables_from_files() will set data->initrd on empty initrd_file */
>>  		int ret = loadables_from_files(&data->initrd, overrides->initrd_file, ":",
>> @@ -42,6 +154,7 @@ int bootm_apply_overrides(struct image_data *data,
>>  		data->is_override.oftree = true;
>>  	}
>>  
>> +	report_active_overrides(data);
>> +
>>  	return 0;
>>  }
>> -
>> diff --git a/common/bootm.c b/common/bootm.c
>> index ddc656fb34c8..ed79c20c0972 100644
>> --- a/common/bootm.c
>> +++ b/common/bootm.c
>> @@ -400,7 +400,7 @@ static void bootm_print_info(struct image_data *data)
>>  		printf("OS image not yet relocated\n");
>>  }
>>  
>> -static int bootm_image_name_and_part(const char *name, char **filename, char **part)
>> +int bootm_image_name_and_part(const char *name, char **filename, char **part)
>>  {
>>  	char *at, *ret;
>>  
>> @@ -570,7 +570,7 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
>>  
>>  	switch (data->image_type) {
>>  	case filetype_fit:
>> -		ret = bootm_open_fit(data);
>> +		ret = bootm_open_fit(data, false);
>>  		break;
>>  	case filetype_uimage:
>>  		ret = bootm_open_uimage(data);
>> diff --git a/include/bootm-fit.h b/include/bootm-fit.h
>> index 05f4f5acfe9a..972d9e4fac8e 100644
>> --- a/include/bootm-fit.h
>> +++ b/include/bootm-fit.h
>> @@ -10,11 +10,11 @@ struct image_data;
>>  
>>  #ifdef CONFIG_BOOTM_FITIMAGE
>>  
>> -int bootm_open_fit(struct image_data *data);
>> +int bootm_open_fit(struct image_data *data, bool override);
>>  
>>  #else
>>  
>> -static inline int bootm_open_fit(struct image_data *data)
>> +static inline int bootm_open_fit(struct image_data *data, bool override)
>>  {
>>  	return -ENOSYS;
>>  }
>> diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
>> index a52a498b97a2..9b133928a923 100644
>> --- a/include/bootm-overrides.h
>> +++ b/include/bootm-overrides.h
>> @@ -3,6 +3,7 @@
>>  #define __BOOTM_OVERRIDES_H
>>  
>>  struct bootm_overrides {
>> +	const char *os_file;
>>  	const char *oftree_file;
>>  	const char *initrd_file;
>>  };
>> @@ -13,6 +14,8 @@ struct image_data;
>>  static inline void bootm_merge_overrides(struct bootm_overrides *dst,
>>  					 const struct bootm_overrides *src)
>>  {
>> +	if (src->os_file)
>> +		dst->os_file = src->os_file;
>>  	if (src->oftree_file)
>>  		dst->oftree_file = src->oftree_file;
>>  	if (src->initrd_file)
>> diff --git a/include/bootm.h b/include/bootm.h
>> index 570ac4d289f2..85199fc702b4 100644
>> --- a/include/bootm.h
>> +++ b/include/bootm.h
>> @@ -53,6 +53,8 @@ struct bootm_data {
>>  	unsigned long os_entry;
>>  };
>>  
>> +int bootm_image_name_and_part(const char *name, char **filename, char **part);
>> +
>>  int bootm_boot(const struct bootm_data *data);
>>  
>>  struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data);
>> -- 
>> 2.47.3
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


