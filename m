Delivery-date: Sun, 21 Aug 2022 15:31:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPl2i-006K0q-BI
	for lore@lore.pengutronix.de; Sun, 21 Aug 2022 15:31:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPl2f-0005dU-S6
	for lore@pengutronix.de; Sun, 21 Aug 2022 15:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3lnTXEpldmH1BAGsGk04U+NsZT2a3xuY2o973RLOpN4=; b=zZ6ujfg/8R48cq+K6GkKSRlNlS
	oR0v/Am57ARMSBarso4P/Yt60kwDfGsu/RJ+95tNJERZQTpzMC7eIL2VTSwj3kd2uw3o3+4Orfe1c
	3vuZGqA4r4LmmEMjN8EoPiRO21uC+5khsl/mkYZyL0EVZk/en5N8gBZHRn6fetnLqYM9p5goGLuqF
	fCL+/e1Q+veVaU2Pp9W5naZc/AuZ/0//MmJ8XNYbrOpmSSDlc/7nI/xScgPk7JurRLiuseKeGwYPE
	WsYfHX9LG1qk2N4M8mvfg1WKXLUq1JpzsUpHe7fJnwLnEMD42fQPNNbHSLTG3pkpcNzqceXPY0iLq
	YCm3wd+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPl1G-00AfvM-RF; Sun, 21 Aug 2022 13:29:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPl18-00AfpN-PN
	for barebox@lists.infradead.org; Sun, 21 Aug 2022 13:29:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oPl13-0005IN-9F; Sun, 21 Aug 2022 15:29:25 +0200
Message-ID: <fcc6251e-f404-bd6a-78e3-62be7912c996@pengutronix.de>
Date: Sun, 21 Aug 2022 15:29:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
 <20220818050447.2072932-2-a.fatoum@pengutronix.de>
 <20220820190707.85c705e47fdca88824d2fcbe@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220820190707.85c705e47fdca88824d2fcbe@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_062931_016166_788D52E6 
X-CRM114-Status: GOOD (  27.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/4] pbl: export pbl_barebox_verify
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

On 20.08.22 18:07, Antony Pavlov wrote:
> On Thu, 18 Aug 2022 07:04:45 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi!
> 
> It looks like the commit 5dba4f6b3d3 ("pbl: export pbl_barebox_verify") from the next branch
> breaks the socfpga-xload-2_defconfig config build.

Thanks. Just sent a fixup.

