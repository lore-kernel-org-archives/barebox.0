Delivery-date: Mon, 28 Jun 2021 12:13:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxoGo-0005VZ-8r
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 12:13:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxoGn-0003hs-4r
	for lore@pengutronix.de; Mon, 28 Jun 2021 12:13:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OR2+zV+SwXDbKoqTV1A8ml/HTsu2UhRecR6Dr2aEPyk=; b=WtMnbP2pqe9E3wc2y22t1xHdrx
	lx85esVkwTsUwpYSxdza1UgOjBjj8W2UUeVwhm+Tcf5aUfuQnmSemXsQ/zQiwLJBTJW6nKg/cZERn
	l5BMk45Ljmbfu+jmidiNeg7cmkGDQQlk/zL8F86Kvia99Ut2GyB3j3aMgJa3M4W6emiZPb8fCT98F
	Ufp8ipDnSmyftxP28LKWx6S/0TGRZ2xU/4IDOnbOln7mpGaUMC2kDKddaTBUOenMSuZ3vBKpKVl0a
	mtIVHQ6sB8dZV/ue+1JAaj1W4+rE7rbpu7XE8JluUbw4dSWNYPCmS4akRcY8/0xfnwtUDBNfO/ais
	RgNZjZPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxoFV-007aJy-E4; Mon, 28 Jun 2021 10:12:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxoFO-007aHh-MV
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 10:12:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lxoFN-0003C9-H6; Mon, 28 Jun 2021 12:12:09 +0200
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20210628064036.25991-1-a.fatoum@pengutronix.de>
 <20210628064036.25991-3-a.fatoum@pengutronix.de>
 <bea1987e-8336-6593-0666-e263f4078c58@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <dd09dcde-f249-ff19-0266-fb2b0ce8058c@pengutronix.de>
Date: Mon, 28 Jun 2021 12:12:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <bea1987e-8336-6593-0666-e263f4078c58@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_031210_778100_27644B4B 
X-CRM114-Status: GOOD (  34.06  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] common: machine_id: deprecate machine_id_set_hashable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 28.06.21 11:50, Bastian Krause wrote:
> On 6/28/21 8:40 AM, Ahmad Fatoum wrote:
>> The Kconfig symbol already warns users that barebox updates
>> that add new instances of machine_id_set_hashable may cause the machine
>> ID to change making the future less useful. Recent changes allow the
>> board DT to identify a specific nvmem cell to use for supplying a machine
>> ID, making the old way of drivers providing machine IDs and possibly
>> overriding each other no longer necessary or recommended.
> 
> I cannot parse the first sentence of the commit message.

There should've been a comma at the end of the first line.

Cheers,
Ahmad

