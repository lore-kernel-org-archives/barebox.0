Delivery-date: Mon, 12 Apr 2021 09:56:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVrQZ-0003mV-8O
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:56:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVrQY-0001pt-5K
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:56:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cf7bi4Vq8KwRPVUgZI9gxyy+h7UkcjVKSKu6mtcd2uQ=; b=CnD58eRtLUjb49oPQF6TqCcjZ
	I0S6uwJQ3aU+e71jsEA8fRsZkej5ey/SD4hVIvuKWPOXdTiNpT1lvbKUzfV4KGIv7p27Q7+NRC6N5
	PuWJfOKcOnsAaMCGaHs1Z3CjoagoEwKSIIoXOk838mY3yPMOBah/omqef+AkH82QykhqGMkNV1zlV
	d06DySOwLSOnO+VQGHFvjsMFXJRHgwemYIBFgAHNb8bkB8y4f/hydbL+VpdPK1UeXqK9pqdlmNwKy
	oTFCyZcXgENgUC1e57qUoU3D8v3ZJ03doVzMRBTfvopUz85QZntPLMriOQqo0p+xVSlRdiNkm3eRK
	pQW8taPsA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVrPU-00626T-Oi; Mon, 12 Apr 2021 07:55:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrOx-0061zU-Pv
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:54:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=nDuJMhGQc449RS/Uql7b30ONTgpZG44XcmIGOpAGLKE=; b=Ce1ZeE/mpoF2OkDce8JLXbs22A
 APIo8/Y9rAyCgDhDz2UBKkys57njCIhQu9zPSgGRTf2iATIzb2w18c3sD03a6Ho8ndtdyBucKpibx
 YrPKZg+pblVJGa0ljc1hawuhb/2iOFzLKrVZxcMLm2a9RCoeRb3DNViGspNn9cBuPt4md7qbF55js
 eRbgIpN1LtPwTZISv00qok7yf+rfpuN+1avzvsV8RqkEFhPL7VuO9CN3H+4mF3dSt/hkiw90PZMZn
 j0tsISMxa3vD1o11xnfc+hSobSc452isHuQ+2L5DFIZdybEYJhqYvdIv+WIL3mNnw6bLtTmOQnDTh
 yJxMESew==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrOu-005wkd-UF
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:54:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lVrOr-0001Kd-I0; Mon, 12 Apr 2021 09:54:25 +0200
To: Roland Hieber <rhi@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20210410104505.2076790-1-ahmad@a3f.at>
 <20210411203947.3296981-1-ahmad@a3f.at>
 <20210412074500.dgi2vz7ptkzmrsrk@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <550a048a-f6e5-d4c0-340a-d7c743f04edf@pengutronix.de>
Date: Mon, 12 Apr 2021 09:54:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210412074500.dgi2vz7ptkzmrsrk@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_005429_002430_DF5CCA55 
X-CRM114-Status: GOOD (  21.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! common: add option for shipping KCONFIG_CONFIG as
 /env/data/config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 12.04.21 09:45, Roland Hieber wrote:
> On Sun, Apr 11, 2021 at 10:39:47PM +0200, Ahmad Fatoum wrote:
>> Doesn't make sense to have this without DEFAULT_ENVIRONMENT_GENERIC_NEW
>> support. Similar options depend on this as well.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> 
> Thanks, this is useful!
> 
> For both:
> Tested-by: Roland Hieber <rhi@pengutronix.de>

Thanks for testing. If you like it, you can check
https://lore.pengutronix.de/barebox/20210412071651.8769-13-a.fatoum@pengutronix.de/T/#u
to see it in action.

It's used to conditionally skip tests if a config option isn't available
(with a fallback to the build-time .config).

Cheers,
Ahmad

> 
>> ---
>>  common/Kconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index 2872c80dbf13..bddf802d3bb4 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -943,6 +943,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
>>  
>>  config DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG
>>  	bool "Ship .config as /env/data/config"
>> +	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
>>  	help
>>  	  This option embeds the used barebox Kconfig .config file into the
>>  	  environment as /env/data/config. This will increases barebox image
>> -- 
>> 2.31.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