> 
> Here are the error messages:
> 
> crypto/digest.c:78:5: warning: no previous prototype for ‘digest_algo_register’ [-Wmissing-prototypes]
>    78 | int digest_algo_register(struct digest_algo *d)
>       |     ^~~~~~~~~~~~~~~~~~~~
> crypto/digest.c:98:6: warning: no previous prototype for ‘digest_algo_unregister’ [-Wmissing-prototypes]
>    98 | void digest_algo_unregister(struct digest_algo *d)
>       |      ^~~~~~~~~~~~~~~~~~~~~~
> crypto/digest.c:150:6: warning: no previous prototype for ‘digest_algo_prints’ [-Wmissing-prototypes]
>   150 | void digest_algo_prints(const char *prefix)
>       |      ^~~~~~~~~~~~~~~~~~
> crypto/digest.c:162:16: error: redefinition of ‘digest_alloc’
>   162 | struct digest *digest_alloc(const char *name)
>       |                ^~~~~~~~~~~~
> In file included from crypto/digest.c:17:
> include/digest.h:99:30: note: previous definition of ‘digest_alloc’ with type ‘struct digest *(const char *)’
>    99 | static inline struct digest *digest_alloc(const char *name)
>       |                              ^~~~~~~~~~~~
> crypto/digest.c:183:16: error: redefinition of ‘digest_alloc_by_algo’
>   183 | struct digest *digest_alloc_by_algo(enum hash_algo hash_algo)
>       |                ^~~~~~~~~~~~~~~~~~~~
> include/digest.h:104:30: note: previous definition of ‘digest_alloc_by_algo’ with type ‘struct digest *(enum hash_algo)’
>   104 | static inline struct digest *digest_alloc_by_algo(enum hash_algo algo)
>       |                              ^~~~~~~~~~~~~~~~~~~~
> crypto/digest.c:204:6: error: redefinition of ‘digest_free’
>   204 | void digest_free(struct digest *d)
>       |      ^~~~~~~~~~~
> include/digest.h:109:20: note: previous definition of ‘digest_free’ with type ‘void(struct digest *)’
>   109 | static inline void digest_free(struct digest *d)
>       |                    ^~~~~~~~~~~
> crypto/digest.c:259:5: warning: no previous prototype for ‘digest_file_window’ [-Wmissing-prototypes]
>   259 | int digest_file_window(struct digest *d, const char *filename,
>       |     ^~~~~~~~~~~~~~~~~~
> crypto/digest.c:291:5: warning: no previous prototype for ‘digest_file’ [-Wmissing-prototypes]
>   291 | int digest_file(struct digest *d, const char *filename,
>       |     ^~~~~~~~~~~
> crypto/digest.c:304:5: warning: no previous prototype for ‘digest_file_by_name’ [-Wmissing-prototypes]
>   304 | int digest_file_by_name(const char *algo, const char *filename,
>       |     ^~~~~~~~~~~~~~~~~~~
> make[1]: *** [/home/antony/barebox/scripts/Makefile.build:137: crypto/digest.pbl.o] Error 1
> make: *** [Makefile:953: crypto] Error 2
> make: *** Waiting for unfinished jobs....
> 
> 
> 
> 
>> There's no downside to always build the digest verification code in PBL
>> and export pbl_barebox_verify to access it. This allows board code to
>> use the function for verifying other firmware blobs and
>> CONFIG_PBL_VERIFY_PIGGY=y will remain to enable the verification at
>> barebox proper extraction time. Code not using it will have the function
>> sections garbage collected by the linker, so no functional change.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v1 -> v2:
>>   - no change
>> ---
>>  crypto/Makefile | 3 +--
>>  include/pbl.h   | 3 +++
>>  pbl/decomp.c    | 6 +++---
>>  3 files changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/crypto/Makefile b/crypto/Makefile
>> index 762d7e543be4..22035d4f69ee 100644
>> --- a/crypto/Makefile
>> +++ b/crypto/Makefile
>> @@ -10,8 +10,7 @@ obj-$(CONFIG_DIGEST_MD5_GENERIC)	+= md5.o
>>  obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
>>  obj-$(CONFIG_DIGEST_SHA224_GENERIC)	+= sha2.o
>>  obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
>> -pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= sha2.o
>> -pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= digest.o
>> +pbl-y					+= sha2.o digest.o
>>  obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
>>  obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
>>  obj-y	+= memneq.o
>> diff --git a/include/pbl.h b/include/pbl.h
>> index 0dc23c72dcf5..7dc4fa309257 100644
>> --- a/include/pbl.h
>> +++ b/include/pbl.h
>> @@ -30,4 +30,7 @@ const void *
>>  fdt_device_get_match_data(const void *fdt, const char *nodepath,
>>  			  const struct fdt_device_id ids[]);
>>  
>> +int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>> +		       const void *hash, unsigned int hash_len);
>> +
>>  #endif /* __PBL_H__ */
>> diff --git a/pbl/decomp.c b/pbl/decomp.c
>> index 1e0ef81ada00..553895bac5e8 100644
>> --- a/pbl/decomp.c
>> +++ b/pbl/decomp.c
>> @@ -54,14 +54,14 @@ static void noinline errorfn(char *error)
>>  extern unsigned char sha_sum[];
>>  extern unsigned char sha_sum_end[];
>>  
>> -static int pbl_barebox_verify(void *compressed_start, unsigned int len, void *hash,
>> -			      unsigned int hash_len)
>> +int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>> +		       const void *hash, unsigned int hash_len)
>>  {
>>  	struct sha256_state sha_state = { 0 };
>>  	struct digest d = { .ctx = &sha_state };
>>  	char computed_hash[SHA256_DIGEST_SIZE];
>>  	int i;
>> -	char *char_hash = hash;
>> +	const char *char_hash = hash;
>>  
>>  	if (hash_len != SHA256_DIGEST_SIZE)
>>  		return -1;
>> -- 
>> 2.30.2
>>
>>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