> 
> Regards,
> Bastian
> 
>>
>> Make this explicit by allowing the old code to be disabled. As we only
>> have a single user now and won't accept any new ones, we can remove the
>> warning about it possibly changing after update.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/Kconfig        | 18 +++++++++++-------
>>  common/machine_id.c   | 11 ++++++++---
>>  drivers/nvmem/Kconfig |  1 +
>>  drivers/nvmem/ocotp.c |  7 ++++++-
>>  include/machine_id.h  | 16 ----------------
>>  5 files changed, 26 insertions(+), 27 deletions(-)
>>  delete mode 100644 include/machine_id.h
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index a4a109f04f08..a2aa0b2568de 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -1069,13 +1069,11 @@ config MACHINE_ID
>>  	select NVMEM
>>  	help
>>  	  Compute a persistent machine-specific id and store it to $global.machine_id.
>> -	  The id is a hash of device-specific information added either via
>> -	  machine_id_set_hashable() or by hashing the nvmem cell referenced by the
>> -	  /chosen/barebox,machine-id device tree property.
>> -
>> -	  With machine_id_set_hashable(), the last call prior to the late initcall
>> -	  set_machine_id() willl be used to generate the machine id. This means
>> -	  updating barebox may change the machine id!
>> +	  The id is a hash of device-specific information. This information
>> +	  comes from the nvmem cell device tree node path described by the
>> +	  /chosen/barebox,machine-id-path property. As a special case, the i.MX6 OCOTP
>> +	  driver supplies the SoC UID as hashable for when /chosen/barebox,machine-id-path
>> +	  is not specified.
>>  
>>  	  global.bootm.provide_machine_id may be used to automatically set
>>  	  the linux.bootargs.machine_id global variable with a value of
>> @@ -1084,6 +1082,12 @@ config MACHINE_ID
>>  	  Note: if no hashable information is available no machine id will be passed
>>  	  to the kernel.
>>  
>> +config MACHINE_ID_LEGACY
>> +	bool
>> +	help
>> +	  Selected by i.MX OCOTP driver, so it can set the SoC UID as hashable.
>> +	  New platforms should use /chosen/barebox,machine-id-path instead.
>> +
>>  config SYSTEMD_OF_WATCHDOG
>>  	bool "inform devicetree-enabled kernel of used watchdog"
>>  	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
>> diff --git a/common/machine_id.c b/common/machine_id.c
>> index fd2f0888a6cd..8303c0b7aa87 100644
>> --- a/common/machine_id.c
>> +++ b/common/machine_id.c
>> @@ -9,23 +9,24 @@
>>  #include <globalvar.h>
>>  #include <magicvar.h>
>>  #include <crypto/sha.h>
>> -#include <machine_id.h>
>>  #include <linux/err.h>
>>  #include <linux/nvmem-consumer.h>
>>  #include <of.h>
>>  
>>  #define MACHINE_ID_LENGTH 32
>>  
>> +#ifdef CONFIG_MACHINE_ID_LEGACY
>>  static void *__machine_id_hashable;
>>  static size_t __machine_id_hashable_length;
>>  
>> -
>> +/* Shouldn't be called from new code */
>> +void machine_id_set_hashable(const void *hashable, size_t len);
>>  void machine_id_set_hashable(const void *hashable, size_t len)
>>  {
>> -
>>  	__machine_id_hashable = xmemdup(hashable, len);
>>  	__machine_id_hashable_length = len;
>>  }
>> +#endif
>>  
>>  static const void *machine_id_get_hashable(size_t *len)
>>  {
>> @@ -52,8 +53,12 @@ static const void *machine_id_get_hashable(size_t *len)
>>  	return ret;
>>  
>>  no_cell:
>> +#ifdef CONFIG_MACHINE_ID_LEGACY
>>  	*len = __machine_id_hashable_length;
>>  	return __machine_id_hashable;
>> +#else
>> +	return NULL;
>> +#endif
>>  }
>>  
>>  static int machine_id_set_globalvar(void)
>> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
>> index 3781f7a839fc..08a5765573a8 100644
>> --- a/drivers/nvmem/Kconfig
>> +++ b/drivers/nvmem/Kconfig
>> @@ -25,6 +25,7 @@ config NVMEM_SNVS_LPGPR
>>  config IMX_OCOTP
>>  	tristate "i.MX6 On Chip OTP controller"
>>  	depends on ARCH_IMX6 || ARCH_VF610 || ARCH_IMX8M || ARCH_IMX7
>> +	select MACHINE_ID_LEGACY
>>  	depends on OFDEVICE
>>  	help
>>  	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
>> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
>> index b2fad3c68770..0b10e52a86ba 100644
>> --- a/drivers/nvmem/ocotp.c
>> +++ b/drivers/nvmem/ocotp.c
>> @@ -29,7 +29,6 @@
>>  #include <regmap.h>
>>  #include <linux/clk.h>
>>  #include <mach/ocotp.h>
>> -#include <machine_id.h>
>>  #include <mach/ocotp-fusemap.h>
>>  #include <linux/nvmem-provider.h>
>>  
>> @@ -689,6 +688,7 @@ static int imx_ocotp_read(void *ctx, unsigned offset, void *val, size_t bytes)
>>  
>>  static void imx_ocotp_set_unique_machine_id(void)
>>  {
>> +	extern void machine_id_set_hashable(const void *hashable, size_t len);
>>  	uint32_t unique_id_parts[UNIQUE_ID_NUM];
>>  	int i;
>>  
>> @@ -785,6 +785,11 @@ static int imx_ocotp_probe(struct device_d *dev)
>>  				  ethaddr->value, ethaddr);
>>  	}
>>  
>> +	/* Special case: new machine id providers should provide a nvmem cell
>> +	 * and reference its path via /chosen/barebox,machine-id-path.
>> +	 * For i.MX, we support the legacy way of the driver supplying the
>> +	 * hash instead
>> +	 */
>>  	if (IS_ENABLED(CONFIG_MACHINE_ID))
>>  		imx_ocotp_set_unique_machine_id();
>>  
>> diff --git a/include/machine_id.h b/include/machine_id.h
>> deleted file mode 100644
>> index 31d5e0bb2851..000000000000
>> --- a/include/machine_id.h
>> +++ /dev/null
>> @@ -1,16 +0,0 @@
>> -#ifndef __MACHINE_ID_H__
>> -#define __MACHINE_ID_H__
>> -
>> -#if IS_ENABLED(CONFIG_MACHINE_ID)
>> -
>> -void machine_id_set_hashable(const void *hashable, size_t len);
>> -
>> -#else
>> -
>> -static inline void machine_id_set_hashable(const void *hashable, size_t len)
>> -{
>> -}
>> -
>> -#endif /* CONFIG_MACHINE_ID */
>> -
>> -#endif  /* __MACHINE_ID_H__ */
>>
> 
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

