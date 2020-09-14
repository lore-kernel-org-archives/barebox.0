Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([185.7.73.95])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqwn-00082D-Kc
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 16:03:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id AF5AD32D2F1
 for <barebox@lists.infradead.org>; Mon, 14 Sep 2020 16:03:16 +0000 (UTC)
References: <20200914152744.9218-1-ysionneau@kalray.eu>
 <4a5bc850-9785-0db5-350a-7ae6d5b22cd6@pengutronix.de>
From: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <2b8c02e5-6366-f9fa-780e-c726a041d95d@kalray.eu>
Date: Mon, 14 Sep 2020 18:03:15 +0200
MIME-Version: 1.0
In-Reply-To: <4a5bc850-9785-0db5-350a-7ae6d5b22cd6@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mci: fix wrong sd/mmc/emmc card size computation for arch
 where char is signed
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

Woops, forgot about the Signed-off-by. Sorry!

On 9/14/20 5:51 PM, Ahmad Fatoum wrote:
> Hello Yann,
>
> On 9/14/20 5:27 PM, Yann Sionneau wrote:
>> char type can be either signed or unsigned according to C standard.
>> If your arch has signed char, this kind of computation will end up wrong
>> because of sign extension:
>>
>> https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/mci-core.c#n869
>>
>> mci->capacity = mci->ext_csd[EXT_CSD_SEC_COUNT] << 0 |
>> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 1] << 8 |
>> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 2] << 16 |
>> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 3] << 24;
> Good catch! I wondered why this wasn't noticed before,
> so I looked at the OSELAS.Toolchain`s we have on our build
> server. Only x86 and MIPS have signed chars by default.
>
> On x86, we usually do EFI, so barebox mci-core is not involved
> and MIPS apparently doesn't have any MCI drivers yet.
>
> (Of course, you can compile do -fsigned-char or compile
>   your own toolchain with a different default, but I guess
>   not many do that)
>
> Thanks for fixing it.
>
>> Turning the ext_csd field into u8 * fixes the issue.
> Your Signed-off-by is required.
> Please check https://developercertificate.org/
>
>> ---
>>   include/mci.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/include/mci.h b/include/mci.h
>> index 96547fb39..f6d845440 100644
>> --- a/include/mci.h
>> +++ b/include/mci.h
>> @@ -456,7 +456,7 @@ struct mci {
>>   	uint64_t capacity;	/**< Card's data capacity in bytes */
>>   	int ready_for_use;	/** true if already probed */
>>   	int dsr_imp;		/**< DSR implementation state from CSD */
>> -	char *ext_csd;
>> +	u8 *ext_csd;
>>   	int probe;
>>   	struct param_d *param_boot;
>>   	int bootpart;
>>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
