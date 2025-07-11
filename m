Delivery-date: Fri, 11 Jul 2025 15:51:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaEA3-00GPOx-1M
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 15:51:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaEA2-0003JN-P8
	for lore@pengutronix.de; Fri, 11 Jul 2025 15:51:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/jCxLb1lnNxvXCpIcPK5851lVc51QbEK8rsc3daumc=; b=4DvMW0P6rqg+qhSCfomnR4yt/O
	818iKIu+MGECyRtK+rZUK4/JYrmWxgGXv1iXL0dklX1mV3PLMrbFMl9EPydDdJUzWvuROnJKBQv5C
	Raoma2MKyDUcs7oKbOgYUuE5FPeMQKXnDDO2igdMRXy3J/Vty4ThXMv5Xp05ru3GivzXpczXsUZXI
	JBUSXyXj/q/1GSndGMQsAEffQIa1qFPers+dTWg/t2TWyBuMFlixLSuwj8fMu4O+DgLBgxUGvaVaR
	92nzRkqQ8aK2LFWQ2i6Wh8n1TFUvGEhZkxAZyeh5RWKbGftN4dKIZYxvckeqLPxyjdsW65sFscaDx
	iRKde1pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaE9O-0000000Ex9f-3KDo;
	Fri, 11 Jul 2025 13:50:54 +0000
Received: from mail-108-mta169.mxroute.com ([136.175.108.169])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaE2Q-0000000EwH0-35tA
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 13:43:44 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta169.mxroute.com (ZoneMTA) with ESMTPSA id 197f9ba34420008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 11 Jul 2025 13:43:39 +0000
X-Zone-Loop: f8de4426e1cf89a94ec5cf26d5d75ce122b22128611d
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:Content-Type:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=V/jCxLb1lnNxvXCpIcPK5851lVc51QbEK8rsc3daumc=; b=Xb+HNPcdaL3q97IrNZoF2kb2m/
	I3WnufXX4W39xe7cpSs7fmoaDMYX6nyPgWapjdGlM63aR8g3LN+vzkNLxmbm7qV0IWeFPPiTPuJ7H
	NZ4CsT9JPSDto5twrRrb3USsz2OP0ftONty3SowS1tm9w67em5hVI+IfICj2j11wjNgtS+IkcXEj/
	y5mHZlZwr45EmGLRdD9fg2rnjH8GzVp/84IdIt6ZAPwRldgZa/BbvsOGQNU6RtljvawOCNDi8aPJY
	o2GwtaoWTaaLAkMKuEUqZ54BeY7ZmsyjUWAyEGOuXghir7t/KzDueiexBPZ3M46XE9hCQTobL+tOE
	bquskbpA==;
MIME-Version: 1.0
Date: Fri, 11 Jul 2025 21:43:37 +0800
From: Bo Sun <bo@mboxify.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <f83fc1bb-0d12-450b-9a16-ca2e3d4678b8@pengutronix.de>
References: <20250711122729.108015-1-bo@mboxify.com>
 <f83fc1bb-0d12-450b-9a16-ca2e3d4678b8@pengutronix.de>
Message-ID: <e3e2e6a7b21effc1e4b38b9a8971ce5c@mboxify.com>
X-Sender: bo@mboxify.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_064342_905627_BDEA621C 
X-CRM114-Status: GOOD (  22.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] driver: clean up comment formatting and spacing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2025-07-11 20:39, Ahmad Fatoum wrote:
> Hello Bo,
> 
> On 7/11/25 14:27, Bo Sun wrote:
>> - Fixed a missing closing parenthesis in the comment for 
>> DEVICE_ID_SINGLE
>> - Cleaned up indentation and alignment of multi-line comments in 
>> struct device
>> - Removed redundant spaces in function pointer declarations
>> 
>> No functional changes.
>> 
>> Signed-off-by: Bo Sun <bo@mboxify.com>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
>> ---
>>  include/device.h | 18 ++++++++++--------
>>  include/driver.h |  8 ++++----
>>  2 files changed, 14 insertions(+), 12 deletions(-)
>> 
>> diff --git a/include/device.h b/include/device.h
>> index bc3a348e2e..97fa040365 100644
>> --- a/include/device.h
>> +++ b/include/device.h
>> @@ -37,7 +37,7 @@ struct device {
>>  	/*! This member is used to store device's unique name as
>>  	 *  obtained by calling dev_id(). Internal field, do not
>>  	 *  access it directly.
>> -	  */
>> +	 */
> 
> Would you like to use the occasion to switch this over to kerneldoc
> style? Kerneldoc is much more common in newer barebox code and would
> allow us using the same infrastructure in future.

Sure, will do.

Thanks,
Bo

> 
> Cheers,
> Ahmad
> 
>>  	char *unique_name;
>>  	/*! The id is used to uniquely identify a device in the system. The 
>> id
>>  	 * will show up under /dev/ as the device's name. Usually this is
>> @@ -58,14 +58,16 @@ struct device {
>>  		void *priv;
>>  		void *driver_data;
>>  	};
>> -	void *type_data;     /*! In case this device is a specific device, 
>> this pointer
>> -			      * points to the type specific device, i.e. eth_device
>> -			      */
>> +	/*! In case this device is a specific device, this pointer
>> +	 * points to the type specific device, i.e. eth_device
>> +	 */
>> +	void *type_data;
>> +
>>  	struct driver *driver; /*! The driver for this device */
>> 
>>  	struct list_head list;     /* The list of all devices */
>> -	struct list_head bus_list; /* our bus            */
>> -	struct list_head children; /* our children            */
>> +	struct list_head bus_list; /* our bus */
>> +	struct list_head children; /* our children */
>>  	struct list_head sibling;
>>  	struct list_head active;   /* The list of all devices which have a 
>> driver */
>> 
>> @@ -102,8 +104,8 @@ struct device {
>>  	 * For devices which take longer to probe this is called
>>  	 * when the driver should actually detect client devices
>>  	 */
>> -	int     (*detect) (struct device *);
>> -	void	(*rescan) (struct device *);
>> +	int (*detect)(struct device *);
>> +	void (*rescan)(struct device *);
>> 
>>  	/*
>>  	 * if a driver probe is deferred, this stores the last error
>> diff --git a/include/driver.h b/include/driver.h
>> index dd50a7aa3c..510a32186d 100644
>> --- a/include/driver.h
>> +++ b/include/driver.h
>> @@ -36,13 +36,13 @@ struct driver {
>>  	const char *name;
>> 
>>  	struct list_head list;
>> -	struct list_head bus_list; /* our bus            */
>> +	struct list_head bus_list; /* our bus */
>> 
>>  	/*! Called if an instance of a device is found */
>> -	int     (*probe) (struct device *);
>> +	int (*probe)(struct device *);
>> 
>>  	/*! Called if an instance of a device is gone. */
>> -	void     (*remove)(struct device *);
>> +	void (*remove)(struct device *);
>> 
>>  	struct bus_type *bus;
>> 
>> @@ -61,7 +61,7 @@ struct driver {
>> 
>>  /* dynamically assign the next free id */
>>  #define DEVICE_ID_DYNAMIC	-2
>> -/* do not use an id (only one device available */
>> +/* do not use an id (only one device available) */
>>  #define DEVICE_ID_SINGLE	-1
>> 
>>  /* Register devices and drivers.
>> 
>> 


