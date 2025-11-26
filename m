Delivery-date: Wed, 26 Nov 2025 12:33:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vODmT-0053jb-0Z
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 12:33:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vODmS-0001tY-G8
	for lore@pengutronix.de; Wed, 26 Nov 2025 12:33:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cVmSZJcVgQ+ddiWRsp5gAIi6C1//hZVCrf8Nv0/qHNk=; b=t6Q4ZlMsGAsdfR77jYu3iNrAAp
	Nu8yvWXC0nt1PbVln4CW2S62FYcNHtBqYPYTCPZ5p/I2ZABewtOnyFd0QA2CB02sjqPKJ092Rs1+y
	SUBVJa2a76fn2HnXR703OLy1rva2H70tH7bFWqvoNt8yMbigSXWT/hGg3xXcmFiGuThV9fPsDGTVL
	Lygap1b2qQYTncUC0wu9T7Cf3KLO14GryxdNyqRRsN9Se3Jy81LMUInrA3rHt8d+YbQJIuJ72wyPB
	IKdndt4gXWl8AFwWqbGkTjw0YhhDeiV/q7MdY/+ji8J32zOdkfMCJv9iDmHXEzoofZvMKIz1sAgyN
	ZB/BFALg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODm1-0000000Euw8-3med;
	Wed, 26 Nov 2025 11:33:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODly-0000000EuvS-3N0q
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 11:33:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vODlx-0001oG-7N; Wed, 26 Nov 2025 12:33:21 +0100
Message-ID: <9c9ad61d-295f-4011-9418-dc2ed8da16a2@pengutronix.de>
Date: Wed, 26 Nov 2025 12:33:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
 <20251126064710.3721039-1-f.pflug@pengutronix.de>
 <20251126064710.3721039-4-f.pflug@pengutronix.de>
 <4b5b8672-ce9b-48d4-992b-e6db018d55b4@pengutronix.de>
 <53f649d5cc950aaaadbfae828244e872b3d0688c.camel@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <53f649d5cc950aaaadbfae828244e872b3d0688c.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_033322_845346_D4143B03 
X-CRM114-Status: GOOD (  31.30  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] bootm: use new api to get kernel command line params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/26/25 12:29 PM, Fabian Pflug wrote:
> Hey :)
> 
> On Wed, 2025-11-26 at 11:25 +0100, Ahmad Fatoum wrote:
>>
>> On 11/26/25 7:42 AM, Fabian Pflug wrote:
>>> Getting root device adn root kernel options seperatily any combining
>>
>> device and root kernel options seperatly and combining
>>
>>> them in this function instead of getting the full string from the helper
>>> functions. This is in preperation for replacing the root= string in the
>>
>> preparation
>>
>>> kernel commandline with something defined during runtime.
>>>
>>> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>>> ---
>>>  common/bootm.c | 34 ++++++++++++++++++++--------------
>>>  1 file changed, 20 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/common/bootm.c b/common/bootm.c
>>> index 17792b2a1d..5d7dc00e3e 100644
>>> --- a/common/bootm.c
>>> +++ b/common/bootm.c
>>> @@ -4,6 +4,7 @@
>>>  #include <bootm.h>
>>>  #include <bootm-overrides.h>
>>>  #include <fs.h>
>>> +#include <fcntl.h>
>>>  #include <malloc.h>
>>>  #include <memory.h>
>>>  #include <block.h>
>>> @@ -841,33 +842,38 @@ int bootm_boot(struct bootm_data *bootm_data)
>>>  	}
>>>  
>>>  	if (bootm_data->appendroot) {
>>> -		char *rootarg;
>>> +		char *root;
>>> +		char *rootopts;
>>>  
>>>  		if (bootm_data->root_dev) {
>>>  			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
>>>  			struct cdev *root_cdev = cdev_open_by_name(root_dev_name, O_RDONLY);
>>>  
>>> -			rootarg = cdev_get_linux_rootarg(root_cdev);
>>> -			if (!rootarg) {
>>> -				rootarg = ERR_PTR(-EINVAL);
>>> -
>>> -				if (!root_cdev)
>>> -					pr_err("no cdev found for %s, cannot set root= option\n",
>>> -						root_dev_name);
>>> -				else if (!root_cdev->partuuid[0])
>>> -					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
>>> -						root_dev_name);
>>
>> This warning is useful, because it's very confusing otherwise when a MBR
>> disk image is created without a NT signature.
>>
>>> -			}
>>> +			cdev_get_linux_root_and_opts(root_cdev, &root, &rootopts);
>>>  
>>>  			if (root_cdev)
>>>  				cdev_close(root_cdev);
>>> +			else
>>> +				pr_err("no cdev found for %s, cannot set root= option\n", root_dev_name);
>>>  		} else {
>>> -			rootarg = path_get_linux_rootarg(data->os_file);
>>
>> path_get_linux_rootarg() is stale now right? Can you squash its removal
>> into the patch that gets rid of linux.bootargs?
> 
> Then we would have a case, where the function is used, but not available anymore resulting in an unbuildable system,
> which I would like to avoid. I can remove it in an extra commit after this one.

You will have of course to change the users not to call it anymore.
If you add a later commit removing it, you still have an intermittent
breakage that would trip up a bisect or am I missing something?

> 
>>
>>> +			struct fs_device *fsdev = get_fsdevice_by_path(AT_FDCWD, data->os_file);
>>> +			if(fsdev)
>>> +				fsdev_get_linux_root_options(fsdev, &root, &rootopts);
>>> +			else
>>> +				pr_err("no fsdevice under path: %s\n", data->os_file);
>>>  		}
>>>  
>>> -		if (IS_ERR(rootarg)) {
>>> +		if (!root) {
>>>  			pr_err("Failed to append kernel cmdline parameter 'root='\n");
>>>  		} else {
>>> +			char *rootarg;
>>> +			if(rootopts) {
>>> +				rootarg = xasprintf("root=%s %s", root, rootopts);
>>> +				free(rootopts);
>>> +			} else {
>>> +				rootarg = xasprintf("root=%s", root);
>>> +			}
>>
>> I wonder if we should add a helper into a header that does this, given
>> how many times this is repeated...
>>
>> char *format_root_bootarg(char *root, char *rootopts);
>>
>> which consumes (and frees) two pointers and returns a new buffer..
> 
> Good thinking. But where do we add it?
> * fs.h
> * block.h
> * bootargs.h

bootargs.h sounds suitable.

> 
> And also, do we add a third parameter? because I will re replaced in the next commit with "%s=%s %s"

Noticed that too when I read that far. Ye, three arguments sounds good
to me.

> And since you proposed to get rid of path_get_linux_rootarg it will be used with two parameters in one place
> (cdev_get_linux_rootarg) and with three at the other. (bootm_boot)

Can't follow, but I might when I see the code :-)

Cheers,
Ahmad

> 
> Kind regard
> Fabian
> 
> 
>>
>> Cheers,
>> Ahmad
>>
>>> +			free(root);
>>>  			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
>>>  			globalvar_add_simple("linux.bootargs.bootm.appendroot",
>>>  					     rootarg);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



