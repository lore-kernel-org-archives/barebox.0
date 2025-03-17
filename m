Delivery-date: Mon, 17 Mar 2025 12:33:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8ip-000b1D-2x
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 12:33:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8io-0003tu-P1
	for lore@pengutronix.de; Mon, 17 Mar 2025 12:33:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rzE/VPvySYpiZEoQy1BYaB/rC4CESPkRF+QPGQ6f3x0=; b=3YzCK2Zui/ncR4YEwIyRg/dotF
	dKo4ghbcNbjH12Chiy/5oTaoejjocOxjdW/R0l4BrBu+Ji2eThqWTTUDX/EfCwxXyxu5/fPRq/wq/
	LXoqyLNtoedThktStMUbVScbfRBUjH5PJVuBfJMbcoP1GHbKMEqpXS4XPCT5i7y23JdtWwbaeE6nK
	GwPPrJuGpojAfNEGh/FflInNsBuCxyiIyQRPKrI93PqAtmIbrbtufaUHjn0CvGW1dk2a4VwjxTPKS
	wPHQUiqF7L5zFE7jL3ofjmyOOm6bv1Yy3FlmA5lEszP/T6DEAwB8RpED5Ybcd6oRY1Zo7Y2Yxt7Hm
	XOm0OGwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8iK-00000002PUy-2S3z;
	Mon, 17 Mar 2025 11:33:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8i2-00000002PRr-1GJs
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 11:32:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8i1-0003YA-3V; Mon, 17 Mar 2025 12:32:41 +0100
Message-ID: <bd45abc4-afef-4f80-ab3b-edd501eb7180@pengutronix.de>
Date: Mon, 17 Mar 2025 12:32:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250313113604.915474-1-a.fatoum@pengutronix.de>
 <Z9fpmOzuQh7G4WW_@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z9fpmOzuQh7G4WW_@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_043242_342152_2A46618F 
X-CRM114-Status: GOOD (  12.95  )
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
Subject: Re: [PATCH 1/2] MAKEALL: support direct options for KCONFIG_ADD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/17/25 10:21, Sascha Hauer wrote:
> On Thu, Mar 13, 2025 at 12:36:03PM +0100, Ahmad Fatoum wrote:
>> KCONFIG_ADD currently expects a list of files to be merged.
>> As MAKEALL is a bash script, let's make use of process substitution
>> to create temporary files out of -k CONFIG_foo=bar options.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  MAKEALL | 14 +++++++++++---
>>  1 file changed, 11 insertions(+), 3 deletions(-)
>>
>> diff --git a/MAKEALL b/MAKEALL
>> index 1966eedb4673..b0967b8ae340 100755
>> --- a/MAKEALL
>> +++ b/MAKEALL
>> @@ -56,7 +56,7 @@ usage() {
>>  	echo "BUILDDIR    -O      build dir"
>>  	echo "LOGDIR      -l      log dir"
>>  	echo "REGEX       -e      regex"
>> -	echo "KCONFIG_ADD -k      kconfig fragment"
>> +	echo "KCONFIG_ADD -k      kconfig fragment or option"
>>  	echo "TARGET      -t      Makefile target"
>>  	echo "V           -v      verbosity"
>>  	echo "INCREMENTAL -i"
>> @@ -116,6 +116,11 @@ report() {
>>  	fi
>>  }
>>  
>> +merge_config() {
>> +	with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
>> +		${BUILDDIR} "$@"
>> +}
>> +
>>  do_build_defconfig() {
>>  	local arch=$1
>>  	local defconfig=$2
>> @@ -156,8 +161,11 @@ do_build_defconfig() {
>>  	MAKE="${MAKE} $silent_flag CROSS_COMPILE=${cross_compile}"
>>  	with_logs_collected ${MAKE} ${defconfig}
>>  	for i in ${KCONFIG_ADD}; do
>> -		with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
>> -			${BUILDDIR} ${BUILDDIR}/.config $i
>> +		if [[ $i =~ ^CONFIG_* ]]; then
> 
> '_*' matches zero or more underscores which is likely not what you mean
> here.
> 
> How about ^CONFIG_.*=.* which also tests for the equal sign.

Sounds good. Please see v2 that I just sent out.

> 
> Sascha
> 



